-- ====================================================================
-- PokeFiveM Framework - Administrative & Trainer Commands
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

-- Open Starter UI
RegisterCommand('starter', function(source)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    if player.PlayerData.metadata.starter_claimed then
        PokeCore.Functions.Notify(src, _L('starter_already'), 'error')
    else
        TriggerClientEvent('pokefivem:client:promptStarter', src)
    end
end, false)

-- Open Party Menu
RegisterCommand('party', function(source)
    TriggerClientEvent('pokefivem:client:togglePartyUI', source)
end, false)

-- Open Pokédex
RegisterCommand('pokedex', function(source)
    TriggerClientEvent('pokefivem:client:togglePokedexUI', source)
end, false)

-- Open PC Box
RegisterCommand('pc', function(source)
    TriggerEvent('pokefivem:server:openPC', source, 1)
end, false)

-- Heal Entire Party
RegisterCommand('healteam', function(source)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    GetPlayerParty(player.PlayerData.citizenid, function(party)
        for _, poke in ipairs(party) do
            HealPokemonById(poke.id)
        end
        PokeCore.Functions.Notify(src, _L('party_healed'), 'success')
        TriggerEvent('pokefivem:server:refreshParty', src)
    end)
end, false)

-- Admin: Give Money
RegisterCommand('givemoney', function(source, args)
    local src = source
    if src > 0 and not PokeCore.Functions.HasPermission(src, 'admin') then
        PokeCore.Functions.Notify(src, "No permission to execute this command.", 'error')
        return
    end

    local targetId = tonumber(args[1]) or src
    local account = args[2] or 'cash'
    local amount = tonumber(args[3]) or 1000

    local targetPlayer = PokeCore.Functions.GetPlayer(targetId)
    if targetPlayer then
        targetPlayer.Functions.AddMoney(account, amount, 'Admin Grant')
        PokeCore.Functions.Log('Admin', string.format('%s executed /givemoney: gave %d %s to %s (ID: %s).', (src > 0 and GetPlayerName(src)) or 'Console', amount, account, targetPlayer.PlayerData.name, targetId), 'warn')
        PokeCore.Functions.Notify(src, string.format("Gave $%d (%s) to %s.", amount, account, targetPlayer.PlayerData.name), 'success')
    else
        PokeCore.Functions.Notify(src, "Target player not found online.", 'error')
    end
end, false)

-- Admin: Set Job
RegisterCommand('setjob', function(source, args)
    local src = source
    if src > 0 and not PokeCore.Functions.HasPermission(src, 'admin') then
        PokeCore.Functions.Notify(src, "No permission to execute this command.", 'error')
        return
    end

    local targetId = tonumber(args[1]) or src
    local jobName = args[2] or 'trainer'
    local grade = tonumber(args[3]) or 0

    local targetPlayer = PokeCore.Functions.GetPlayer(targetId)
    if targetPlayer then
        if targetPlayer.Functions.SetJob(jobName, grade) then
            PokeCore.Functions.Log('Admin', string.format('%s executed /setjob: set %s (ID: %s) job to %s (Grade %d).', (src > 0 and GetPlayerName(src)) or 'Console', targetPlayer.PlayerData.name, targetId, jobName, grade), 'warn')
            PokeCore.Functions.Notify(src, string.format("Set %s's job to %s (Grade %d).", targetPlayer.PlayerData.name, jobName, grade), 'success')
        else
            PokeCore.Functions.Notify(src, "Invalid job name or grade.", 'error')
        end
    else
        PokeCore.Functions.Notify(src, "Target player not found online.", 'error')
    end
end, false)

-- Admin: Spawn Wild Pokémon at Player Location
RegisterCommand('spawnwild', function(source, args)
    local src = source
    if src > 0 and not PokeCore.Functions.HasPermission(src, 'admin') then
        PokeCore.Functions.Notify(src, "No permission to execute this command.", 'error')
        return
    end

    local pokedexId = tonumber(args[1]) or 25
    local level = tonumber(args[2]) or 10

    local pData = GetPokedexEntry(pokedexId)
    if not pData then
        PokeCore.Functions.Notify(src, "Invalid Pokémon Pokedex ID or Name!", 'error')
        return
    end

    local ped = GetPlayerPed(src)
    local coords = GetEntityCoords(ped)
    local forward = GetEntityForwardVector(ped)
    local spawnCoords = coords + (forward * 3.5)

    local wildId = "wild_admin_" .. tostring(math.random(1000, 9999))
    local ivs = PokeUtils.GenerateRandomIVs()
    local maxHp = PokeUtils.CalculateMaxHP(pData.baseStats.hp, ivs.hp, 0, level)

    local moves = {}
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
    while #moves > 4 do table.remove(moves, 1) end

    ActiveWildPokemon[wildId] = {
        wildId = wildId,
        pokedex_id = pData.id,
        name = pData.name,
        level = level,
        nature = GetRandomNature(),
        is_shiny = (args[3] == "1" or args[3] == "shiny"),
        ivs = ivs,
        evs = PokeUtils.GenerateZeroEVs(),
        moves = moves,
        max_hp = maxHp,
        current_hp = maxHp,
        status = 'none',
        coords = spawnCoords,
        model = pData.model,
        spawnTime = os.time(),
        inBattle = false
    }

    TriggerClientEvent('pokefivem:client:spawnWildPokemon', -1, ActiveWildPokemon[wildId])
    PokeCore.Functions.Log('Admin', string.format('%s spawned wild %s (Lv. %d%s) [ID: %s].', (src > 0 and GetPlayerName(src)) or 'Console', pData.name, level, ActiveWildPokemon[wildId].is_shiny and ' ★SHINY★' or '', wildId), 'info')
    PokeCore.Functions.Notify(src, string.format('Spawned wild %s (Lv. %d)!', pData.name, level), 'success')
end, false)

-- Admin: Give Pokémon Directly to Player
RegisterCommand('givepokemon', function(source, args)
    local src = source
    if src > 0 and not PokeCore.Functions.HasPermission(src, 'admin') then
        PokeCore.Functions.Notify(src, "No permission to execute this command.", 'error')
        return
    end

    local targetId = tonumber(args[1]) or src
    local pokedexId = tonumber(args[2]) or 1
    local level = tonumber(args[3]) or 5
    local isShiny = (args[4] == "1" or args[4] == "shiny")

    local player = PokeCore.Functions.GetPlayer(targetId)
    if not player then
        PokeCore.Functions.Notify(src, "Target player not found online.", 'error')
        return
    end

    local pData = GetPokedexEntry(pokedexId)
    if not pData then
        PokeCore.Functions.Notify(src, "Invalid Pokémon ID!", 'error')
        return
    end

    GetPlayerParty(player.PlayerData.citizenid, function(party)
        local isPartyFull = (#party >= (Config.MaxPartySize or 6))
        local storageType = isPartyFull and 'box' or 'party'
        local storageIndex = isPartyFull and 0 or (#party + 1)

        CreatePokemon(player.PlayerData.citizenid, pokedexId, level, {
            isShiny = isShiny,
            storageType = storageType,
            storageIndex = storageIndex,
            boxNumber = isPartyFull and 1 or nil
        }, function(poke)
            RegisterPokedexEntry(targetId, pokedexId, true)
            PokeCore.Functions.Log('Admin', string.format('%s gave %s (Lv. %d%s) to %s (ID: %s).', (src > 0 and GetPlayerName(src)) or 'Console', pData.name, level, isShiny and ' ★SHINY★' or '', player.PlayerData.name, targetId), 'warn')
            PokeCore.Functions.Notify(targetId, string.format('Received %s (Lv. %d)!', pData.name, level), 'success')
            TriggerEvent('pokefivem:server:refreshParty', targetId)
        end)
    end)
end, false)

-- Admin: Give Item
RegisterCommand('giveitem', function(source, args)
    local src = source
    if src > 0 and not PokeCore.Functions.HasPermission(src, 'admin') then
        PokeCore.Functions.Notify(src, "No permission to execute this command.", 'error')
        return
    end

    local targetId = tonumber(args[1]) or src
    local itemKey = args[2] or 'pokeball'
    local count = tonumber(args[3]) or 10

    local targetPlayer = PokeCore.Functions.GetPlayer(targetId)
    if targetPlayer then
        targetPlayer.Functions.AddItem(itemKey, count)
        PokeCore.Functions.Log('Admin', string.format('%s gave %dx %s to %s (ID: %s).', (src > 0 and GetPlayerName(src)) or 'Console', count, itemKey, targetPlayer.PlayerData.name, targetId), 'warn')
        PokeCore.Functions.Notify(src, string.format("Gave %dx %s to %s.", count, itemKey, targetPlayer.PlayerData.name), 'success')
    else
        PokeCore.Functions.Notify(src, "Target player not found online.", 'error')
    end
end, false)
