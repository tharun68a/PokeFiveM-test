-- ====================================================================
-- PokeFiveM Framework - Server Berry & Apricorn Foraging Engine
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

local harvestedCooldowns = {} -- [nodeId] = timestamp

local BerryDrops = {
    { item = 'berry_oran',   label = 'Oran Berry',   min = 2, max = 4 },
    { item = 'berry_sitrus', label = 'Sitrus Berry', min = 1, max = 2 },
    { item = 'berry_leppa',  label = 'Leppa Berry',  min = 1, max = 3 },
    { item = 'berry_lum',    label = 'Lum Berry',    min = 1, max = 2 }
}

local ApricornDrops = {
    { item = 'apricorn_red',    label = 'Red Apricorn',    min = 2, max = 3 },
    { item = 'apricorn_blue',   label = 'Blue Apricorn',   min = 2, max = 3 },
    { item = 'apricorn_yellow', label = 'Yellow Apricorn', min = 2, max = 3 },
    { item = 'apricorn_black',  label = 'Black Apricorn',  min = 1, max = 2 }
}

RegisterNetEvent('pokefivem:server:forageNode', function(nodeId, nodeType)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    local now = os.time()
    local lastHarvest = harvestedCooldowns[nodeId] or 0

    if (now - lastHarvest) < 180 then -- 3 minute regrowth
        local remaining = 180 - (now - lastHarvest)
        TriggerClientEvent('pokefivem:client:notify', src, string.format("This tree is bare! New fruit will grow in %d seconds.", remaining), 'warning')
        return
    end

    harvestedCooldowns[nodeId] = now

    local pool = (nodeType == 'berry') and BerryDrops or ApricornDrops
    local chosen = pool[math.random(1, #pool)]
    local qty = math.random(chosen.min, chosen.max)

    exports.ox_inventory:AddItem(src, chosen.item, qty)
    TriggerClientEvent('pokefivem:client:notify', src, string.format("Harvested %d %s!", qty, chosen.label), 'success')
end)
