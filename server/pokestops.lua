-- ====================================================================
-- PokeFiveM Framework - Server Spinning PokéStops Engine
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

local playerStopCooldowns = {} -- [citizenid][stopId] = timestamp

local RewardLootTable = {
    { item = 'pokeball',     label = 'Poké Ball',     min = 2, max = 4, chance = 60 },
    { item = 'greatball',    label = 'Great Ball',    min = 1, max = 2, chance = 25 },
    { item = 'ultraball',    label = 'Ultra Ball',    min = 1, max = 1, chance = 10 },
    { item = 'potion',       label = 'Potion',        min = 1, max = 2, chance = 40 },
    { item = 'superpotion',  label = 'Super Potion',  min = 1, max = 1, chance = 20 },
    { item = 'revive',       label = 'Revive',        min = 1, max = 1, chance = 15 },
    { item = 'berry_oran',   label = 'Oran Berry',    min = 1, max = 2, chance = 45 },
    { item = 'berry_sitrus', label = 'Sitrus Berry',  min = 1, max = 1, chance = 25 }
}

RegisterNetEvent('pokefivem:server:spinPokeStop', function(stopId)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    local cid = player.citizenid
    if not playerStopCooldowns[cid] then
        playerStopCooldowns[cid] = {}
    end

    local now = os.time()
    local lastSpin = playerStopCooldowns[cid][stopId] or 0

    if (now - lastSpin) < 300 then -- 5 minute cooldown
        local remaining = 300 - (now - lastSpin)
        TriggerClientEvent('pokefivem:client:notify', src, string.format("This PokéStop is recharging! Ready in %d seconds.", remaining), 'warning')
        return
    end

    -- Mark cooldown
    playerStopCooldowns[cid][stopId] = now

    -- Roll 2 to 4 unique item drops
    local dropCount = math.random(2, 4)
    local rewardedItems = {}

    for i = 1, dropCount do
        local roll = math.random(1, 100)
        for _, reward in ipairs(RewardLootTable) do
            if roll <= reward.chance then
                local qty = math.random(reward.min, reward.max)
                exports.ox_inventory:AddItem(src, reward.item, qty)
                table.insert(rewardedItems, { label = reward.label, amount = qty })
                break
            end
        end
    end

    -- Bonus XP & PokéDollars
    local bonusDollars = math.random(50, 150)
    player.Functions.AddMoney('pokedollars', bonusDollars)

    TriggerClientEvent('pokefivem:client:pokeStopSpun', src, stopId, rewardedItems)
end)
