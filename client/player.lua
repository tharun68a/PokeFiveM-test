-- ====================================================================
-- PokeFiveM Framework - Client Player Lifecycle
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

local isLoaded = false

-- Initialization Loop on Join
CreateThread(function()
    while not NetworkIsSessionActive() do
        Wait(500)
    end
    Wait(1000)
    TriggerServerEvent('pokefivem:server:playerLoaded')
end)

-- Handle Player Loaded
RegisterNetEvent('pokefivem:client:onPlayerLoaded', function(playerData)
    PokeCore.PlayerData = playerData
    isLoaded = true

    -- Position Check & Spawn
    local ped = PlayerPedId()
    SetCanAttackFriendly(ped, true, false)
    NetworkSetFriendlyFireOption(true)

    SendNUIMessage({
        action = "syncPlayerData",
        player = PokeCore.PlayerData
    })
end)

-- Sync Data
RegisterNetEvent('pokefivem:client:syncPlayerData', function(playerData)
    PokeCore.PlayerData = playerData
    SendNUIMessage({
        action = "syncPlayerData",
        player = PokeCore.PlayerData
    })
end)

-- Money Change Notification
RegisterNetEvent('pokefivem:client:onMoneyChange', function(account, amount, action, newBalance)
    if not PokeCore.PlayerData.accounts then PokeCore.PlayerData.accounts = {} end
    PokeCore.PlayerData.accounts[account] = newBalance

    local symbol = (account == 'pokedollars') and '₽' or '$'
    local msg = string.format("%s%s%d (%s: %s%d)", (action == 'add' and '+' or '-'), symbol, amount, string.upper(account), symbol, newBalance)
    TriggerEvent('pokefivem:client:notify', msg, (action == 'add' and 'success' or 'info'))
end)

-- Job Update
RegisterNetEvent('pokefivem:client:onJobUpdate', function(job)
    PokeCore.PlayerData.job = job
    TriggerEvent('pokefivem:client:notify', string.format("Job updated: %s (%s)", job.label, job.grade_name), 'info')
end)

-- Inventory Update
RegisterNetEvent('pokefivem:client:onInventoryUpdate', function(items)
    PokeCore.PlayerData.items = items
    SendNUIMessage({
        action = "syncInventory",
        items = items
    })
end)

-- Consume Animation (Drink / Eat)
RegisterNetEvent('pokefivem:client:playConsumeAnim', function(consumeType)
    local ped = PlayerPedId()
    local dict = "mp_player_inteat@burger"
    local anim = "mp_player_int_eat_burger"
    if consumeType == 'drink' then
        dict = "mp_player_intdrink"
        anim = "loop_bottle"
    end

    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do Wait(10) end

    TaskPlayAnim(ped, dict, anim, 8.0, -8.0, 3500, 49, 0, false, false, false)
    Wait(3500)
    ClearPedTasks(ped)
end)
