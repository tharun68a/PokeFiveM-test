-- ====================================================================
-- PokeFiveM Framework - Server Events & Player Lifecycle
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

-- Handle Player Connecting
AddEventHandler('playerConnecting', function(name, setKickReason, deferrals)
    local src = source
    deferrals.defer()
    Wait(50)
    deferrals.update(string.format("Checking trainer profile for %s...", name))

    local license = PokeCore.Functions.GetLicense(src)
    if not license then
        deferrals.done("Could not resolve FiveM license identifier!")
        return
    end

    PokeCore.Functions.Log('Auth', string.format('Player %s connecting (License: %s)...', name, license), 'info')

    DB.fetchAll('SELECT * FROM `pokefivem_users` WHERE `license` = ?', { license }, function(users)
        if not users or #users == 0 then
            DB.execute('INSERT INTO `pokefivem_users` (`identifier`, `license`, `name`) VALUES (?, ?, ?)', {
                license, license, name
            }, function()
                PokeCore.Functions.Log('Auth', string.format('New user registered: %s (%s)', name, license), 'info')
                deferrals.done()
            end)
        else
            PokeCore.Functions.Log('Auth', string.format('Returning user verified: %s (%s)', name, license), 'info')
            deferrals.done()
        end
    end)
end)

-- Handle Player Loaded (Client ready)
RegisterNetEvent('pokefivem:server:playerLoaded', function()
    local src = source
    local license = PokeCore.Functions.GetLicense(src)
    local pName = GetPlayerName(src) or "Trainer"

    PokeCore.Functions.Log('Auth', string.format('Trainer %s (Src: %s) requested character resolution...', pName, src), 'info')

    -- If multicharacter is enabled, open multicharacter screen
    if Config.Multicharacter and Config.Multicharacter.Enabled then
        TriggerClientEvent('pokefivem:client:openMulticharacter', src)
        return
    end

    -- Standalone Single Character Mode
    MySQL.single('SELECT citizenid FROM `pokefivem_characters` WHERE `identifier` = ? LIMIT 1', { license }, function(char)
        if char then
            PokeCore.Player.Login(src, char.citizenid)
        else
            TriggerEvent('pokefivem:server:createCharacter', {
                firstname = "Red",
                lastname = "Trainer",
                gender = 0,
                birthdate = "2000-01-01",
                starterId = 1
            })
        end
    end)
end)

-- Handle Player Disconnect
AddEventHandler('playerDropped', function(reason)
    local src = source
    local pName = GetPlayerName(src) or "Trainer"
    if PokeCore.Players[src] then
        local cid = PokeCore.Players[src].PlayerData.citizenid
        PokeCore.Functions.Log('Auth', string.format('Trainer %s (%s, Src: %s) disconnected. (Reason: %s)', pName, cid, src, reason or 'Left server'), 'warn')
        PokeCore.Player.Save(src)
        PokeCore.Players[src] = nil
    else
        PokeCore.Functions.Log('Auth', string.format('Unauthenticated player %s (Src: %s) disconnected. (Reason: %s)', pName, src, reason or 'Left server'), 'debug')
    end
end)

-- Choose Starter Event
RegisterNetEvent('pokefivem:server:chooseStarter', function(starterId)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    if player.PlayerData.metadata.starter_claimed then
        PokeCore.Functions.Notify(src, _L('starter_already'), 'error')
        return
    end

    local valid = false
    for _, s in ipairs(Config.StarterPokemon) do
        if s.id == starterId then valid = true break end
    end
    if not valid then return end

    CreatePokemon(player.PlayerData.citizenid, starterId, 5, {
        storageType = 'party',
        storageIndex = 1,
        caughtBall = 'pokeball'
    }, function(pokemon)
        if pokemon then
            player.Functions.SetMetaData('starter_claimed', true)
            RegisterPokedexEntry(src, starterId, true)
            PokeCore.Functions.Notify(src, _L('starter_chosen', pokemon.name), 'success')
            TriggerEvent('pokefivem:server:refreshParty', src)
            PokeCore.Functions.Log('Starter', string.format('Trainer %s chose starter #%d (%s)!', player.PlayerData.name, starterId, pokemon.name), 'info')
        end
    end)
end)
