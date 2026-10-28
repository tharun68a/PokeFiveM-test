-- ====================================================================
-- PokeFiveM Framework - Multicharacter Server Controller
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
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

            -- Get Lead Pokémon and Total Pokémon count
            MySQL.single('SELECT pokedex_id, nickname, level FROM pokefivem_pokemon WHERE owner = ? AND storage_type = "party" AND storage_index = 1', { c.citizenid }, function(leadMon)
                local monData = nil
                if leadMon then
                    local pData = GetPokedexEntry(leadMon.pokedex_id)
                    local monName = (leadMon.nickname and leadMon.nickname ~= "") and leadMon.nickname or (pData and pData.name or "Pokémon")
                    monData = {
                        pokedex_id = leadMon.pokedex_id,
                        name = monName,
                        level = leadMon.level or 5
                    }
                end

                MySQL.scalar('SELECT COUNT(*) FROM pokefivem_pokemon WHERE owner = ?', { c.citizenid }, function(pokemonCount)
                    table.insert(results, {
                        citizenid = c.citizenid,
                        charinfo = charinfo,
                        job = json.decode(c.job or '{}'),
                        accounts = accounts,
                        metadata = metadata,
                        position = pos,
                        pokemonCount = pokemonCount or 0,
                        leadPokemon = monData,
                        slot = idx
                    })

                    processed = processed + 1
                    if processed >= count then
                        table.sort(results, function(a, b) return a.slot < b.slot end)
                        cb(results)
                    end
                end)
            end)
        end
    end)
end)

-- Select & Load Character
RegisterNetEvent('pokefivem:server:selectCharacter', function(citizenid)
    local src = source
    if not citizenid then return end
    PokeCore.Player.Login(src, citizenid)
end)

-- Create New Character
RegisterNetEvent('pokefivem:server:createCharacter', function(data)
    local src = source
    local license = PokeCore.Functions.GetLicense(src)
    if not license then return end

    -- Verify slot limits
    MySQL.scalar('SELECT COUNT(*) FROM pokefivem_characters WHERE identifier = ?', { license }, function(currentCount)
        local maxSlots = (Config.Multicharacter and Config.Multicharacter.MaxSlots) or 4
        if (currentCount or 0) >= maxSlots then
            PokeCore.Functions.Notify(src, 'You have reached the maximum character slots limit!', 'error')
            return
        end

        local citizenid = "PKM" .. tostring(math.random(10000, 99999))
        local charinfo = {
            firstname = (data.firstname and data.firstname:gsub("%s+", "")) or "Red",
            lastname = (data.lastname and data.lastname:gsub("%s+", "")) or "Trainer",
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
            starter_claimed = true,
            badges = {},
            battles_won = 0,
            battles_lost = 0,
            pokemon_caught = 1,
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
            ]], { citizenid, citizenid, citizenid, citizenid, citizenid }, function()
                -- Grant Selected Starter Pokémon
                local starterId = tonumber(data.starterId) or 1
                local pData = GetPokedexEntry(starterId) or { id = 1, name = "Bulbasaur" }
                local ivs = PokeUtils.GenerateRandomIVs()
                local nature = GetRandomNature()
                local maxHp = PokeUtils.CalculateMaxHP(pData.baseStats and pData.baseStats.hp or 45, ivs.hp, 0, 5)

                local moves = {}
                for _, m in ipairs(pData.moves or {}) do
                    if m.level <= 5 then
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
                if #moves == 0 then
                    local tackle = GetMove("Tackle") or { name = "Tackle", type = "normal", power = 40, accuracy = 100, pp = 35 }
                    table.insert(moves, { key = "Tackle", name = tackle.name, type = tackle.type, power = tackle.power, accuracy = tackle.accuracy, pp = tackle.pp, max_pp = tackle.pp })
                end

                local trainerFullName = charinfo.firstname .. " " .. charinfo.lastname
                MySQL.insert([[
                    INSERT INTO pokefivem_pokemon (owner, pokedex_id, nickname, level, exp, nature, ability, is_shiny, gender, ivs, evs, moves, current_hp, max_hp, status, storage_type, storage_index, original_trainer, caught_ball, caught_location)
                    VALUES (?, ?, ?, 5, 0, ?, 'Overgrow', 0, 0, ?, ?, ?, ?, ?, 'none', 'party', 1, ?, 'pokeball', 'Pallet Town')
                ]], {
                    citizenid,
                    pData.id,
                    pData.name,
                    nature,
                    json.encode(ivs),
                    json.encode(PokeUtils.GenerateZeroEVs()),
                    json.encode(moves),
                    maxHp,
                    maxHp,
                    trainerFullName
                }, function()
                    -- Add starter to Pokédex
                    MySQL.insert([[
                        INSERT INTO pokefivem_pokedex (citizenid, seen, caught)
                        VALUES (?, ?, ?)
                    ]], {
                        citizenid,
                        json.encode({ pData.id }),
                        json.encode({ pData.id })
                    }, function()
                        -- Log player into server immediately
                        PokeCore.Player.Login(src, citizenid)
                    end)
                end)
            end)
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
    PokeCore.Player.Logout(source)
end, false)
