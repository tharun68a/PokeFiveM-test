-- ====================================================================
-- PokeFiveM Framework - Client Notifications & TextUI
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

-- Toast Notification
RegisterNetEvent('pokefivem:client:notify', function(message, notifyType, duration)
    SendNUIMessage({
        action = "notify",
        message = message,
        type = notifyType or "info",
        duration = duration or 4000
    })

    if notifyType == 'error' then
        PlaySoundFrontend(-1, "ERROR", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    elseif notifyType == 'success' then
        PlaySoundFrontend(-1, "LOCAL_PLYR_CASH_COUNTER_COMPLETE", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", true)
    end
end)

-- Help Notification Native (Top Left GTA Banner)
function PokeCore.Functions.ShowHelpNotification(text)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, -1)
end
