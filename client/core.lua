-- ====================================================================
-- PokeFiveM Framework - Client Core Controller
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

PokeCore = PokeCore or {}
PokeCore.PlayerData = {}
PokeCore.Functions = {}
PokeCore.ServerCallbacks = {}

-- Export core getter
function GetCoreObject()
    return PokeCore
end

exports('GetCoreObject', function()
    return PokeCore
end)

-- Fetch Client Player Data
function PokeCore.Functions.GetPlayerData(cb)
    if cb then
        cb(PokeCore.PlayerData)
    else
        return PokeCore.PlayerData
    end
end

-- Client Notification Trigger
function PokeCore.Functions.Notify(text, type, length)
    TriggerEvent('pokefivem:client:notify', text, type, length)
end

-- Screen Text UI (Help prompt / floating pill)
function PokeCore.Functions.ShowTextUI(text, position)
    SendNUIMessage({
        action = "showTextUI",
        text = text,
        position = position or "right"
    })
end

function PokeCore.Functions.HideTextUI()
    SendNUIMessage({
        action = "hideTextUI"
    })
end
