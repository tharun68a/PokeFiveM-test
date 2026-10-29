-- ====================================================================
-- PokeFiveM Framework - Server Evolution Controller
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

local EvolutionTokens = {}

-- Register Usable Evolution Stones in ox_inventory
CreateThread(function()
    Wait(1500)
    if GetResourceState('ox_inventory') == 'started' then
        local stones = {
            'fire_stone', 'water_stone', 'thunder_stone', 'leaf_stone',
            'moon_stone', 'sun_stone', 'shiny_stone', 'dusk_stone',
            'dawn_stone', 'ice_stone', 'link_cable'
        }

        for _, stone in ipairs(stones) do
            exports.ox_inventory:registerHook('useItem', function(payload)
                local src = payload.source
                if payload.item and payload.item.name == stone then
                    TriggerClientEvent('pokefivem:client:openStoneEvolutionMenu', src, stone)
                    return false -- don't consume until player picks target
                end
            end, { itemFilter = { [stone] = true } })
        end
    end
end)

-- Request Evolution with an Item/Stone
RegisterNetEvent('pokefivem:server:useEvolutionItem', function(stoneItem, pokemonId)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    MySQL.query('SELECT * FROM user_pokemon WHERE id = ? AND citizenid = ?', { pokemonId, player.citizenid }, function(results)
        if not results or #results == 0 then
            TriggerClientEvent('pokefivem:client:notify', src, "Pokémon not found in your party!", 'error')
            return
        end

        local mon = results[1]
        local evo = PokeEvolution.GetStoneEvolution(stoneItem, tonumber(mon.pokedex_id))
        if not evo then
            TriggerClientEvent('pokefivem:client:notify', src, string.format("It won't have any effect on %s.", mon.nickname or mon.name), 'error')
            return
        end

        -- Verify player has the stone item
        local hasItem = exports.ox_inventory:GetItem(src, stoneItem, nil, true)
        if not hasItem or hasItem < 1 then
            TriggerClientEvent('pokefivem:client:notify', src, "You don't have this evolution item!", 'error')
            return
        end

        -- Remove 1 evolution stone
        exports.ox_inventory:RemoveItem(src, stoneItem, 1)

        -- Generate unique evolution token
        local token = tostring(math.random(100000, 999999))
        EvolutionTokens[src] = {
            token = token,
            pokemonId = mon.id,
            oldPokedexId = mon.pokedex_id,
            newPokedexId = evo.to,
            newName = evo.name,
            oldName = mon.nickname or mon.name
        }

        -- Trigger Cinematic Evolution UI on Client
        TriggerClientEvent('pokefivem:client:startEvolutionCinematic', src, {
            token = token,
            pokemonId = mon.id,
            oldPokedexId = mon.pokedex_id,
            newPokedexId = evo.to,
            newName = evo.name,
            oldName = mon.nickname or mon.name
        })
    end)
end)

-- Confirm Evolution Completion (After Cinematic)
RegisterNetEvent('pokefivem:server:completeEvolution', function(token)
    local src = source
    local pending = EvolutionTokens[src]
    if not pending or pending.token ~= token then
        return
    end

    EvolutionTokens[src] = nil
    local targetData = GetPokedexEntry(pending.newPokedexId)
    if not targetData then return end

    -- Update database
    MySQL.update('UPDATE user_pokemon SET pokedex_id = ?, name = ? WHERE id = ?', {
        pending.newPokedexId,
        targetData.name,
        pending.pokemonId
    }, function(affected)
        TriggerClientEvent('pokefivem:client:notify', src, string.format("Congratulations! Your %s evolved into %s!", pending.oldName, targetData.name), 'success', 8000)

        -- Update Pokédex completion status
        local player = PokeCore.Functions.GetPlayer(src)
        if player then
            MySQL.insert('INSERT INTO user_pokedex (citizenid, pokedex_id, encountered, caught) VALUES (?, ?, 1, 1) ON DUPLICATE KEY UPDATE caught = 1', {
                player.citizenid, pending.newPokedexId
            })
        end

        -- Refresh party
        TriggerClientEvent('pokefivem:client:evolutionComplete', src, pending.pokemonId, pending.newPokedexId)
    end)
end)

-- Cancel Evolution (Player hit B)
RegisterNetEvent('pokefivem:server:cancelEvolution', function(token)
    local src = source
    local pending = EvolutionTokens[src]
    if not pending or pending.token ~= token then return end

    EvolutionTokens[src] = nil
    TriggerClientEvent('pokefivem:client:notify', src, string.format("Huh? %s stopped evolving!", pending.oldName), 'info', 5000)
end)
