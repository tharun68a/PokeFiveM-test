-- ====================================================================
-- PokeFiveM Storage Engine (Party & PC Boxes)
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

-- Fetch player's 6 party members
function GetPlayerParty(owner, callback)
    local query = [[
        SELECT * FROM `pokefivem_pokemon`
        WHERE `owner` = ? AND `storage_type` = 'party'
        ORDER BY `storage_index` ASC
        LIMIT 6
    ]]
    DB.fetchAll(query, { owner }, function(rows)
        local party = {}
        for _, row in ipairs(rows or {}) do
            local pData = GetPokedexEntry(row.pokedex_id)
            local ivs = json.decode(row.ivs)
            local evs = json.decode(row.evs)
            local moves = json.decode(row.moves)

            table.insert(party, {
                id = row.id,
                pokedex_id = row.pokedex_id,
                name = (pData and pData.name) or "Unknown",
                nickname = row.nickname or (pData and pData.name),
                type1 = pData and pData.type1,
                type2 = pData and pData.type2,
                level = row.level,
                exp = row.exp,
                nature = row.nature,
                ability = row.ability,
                is_shiny = (row.is_shiny == 1),
                gender = row.gender,
                ivs = ivs,
                evs = evs,
                moves = moves,
                current_hp = row.current_hp,
                max_hp = row.max_hp,
                status = row.status,
                storage_index = row.storage_index,
                caught_ball = row.caught_ball,
                stats = PokeUtils.CalculateAllStats({
                    pokedex_id = row.pokedex_id,
                    level = row.level,
                    nature = row.nature,
                    ivs = ivs,
                    evs = evs
                })
            })
        end
        if callback then callback(party) end
    end)
end

-- Refresh party and sync to client
RegisterNetEvent('pokefivem:server:refreshParty', function(targetSrc)
    local src = targetSrc or source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    GetPlayerParty(player.PlayerData.citizenid, function(party)
        TriggerClientEvent('pokefivem:client:syncParty', src, party)
    end)
end)

-- Fetch PC Box contents
RegisterNetEvent('pokefivem:server:openPC', function(boxNumber)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    boxNumber = math.max(1, math.min(Config.MaxPcBoxes or 30, boxNumber or 1))

    local query = [[
        SELECT * FROM `pokefivem_pokemon`
        WHERE `owner` = ? AND `storage_type` = 'box' AND `box_number` = ?
        ORDER BY `storage_index` ASC
    ]]

    DB.fetchAll(query, { player.PlayerData.citizenid, boxNumber }, function(rows)
        local boxPokemon = {}
        for _, row in ipairs(rows or {}) do
            local pData = GetPokedexEntry(row.pokedex_id)
            table.insert(boxPokemon, {
                id = row.id,
                pokedex_id = row.pokedex_id,
                name = (pData and pData.name) or "Unknown",
                nickname = row.nickname or (pData and pData.name),
                type1 = pData and pData.type1,
                type2 = pData and pData.type2,
                level = row.level,
                is_shiny = (row.is_shiny == 1),
                current_hp = row.current_hp,
                max_hp = row.max_hp,
                storage_index = row.storage_index,
                box_number = row.box_number,
                nature = row.nature,
                ivs = json.decode(row.ivs)
            })
        end

        GetPlayerParty(player.PlayerData.citizenid, function(party)
            TriggerClientEvent('pokefivem:client:receivePCData', src, {
                currentBox = boxNumber,
                maxBoxes = Config.MaxPcBoxes or 30,
                boxPokemon = boxPokemon,
                partyPokemon = party
            })
        end)
    end)
end)

-- Swap Party order
RegisterNetEvent('pokefivem:server:swapPartyOrder', function(slot1, slot2)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player or slot1 == slot2 then return end

    GetPlayerParty(player.PlayerData.citizenid, function(party)
        local poke1, poke2 = nil, nil
        for _, p in ipairs(party) do
            if p.storage_index == slot1 then poke1 = p end
            if p.storage_index == slot2 then poke2 = p end
        end

        if poke1 and poke2 then
            DB.execute('UPDATE `pokefivem_pokemon` SET `storage_index` = ? WHERE `id` = ?', { slot2, poke1.id })
            DB.execute('UPDATE `pokefivem_pokemon` SET `storage_index` = ? WHERE `id` = ?', { slot1, poke2.id }, function()
                TriggerEvent('pokefivem:server:refreshParty', src)
            end)
        end
    end)
end)

-- Deposit Pokémon to PC Box
RegisterNetEvent('pokefivem:server:depositToPC', function(partySlot, targetBox, targetSlot)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    GetPlayerParty(player.PlayerData.citizenid, function(party)
        if #party <= 1 then
            PokeCore.Functions.Notify(src, "You cannot deposit your last conscious Pokémon!", 'error')
            return
        end

        local poke = nil
        for _, p in ipairs(party) do
            if p.storage_index == partySlot then poke = p break end
        end

        if not poke then return end

        DB.execute([[
            UPDATE `pokefivem_pokemon`
            SET `storage_type` = 'box', `box_number` = ?, `storage_index` = ?
            WHERE `id` = ?
        ]], { targetBox or 1, targetSlot or 0, poke.id }, function()
            -- Re-index remaining party members so there are no empty gaps
            local newIndex = 1
            for _, p in ipairs(party) do
                if p.id ~= poke.id then
                    DB.execute('UPDATE `pokefivem_pokemon` SET `storage_index` = ? WHERE `id` = ?', { newIndex, p.id })
                    newIndex = newIndex + 1
                end
            end

            TriggerEvent('pokefivem:server:refreshParty', src)
            TriggerEvent('pokefivem:server:openPC', src, targetBox or 1)
        end)
    end)
end)

-- Withdraw Pokémon from PC Box to Party
RegisterNetEvent('pokefivem:server:withdrawFromPC', function(pokemonId)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    GetPlayerParty(player.PlayerData.citizenid, function(party)
        if #party >= (Config.MaxPartySize or 6) then
            PokeCore.Functions.Notify(src, "Your party is already full (6/6)!", 'error')
            return
        end

        local nextSlot = #party + 1
        DB.execute([[
            UPDATE `pokefivem_pokemon`
            SET `storage_type` = 'party', `storage_index` = ?, `box_number` = NULL
            WHERE `id` = ? AND `owner` = ?
        ]], { nextSlot, pokemonId, player.PlayerData.citizenid }, function(affected)
            if affected and affected > 0 then
                TriggerEvent('pokefivem:server:refreshParty', src)
                TriggerEvent('pokefivem:server:openPC', src, 1)
            end
        end)
    end)
end)

-- Release Pokémon
RegisterNetEvent('pokefivem:server:releasePokemon', function(pokemonId)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    DB.fetchAll('SELECT * FROM `pokefivem_pokemon` WHERE `id` = ? AND `owner` = ?', { pokemonId, player.PlayerData.citizenid }, function(rows)
        if not rows or #rows == 0 then return end
        local poke = rows[1]

        if poke.storage_type == 'party' then
            GetPlayerParty(player.PlayerData.citizenid, function(party)
                if #party <= 1 then
                    PokeCore.Functions.Notify(src, "You cannot release your only Pokémon!", 'error')
                    return
                end
                DB.execute('DELETE FROM `pokefivem_pokemon` WHERE `id` = ?', { pokemonId }, function()
                    PokeCore.Functions.Notify(src, string.format('Bye-bye, %s!', poke.nickname or 'Pokémon'), 'info')
                    TriggerEvent('pokefivem:server:refreshParty', src)
                end)
            end)
        else
            DB.execute('DELETE FROM `pokefivem_pokemon` WHERE `id` = ?', { pokemonId }, function()
                PokeCore.Functions.Notify(src, string.format('Bye-bye, %s!', poke.nickname or 'Pokémon'), 'info')
                TriggerEvent('pokefivem:server:openPC', src, poke.box_number or 1)
            end)
        end
    end)
end)

-- Nickname Pokémon
RegisterNetEvent('pokefivem:server:setNickname', function(pokemonId, newNickname)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    newNickname = string.sub(newNickname or "", 1, 16)
    if string.len(newNickname) == 0 then return end

    DB.execute('UPDATE `pokefivem_pokemon` SET `nickname` = ? WHERE `id` = ? AND `owner` = ?', {
        newNickname, pokemonId, player.PlayerData.citizenid
    }, function()
        TriggerEvent('pokefivem:server:refreshParty', src)
        PokeCore.Functions.Notify(src, string.format('Nickname changed to %s!', newNickname), 'success')
    end)
end)
