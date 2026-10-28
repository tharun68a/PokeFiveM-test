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

    DB.fetchAll('SELECT * FROM `pokefivem_users` WHERE `license` = ?', { license }, function(users)
        if not users or #users == 0 then
            DB.execute('INSERT INTO `pokefivem_users` (`identifier`, `license`, `name`) VALUES (?, ?, ?)', {
                license, license, name
            }, function()
                deferrals.done()
            end)
        else
            deferrals.done()
        end
    end)
end)

-- Handle Player Loaded (Client ready)
RegisterNetEvent('pokefivem:server:playerLoaded', function()
    local src = source
    local license = PokeCore.Functions.GetLicense(src)
    local playerName = GetPlayerName(src) or "Trainer"

    -- Find or create character
    DB.fetchAll('SELECT * FROM `pokefivem_characters` WHERE `identifier` = ? LIMIT 1', { license }, function(chars)
        local citizenid = nil
        local charData = nil

        if chars and #chars > 0 then
            charData = chars[1]
            citizenid = charData.citizenid

            -- Fetch character inventory
            DB.fetchAll('SELECT * FROM `pokefivem_inventory` WHERE `citizenid` = ?', { citizenid }, function(items)
                local inventory = {}
                for _, it in ipairs(items or {}) do
                    local def = PokeCore.Shared.Items[it.item]
                    if def then
                        table.insert(inventory, {
                            name = it.item,
                            label = def.label,
                            count = it.count,
                            slot = it.slot,
                            weight = def.weight or 100,
                            type = def.type,
                            useable = def.useable,
                            image = def.image,
                            description = def.description,
                            metadata = json.decode(it.metadata or '{}')
                        })
                    end
                end

                local playerData = {
                    citizenid = citizenid,
                    identifier = license,
                    license = license,
                    name = playerName,
                    charinfo = json.decode(charData.charinfo or '{}'),
                    job = json.decode(charData.job or '{}'),
                    accounts = json.decode(charData.accounts or '{}'),
                    metadata = json.decode(charData.metadata or '{}'),
                    items = inventory
                }

                local player = PokeCore.Player.CreatePlayer(src, playerData)
                PokeCore.Players[src] = player

                -- Sync to client
                TriggerClientEvent('pokefivem:client:onPlayerLoaded', src, player.PlayerData)
                TriggerEvent('pokefivem:server:refreshParty', src)

                -- Check starter claim
                if not player.PlayerData.metadata.starter_claimed then
                    TriggerClientEvent('pokefivem:client:promptStarter', src)
                end
            end)
        else
            -- Create fresh character
            citizenid = "PKM" .. PokeCore.Shared.RandomInt(5)
            local defaultAccounts = PokeCore.Shared.CopyTable(Config.Money.MoneyTypes)
            local defaultJob = {
                name = 'trainer',
                label = 'Pokémon Trainer',
                grade = 0,
                grade_name = 'Rookie Trainer',
                payment = 75,
                onduty = true
            }
            local defaultMeta = {
                hunger = 100,
                thirst = 100,
                isdead = false,
                starter_claimed = false,
                badges = {},
                battles_won = 0,
                battles_lost = 0,
                pokemon_caught = 0
            }
            local defaultCharInfo = {
                firstname = playerName,
                lastname = "Trainer",
                birthdate = "2000-01-01",
                gender = 0
            }

            local query = [[
                INSERT INTO `pokefivem_characters`
                (`citizenid`, `identifier`, `charinfo`, `job`, `accounts`, `metadata`)
                VALUES (?, ?, ?, ?, ?, ?)
            ]]

            DB.execute(query, {
                citizenid,
                license,
                json.encode(defaultCharInfo),
                json.encode(defaultJob),
                json.encode(defaultAccounts),
                json.encode(defaultMeta)
            }, function()
                local playerData = {
                    citizenid = citizenid,
                    identifier = license,
                    license = license,
                    name = playerName,
                    charinfo = defaultCharInfo,
                    job = defaultJob,
                    accounts = defaultAccounts,
                    metadata = defaultMeta,
                    items = {}
                }

                local player = PokeCore.Player.CreatePlayer(src, playerData)
                PokeCore.Players[src] = player

                -- Add starter pack
                player.Functions.AddItem('pokeball', 15)
                player.Functions.AddItem('potion', 5)
                player.Functions.AddItem('pokedex', 1)
                player.Functions.AddItem('water', 3)
                player.Functions.AddItem('sandwich', 3)

                TriggerClientEvent('pokefivem:client:onPlayerLoaded', src, player.PlayerData)
                TriggerClientEvent('pokefivem:client:promptStarter', src)
            end)
        end
    end)
end)

-- Handle Player Disconnect
AddEventHandler('playerDropped', function()
    local src = source
    if PokeCore.Players[src] then
        PokeCore.Player.Save(src)
        PokeCore.Players[src] = nil
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
        end
    end)
end)
