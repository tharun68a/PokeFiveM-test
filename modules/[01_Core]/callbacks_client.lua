-- ====================================================================
-- PokeFiveM Framework - Client Callbacks Engine
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

local currentRequestId = 0

-- Trigger a Server Callback
function PokeCore.Functions.TriggerCallback(name, cb, ...)
    currentRequestId = currentRequestId + 1
    PokeCore.ServerCallbacks[currentRequestId] = cb
    TriggerServerEvent('pokefivem:server:triggerCallback', name, currentRequestId, ...)
end

-- Handle Response from Server
RegisterNetEvent('pokefivem:client:serverCallback', function(requestId, ...)
    if PokeCore.ServerCallbacks[requestId] then
        PokeCore.ServerCallbacks[requestId](...)
        PokeCore.ServerCallbacks[requestId] = nil
    end
end)
