-- ====================================================================
-- PokeFiveM Framework - Server Legendary World Boss Raids
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

local RaidBosses = {
    ['zapdos'] = {
        name = "Zapdos",
        pokedex_id = 145,
        level = 70,
        maxHp = 5000,
        currentHp = 5000,
        coords = vector3(2735.12, 1530.45, 24.50),
        locationName = "Palmer-Taylor Power Station",
        active = true,
        heading = 180.0
    },
    ['articuno'] = {
        name = "Articuno",
        pokedex_id = 144,
        level = 70,
        maxHp = 5000,
        currentHp = 5000,
        coords = vector3(498.45, 5585.12, 792.20),
        locationName = "Mount Chiliad Peak",
        active = true,
        heading = 220.0
    },
    ['moltres'] = {
        name = "Moltres",
        pokedex_id = 146,
        level = 70,
        maxHp = 5000,
        currentHp = 5000,
        coords = vector3(3315.65, 5175.25, 19.60),
        locationName = "Mount Gordo Summit",
        active = true,
        heading = 90.0
    },
    ['mewtwo'] = {
        name = "Mewtwo",
        pokedex_id = 150,
        level = 75,
        maxHp = 7500,
        currentHp = 7500,
        coords = vector3(3615.12, 3740.25, 28.60),
        locationName = "Humane Labs Biological Chamber",
        active = true,
        heading = 45.0
    }
}

-- Broadcast active raids on player join
RegisterNetEvent('pokefivem:server:playerLoaded', function()
    local src = source
    TriggerClientEvent('pokefivem:client:syncRaids', src, RaidBosses)
end)

-- Challenge Boss
RegisterNetEvent('pokefivem:server:challengeRaidBoss', function(raidId)
    local src = source
    local boss = RaidBosses[raidId]
    if not boss or not boss.active then
        TriggerClientEvent('pokefivem:client:notify', src, "This Raid Boss is currently inactive!", 'error')
        return
    end

    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    -- Prepare Raid Boss Wild Encounter with Shared Health
    local pData = GetPokedexEntry(boss.pokedex_id)
    local bossStats = {
        pokedex_id = boss.pokedex_id,
        name = boss.name,
        level = boss.level,
        is_shiny = (math.random(1, 20) == 1), -- High shiny rate for raids (1 in 20)
        is_raid_boss = true,
        raid_id = raidId,
        hp = math.min(boss.currentHp, 600), -- Encounter segment
        maxHp = 600,
        type1 = pData and pData.types and pData.types[1] or 'Flying',
        type2 = pData and pData.types and pData.types[2] or nil,
        moves = {
            { name = "Ancient Power", type = "Rock", power = 60, accuracy = 100, currentPp = 5, maxPp = 5 },
            { name = "Hyper Beam", type = "Normal", power = 150, accuracy = 90, currentPp = 5, maxPp = 5 }
        }
    }

    TriggerClientEvent('pokefivem:client:startWildBattle', src, bossStats)
end)

-- Deal Damage to Raid Boss
RegisterNetEvent('pokefivem:server:damageRaidBoss', function(raidId, damage)
    local src = source
    local boss = RaidBosses[raidId]
    if not boss or not boss.active then return end

    damage = tonumber(damage) or 50
    boss.currentHp = math.max(0, boss.currentHp - damage)

    -- Sync updated HP across all clients
    TriggerClientEvent('pokefivem:client:syncRaids', -1, RaidBosses)

    -- If Boss Defeated
    if boss.currentHp <= 0 then
        boss.active = false
        TriggerClientEvent('pokefivem:client:notify', -1, string.format("🏆 [RAID DEFEATED]: The Legendary %s has been brought to its knees!", boss.name), 'success', 10000)

        -- Reward player who struck the final blow
        local player = PokeCore.Functions.GetPlayer(src)
        if player then
            exports.ox_inventory:AddItem(src, 'masterball', 1)
            exports.ox_inventory:AddItem(src, 'rare_candy', 5)
            player.Functions.AddMoney('pokedollars', 10000)
            TriggerClientEvent('pokefivem:client:notify', src, "Final Strike Reward: +1 Master Ball, +5 Rare Candies, +10,000 PokéDollars!", 'success', 8000)
        end

        -- Respawn boss after 30 minutes
        SetTimeout(30 * 60 * 1000, function()
            boss.currentHp = boss.maxHp
            boss.active = true
            TriggerClientEvent('pokefivem:client:syncRaids', -1, RaidBosses)
            TriggerClientEvent('pokefivem:client:raidAlert', -1, boss.name, boss.locationName)
        end)
    end
end)
