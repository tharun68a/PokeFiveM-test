-- ====================================================================
-- PokeFiveM Framework - Server Water Fishing Engine
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

local RodLootTables = {
    ['old_rod'] = {
        { id = 129, name = "Magikarp", minLvl = 5, maxLvl = 12, chance = 70 },
        { id = 118, name = "Goldeen", minLvl = 8, maxLvl = 14, chance = 30 }
    },
    ['good_rod'] = {
        { id = 60,  name = "Poliwag", minLvl = 15, maxLvl = 22, chance = 35 },
        { id = 72,  name = "Tentacool", minLvl = 14, maxLvl = 20, chance = 30 },
        { id = 90,  name = "Shellder", minLvl = 16, maxLvl = 24, chance = 20 },
        { id = 54,  name = "Psyduck", minLvl = 18, maxLvl = 25, chance = 15 }
    },
    ['super_rod'] = {
        { id = 130, name = "Gyarados", minLvl = 28, maxLvl = 38, chance = 30 },
        { id = 131, name = "Lapras", minLvl = 30, maxLvl = 40, chance = 25 },
        { id = 147, name = "Dratini", minLvl = 22, maxLvl = 32, chance = 25 },
        { id = 99,  name = "Kingler", minLvl = 28, maxLvl = 36, chance = 20 }
    }
}

-- Register Rod Items in ox_inventory
CreateThread(function()
    Wait(1500)
    if GetResourceState('ox_inventory') == 'started' then
        local rods = { 'old_rod', 'good_rod', 'super_rod' }
        for _, rod in ipairs(rods) do
            exports.ox_inventory:registerHook('useItem', function(payload)
                local src = payload.source
                if payload.item and payload.item.name == rod then
                    TriggerClientEvent('pokefivem:client:startFishing', src, rod)
                    return false -- don't consume rod
                end
            end, { itemFilter = { [rod] = true } })
        end
    end
end)

-- Fishing Encounter
RegisterNetEvent('pokefivem:server:fishingEncounter', function(rodType)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    local pool = RodLootTables[rodType or 'old_rod'] or RodLootTables['old_rod']
    local roll = math.random(1, 100)
    local current = 0
    local chosen = pool[1]

    for _, entry in ipairs(pool) do
        current = current + entry.chance
        if roll <= current then
            chosen = entry
            break
        end
    end

    local level = math.random(chosen.minLvl, chosen.maxLvl)
    local shinyChance = (Config.ShinyRate or 512)
    local isShiny = (math.random(1, shinyChance) == 1)

    local pData = GetPokedexEntry(chosen.id)
    local wildStats = {
        pokedex_id = chosen.id,
        name = chosen.name,
        level = level,
        is_shiny = isShiny,
        type1 = pData and pData.types and pData.types[1] or 'Water',
        type2 = pData and pData.types and pData.types[2] or nil,
        hp = math.floor(35 + (level * 3.2)),
        maxHp = math.floor(35 + (level * 3.2)),
        moves = {
            { name = "Water Gun", type = "Water", power = 40, accuracy = 100, currentPp = 25, maxPp = 25 },
            { name = "Tackle", type = "Normal", power = 40, accuracy = 100, currentPp = 35, maxPp = 35 }
        }
    }

    -- Trigger wild battle
    TriggerClientEvent('pokefivem:client:startWildBattle', src, wildStats)
end)
