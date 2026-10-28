-- ====================================================================
-- PokeFiveM Pokemon Lifecycle & Entity Engine
-- Author: Pika Studio
-- ====================================================================

-- Create a brand new Pokemon instance in database
function CreatePokemon(owner, pokedexId, level, options, callback)
    local pData = GetPokedexEntry(pokedexId)
    if not pData then
        if callback then callback(nil) end
        return
    end

    options = options or {}
    level = math.max(1, math.min(100, level or 5))

    local ivs = options.ivs or PokeUtils.GenerateRandomIVs()
    local evs = options.evs or PokeUtils.GenerateZeroEVs()
    local nature = options.nature or GetRandomNature()
    local ability = options.ability or (pData.abilities and pData.abilities[math.random(1, #pData.abilities)]) or "Standard"
    local isShiny = options.isShiny or PokeUtils.RollShiny(options.hasShinyCharm)
    local gender = options.gender or (math.random(0, 1)) -- 0=M, 1=F

    -- Calculate initial moves according to level
    local moves = {}
    if options.moves and #options.moves > 0 then
        moves = options.moves
    else
        for _, m in ipairs(pData.moves or {}) do
            if m.level <= level then
                local moveData = GetMove(m.move)
                if moveData then
                    table.insert(moves, {
                        key = m.move,
                        name = moveData.name,
                        type = moveData.type,
                        power = moveData.power,
                        accuracy = moveData.accuracy,
                        pp = moveData.pp,
                        max_pp = moveData.pp
                    })
                end
            end
        end
        -- Keep up to 4 most recent moves
        while #moves > 4 do
            table.remove(moves, 1)
        end
        if #moves == 0 then
            local fallback = GetMove("Tackle")
            table.insert(moves, { key = "Tackle", name = fallback.name, type = fallback.type, power = fallback.power, accuracy = fallback.accuracy, pp = fallback.pp, max_pp = fallback.pp })
        end
    end

    -- Calculate HP
    local maxHp = PokeUtils.CalculateMaxHP(pData.baseStats.hp, ivs.hp, evs.hp, level)
    local curHp = options.currentHp or maxHp
    local exp = PokeUtils.GetExpForLevel(level, pData.growthRate)

    local storageType = options.storageType or 'party'
    local storageIndex = options.storageIndex or 1
    local boxNumber = options.boxNumber or 1
    local caughtBall = options.caughtBall or 'pokeball'
    local location = options.location or 'Route 1'

    local query = [[
        INSERT INTO `pokefivem_pokemon`
        (`owner`, `pokedex_id`, `nickname`, `level`, `exp`, `nature`, `ability`, `is_shiny`, `gender`, `ivs`, `evs`, `moves`, `current_hp`, `max_hp`, `status`, `storage_type`, `storage_index`, `box_number`, `caught_ball`, `original_trainer`, `caught_location`)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    ]]

    local params = {
        owner,
        pokedexId,
        options.nickname or pData.name,
        level,
        exp,
        nature,
        ability,
        isShiny and 1 or 0,
        gender,
        json.encode(ivs),
        json.encode(evs),
        json.encode(moves),
        curHp,
        maxHp,
        'none',
        storageType,
        storageIndex,
        boxNumber,
        caughtBall,
        owner,
        location
    }

    DB.insert(query, params, function(insertId)
        if not insertId or insertId == 0 then
            if callback then callback(nil) end
            return
        end

        local pokemonObj = {
            id = insertId,
            owner = owner,
            pokedex_id = pokedexId,
            name = pData.name,
            nickname = options.nickname or pData.name,
            level = level,
            exp = exp,
            nature = nature,
            ability = ability,
            is_shiny = isShiny,
            gender = gender,
            ivs = ivs,
            evs = evs,
            moves = moves,
            current_hp = curHp,
            max_hp = maxHp,
            status = 'none',
            storage_type = storageType,
            storage_index = storageIndex,
            box_number = boxNumber,
            caught_ball = caughtBall,
            stats = PokeUtils.CalculateAllStats({
                pokedex_id = pokedexId,
                level = level,
                nature = nature,
                ivs = ivs,
                evs = evs
            })
        }

        PokeCore.Functions.Log('Pokemon', string.format('Created %s (Lv. %d%s) for owner %s [DB ID: %s, Storage: %s].', pData.name, level, isShiny and ' ★SHINY★' or '', owner, tostring(insertId), storageType), 'info')
        if callback then callback(pokemonObj) end
    end)
end

-- Add EXP to a specific Pokemon
function AddPokemonExperience(src, pokemonId, expAmount, callback)
    DB.fetchAll('SELECT * FROM `pokefivem_pokemon` WHERE `id` = ?', { pokemonId }, function(rows)
        if not rows or #rows == 0 then return end
        local poke = rows[1]
        local pData = GetPokedexEntry(poke.pokedex_id)
        if not pData then return end

        local newExp = poke.exp + expAmount
        local oldLevel = poke.level
        local newLevel = PokeUtils.GetLevelFromExp(newExp, pData.growthRate)
        newLevel = math.min(100, newLevel)

        local ivs = json.decode(poke.ivs)
        local evs = json.decode(poke.evs)
        local moves = json.decode(poke.moves)
        local newMaxHp = PokeUtils.CalculateMaxHP(pData.baseStats.hp, ivs.hp, evs.hp, newLevel)
        local hpDiff = newMaxHp - poke.max_hp
        local newCurHp = math.min(newMaxHp, poke.current_hp + math.max(0, hpDiff))

        DB.execute('UPDATE `pokefivem_pokemon` SET `exp` = ?, `level` = ?, `max_hp` = ?, `current_hp` = ? WHERE `id` = ?', {
            newExp, newLevel, newMaxHp, newCurHp, pokemonId
        }, function()
            -- Check for Level Up
            if newLevel > oldLevel then
                PokeCore.Functions.Log('Pokemon', string.format('%s grew from Lv. %d to Lv. %d! (Owner: %s)', poke.nickname or pData.name, oldLevel, newLevel, poke.owner), 'info')
                TriggerClientEvent('pokefivem:client:notify', src, string.format('%s grew to Level %d!', poke.nickname or pData.name, newLevel), 'success')
                
                -- Check for new learnable moves
                for _, m in ipairs(pData.moves or {}) do
                    if m.level > oldLevel and m.level <= newLevel then
                        TeachMoveToPokemon(src, pokemonId, m.move)
                    end
                end

                -- Check for Level-Up Evolution
                if pData.evolution and pData.evolution.level and newLevel >= pData.evolution.level then
                    EvolvePokemon(src, pokemonId, pData.evolution.to)
                end
            end

            if callback then callback(newLevel, newExp) end
        end)
    end)
end

-- Teach Move (auto-adds if < 4, otherwise sends replace event)
function TeachMoveToPokemon(src, pokemonId, moveKey)
    local moveData = GetMove(moveKey)
    if not moveData then return end

    DB.fetchAll('SELECT `moves`, `nickname`, `pokedex_id` FROM `pokefivem_pokemon` WHERE `id` = ?', { pokemonId }, function(rows)
        if not rows or #rows == 0 then return end
        local moves = json.decode(rows[1].moves)
        local name = rows[1].nickname or GetPokedexEntry(rows[1].pokedex_id).name

        -- Check if already knows
        for _, m in ipairs(moves) do
            if m.key == moveKey then return end
        end

        local newMove = {
            key = moveKey,
            name = moveData.name,
            type = moveData.type,
            power = moveData.power,
            accuracy = moveData.accuracy,
            pp = moveData.pp,
            max_pp = moveData.pp
        }

        if #moves < 4 then
            table.insert(moves, newMove)
            DB.execute('UPDATE `pokefivem_pokemon` SET `moves` = ? WHERE `id` = ?', { json.encode(moves), pokemonId })
            PokeCore.Functions.Log('Pokemon', string.format('%s learned %s! (Pokemon ID: %s)', name, moveData.name, pokemonId), 'info')
            TriggerClientEvent('pokefivem:client:notify', src, string.format('%s learned %s!', name, moveData.name), 'success')
            TriggerEvent('pokefivem:server:refreshParty', src)
        else
            -- Prompt player to replace move or forget
            TriggerClientEvent('pokefivem:client:promptMoveLearn', src, pokemonId, name, newMove, moves)
        end
    end)
end

-- Evolution Handler
function EvolvePokemon(src, pokemonId, targetPokedexId)
    local targetData = GetPokedexEntry(targetPokedexId)
    if not targetData then return end

    DB.fetchAll('SELECT * FROM `pokefivem_pokemon` WHERE `id` = ?', { pokemonId }, function(rows)
        if not rows or #rows == 0 then return end
        local poke = rows[1]
        local prevData = GetPokedexEntry(poke.pokedex_id)
        local oldName = poke.nickname or (prevData and prevData.name) or "Pokémon"
        local newNickname = (poke.nickname == prevData.name) and targetData.name or poke.nickname

        local ivs = json.decode(poke.ivs)
        local evs = json.decode(poke.evs)
        local newMaxHp = PokeUtils.CalculateMaxHP(targetData.baseStats.hp, ivs.hp, evs.hp, poke.level)
        local newCurHp = math.min(newMaxHp, poke.current_hp + (newMaxHp - poke.max_hp))

        DB.execute('UPDATE `pokefivem_pokemon` SET `pokedex_id` = ?, `nickname` = ?, `max_hp` = ?, `current_hp` = ? WHERE `id` = ?', {
            targetPokedexId, newNickname, newMaxHp, newCurHp, pokemonId
        }, function()
            PokeCore.Functions.Log('Pokemon', string.format('%s evolved into %s! (Pokemon ID: %s, Owner: %s)', oldName, targetData.name, pokemonId, poke.owner), 'info')
            RegisterPokedexEntry(src, targetPokedexId, true)
            TriggerClientEvent('pokefivem:client:notify', src, _L('pokemon_evolved', oldName, targetData.name), 'success')
            TriggerClientEvent('pokefivem:client:playEvolutionAnimation', src, targetData.name)
            TriggerEvent('pokefivem:server:refreshParty', src)
        end)
    end)
end

-- Full Restore / Heal Pokemon
function HealPokemonById(pokemonId, callback)
    DB.fetchAll('SELECT * FROM `pokefivem_pokemon` WHERE `id` = ?', { pokemonId }, function(rows)
        if not rows or #rows == 0 then return end
        local poke = rows[1]
        local moves = json.decode(poke.moves)
        for _, m in ipairs(moves) do
            local ref = GetMove(m.key)
            m.pp = (ref and ref.pp) or m.max_pp or 20
            m.max_pp = m.pp
        end

        DB.execute('UPDATE `pokefivem_pokemon` SET `current_hp` = `max_hp`, `status` = "none", `moves` = ? WHERE `id` = ?', {
            json.encode(moves), pokemonId
        }, function()
            if callback then callback(true) end
        end)
    end)
end



-- Register Pokédex Seen & Caught for Player
function RegisterPokedexEntry(src, pokedexId, caught)
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    local meta = player.PlayerData.metadata
    if not meta.pokedex_seen then meta.pokedex_seen = {} end
    if not meta.pokedex_caught then meta.pokedex_caught = {} end

    local seenLookup = {}
    for _, id in ipairs(meta.pokedex_seen) do seenLookup[id] = true end
    if not seenLookup[pokedexId] then
        table.insert(meta.pokedex_seen, pokedexId)
    end

    if caught then
        local caughtLookup = {}
        for _, id in ipairs(meta.pokedex_caught) do caughtLookup[id] = true end
        if not caughtLookup[pokedexId] then
            table.insert(meta.pokedex_caught, pokedexId)
            meta.pokemon_caught = (meta.pokemon_caught or 0) + 1
        end
    end

    player.Functions.SetMetaData('pokedex_seen', meta.pokedex_seen)
    player.Functions.SetMetaData('pokedex_caught', meta.pokedex_caught)
    player.Functions.SetMetaData('pokemon_caught', meta.pokemon_caught)

    -- Save to pokefivem_pokedex table
    local query = [[
        INSERT INTO `pokefivem_pokedex` (`citizenid`, `seen`, `caught`)
        VALUES (?, ?, ?)
        ON DUPLICATE KEY UPDATE `seen` = ?, `caught` = ?
    ]]
    local seenJson = json.encode(meta.pokedex_seen)
    local caughtJson = json.encode(meta.pokedex_caught)
    DB.execute(query, { player.PlayerData.citizenid, seenJson, caughtJson, seenJson, caughtJson }, function()
        PokeCore.Functions.Log('Pokedex', string.format('Trainer %s registered species #%d in Pokédex (Caught: %s).', player.PlayerData.name, pokedexId, tostring(caught)), 'debug')
    end)
end
