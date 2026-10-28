-- ====================================================================
-- PokeFiveM Framework - Multicharacter Server Controller (ox_lib Native)
-- Developed by: Pika Studio
-- Standalone Architecture (Zero ESX Dependency)
-- ====================================================================

-- Fetch all characters for connecting player
PokeCore.Functions.CreateCallback('pokefivem:multichar:getCharacters', function(source, cb)
    local license = PokeCore.Functions.GetLicense(source)
    if not license then
        cb({})
        return
    end

    MySQL.query('SELECT * FROM pokefivem_characters WHERE identifier = ? ORDER BY created_at ASC', { license }, function(chars)
        local results = {}
        if not chars or #chars == 0 then
            cb({})
            return
        end

        local count = #chars
        local processed = 0

        for idx, c in ipairs(chars) do
            local charinfo = json.decode(c.charinfo or '{}')
            local accounts = json.decode(c.accounts or '{}')
            local metadata = json.decode(c.metadata or '{}')
            local pos = json.decode(c.position or '{}')

            -- Get Pokémon count
            MySQL.scalar('SELECT COUNT(*) FROM pokefivem_pokemon WHERE owner = ?', { c.citizenid }, function(pokemonCount)
                table.insert(results, {
                    citizenid = c.citizenid,
                    charinfo = charinfo,
                    job = json.decode(c.job or '{}'),
                    accounts = accounts,
                    metadata = metadata,
                    position = pos,
                    pokemonCount = pokemonCount or 0,
                    slot = idx
                })

                processed = processed + 1
                if processed >= count then
                    table.sort(results, function(a, b) return a.slot < b.slot end)
                    cb(results)
                end
            end)
        end
    end)
end)

-- Select & Load Character
RegisterNetEvent('pokefivem:server:selectCharacter', function(citizenid)
    local src = source
    local license = PokeCore.Functions.GetLicense(src)

    MySQL.single('SELECT * FROM pokefivem_characters WHERE citizenid = ? AND identifier = ?', { citizenid, license }, function(charData)
        if not charData then
            PokeCore.Functions.Notify(src, 'Character not found or ownership mismatch.', 'error')
            return
        end

        -- Fetch character inventory
        MySQL.query('SELECT * FROM pokefivem_inventory WHERE citizenid = ?', { citizenid }, function(items)
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
                source = src,
                identifier = license,
                license = license,
                name = GetPlayerName(src),
                charinfo = json.decode(charData.charinfo or '{}'),
                job = json.decode(charData.job or '{}'),
                accounts = json.decode(charData.accounts or '{}'),
                metadata = json.decode(charData.metadata or '{}'),
                position = json.decode(charData.position or '{}'),
                items = inventory
            }

            -- Instantiate Player Object
            local playerObj = PokeCore.Player.CheckPlayerData(src, playerData)
            PokeCore.Players[src] = playerObj

            -- Trigger client spawn and load
            TriggerClientEvent('pokefivem:client:spawnSelectedCharacter', src, playerData)
            TriggerClientEvent('pokefivem:client:onPlayerLoaded', src, playerData)
            TriggerEvent('pokefivem:server:onPlayerLoaded', citizenid, playerObj)

            local fullName = playerData.charinfo.firstname .. ' ' .. playerData.charinfo.lastname
            PokeCore.Functions.Notify(src, string.format('Welcome back, Trainer %s!', fullName), 'success')
        end)
    end)
end)

-- Create New Character
RegisterNetEvent('pokefivem:server:createCharacter', function(data)
    local src = source
    local license = PokeCore.Functions.GetLicense(src)
    if not license then return end

    -- Verify slot limits
    MySQL.scalar('SELECT COUNT(*) FROM pokefivem_characters WHERE identifier = ?', { license }, function(currentCount)
        local maxSlots = (Config.Multicharacter and Config.Multicharacter.MaxSlots) or 4
        if currentCount >= maxSlots then
            PokeCore.Functions.Notify(src, 'You have reached the maximum character slots limit!', 'error')
            return
        end

        local citizenid = "PKM" .. tostring(math.random(10000, 99999))
        local charinfo = {
            firstname = data.firstname or "Red",
            lastname = data.lastname or "Trainer",
            birthdate = data.birthdate or "2000-01-01",
            gender = tonumber(data.gender) or 0
        }

        local job = {
            name = "trainer",
            label = "Pokémon Trainer",
            grade = 0,
            grade_name = "Rookie Trainer",
            payment = 75,
            onduty = true
        }

        local accounts = {
            cash = Config.Money.MoneyTypes.cash or 1000,
            bank = Config.Money.MoneyTypes.bank or 5000,
            pokedollars = Config.Money.MoneyTypes.pokedollars or 2500
        }

        local metadata = {
            hunger = 100,
            thirst = 100,
            isdead = false,
            inlaststand = false,
            starter_claimed = false,
            badges = {},
            battles_won = 0,
            battles_lost = 0,
            pokemon_caught = 0,
            quests = {}
        }

        local defaultSpawn = Config.Player.DefaultSpawn or vector4(298.54, -584.43, 43.26, 75.0)
        local position = {
            x = defaultSpawn.x,
            y = defaultSpawn.y,
            z = defaultSpawn.z,
            heading = defaultSpawn.w
        }

        MySQL.insert([[
            INSERT INTO pokefivem_characters (citizenid, identifier, charinfo, job, accounts, metadata, position)
            VALUES (?, ?, ?, ?, ?, ?, ?)
        ]], {
            citizenid,
            license,
            json.encode(charinfo),
            json.encode(job),
            json.encode(accounts),
            json.encode(metadata),
            json.encode(position)
        }, function(insertId)
            -- Starter package items
            MySQL.query([[
                INSERT INTO pokefivem_inventory (citizenid, item, count, slot, metadata)
                VALUES (?, 'pokeball', 10, 1, '{}'),
                       (?, 'potion', 5, 2, '{}'),
                       (?, 'pokedex', 1, 3, '{}'),
                       (?, 'water', 3, 4, '{}'),
                       (?, 'sandwich', 3, 5, '{}')
            ]], { citizenid, citizenid, citizenid, citizenid, citizenid })

            -- Load immediately
            TriggerEvent('pokefivem:server:selectCharacter', citizenid)
        end)
    end)
end)

-- Delete Character
RegisterNetEvent('pokefivem:server:deleteCharacter', function(citizenid)
    local src = source
    local license = PokeCore.Functions.GetLicense(src)

    MySQL.single('SELECT citizenid FROM pokefivem_characters WHERE citizenid = ? AND identifier = ?', { citizenid, license }, function(char)
        if not char then
            PokeCore.Functions.Notify(src, 'Character not found.', 'error')
            return
        end

        -- Delete cascade
        MySQL.query('DELETE FROM pokefivem_pokemon WHERE owner = ?', { citizenid })
        MySQL.query('DELETE FROM pokefivem_inventory WHERE citizenid = ?', { citizenid })
        MySQL.query('DELETE FROM pokefivem_pokedex WHERE citizenid = ?', { citizenid })
        MySQL.query('DELETE FROM pokefivem_characters WHERE citizenid = ?', { citizenid }, function()
            PokeCore.Functions.Notify(src, 'Trainer profile successfully deleted.', 'info')
            TriggerClientEvent('pokefivem:client:openMulticharacter', src)
        end)
    end)
end)

-- Switch Character Command (/logout)
RegisterCommand('logout', function(source)
    local player = PokeCore.Functions.GetPlayer(source)
    if player then
        player.Functions.Save()
        PokeCore.Players[source] = nil
        TriggerClientEvent('pokefivem:client:openMulticharacter', source)
    end
end)

