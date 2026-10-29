-- ====================================================================
-- PokeFiveM Framework - Client Core Controller
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

PokeCore = PokeCore or {}
PokeCore.PlayerData = PokeCore.PlayerData or {}
PokeCore.Functions = PokeCore.Functions or {}
PokeCore.ServerCallbacks = PokeCore.ServerCallbacks or {}

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

-- Check if Player is fully loaded
function PokeCore.Functions.IsPlayerLoaded()
    return (PokeCore.PlayerData and PokeCore.PlayerData.citizenid ~= nil)
end

-- Get Client Party
function PokeCore.Functions.GetParty()
    return PlayerParty or {}
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

-- 3D World Text Helper
function PokeCore.Functions.DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    if onScreen then
        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry("STRING")
        SetTextCentre(1)
        SetTextOutline()
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end

DrawText3D = PokeCore.Functions.DrawText3D
