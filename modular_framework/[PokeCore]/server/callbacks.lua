-- ====================================================================
-- PokeFiveM Framework - Server Callbacks Engine
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

PokeCore.ServerCallbacks = PokeCore.ServerCallbacks or {}

-- Register a server callback
function PokeCore.Functions.CreateCallback(name, cb)
    PokeCore.ServerCallbacks[name] = cb
end

-- Trigger Callback from Client
RegisterNetEvent('pokefivem:server:triggerCallback', function(name, requestId, ...)
    local src = source
    if PokeCore.ServerCallbacks[name] then
        PokeCore.ServerCallbacks[name](src, function(...)
            TriggerClientEvent('pokefivem:client:serverCallback', src, requestId, ...)
        end, ...)
    else
        PokeCore.Functions.Log('Callback', string.format('Server Callback "%s" does not exist! (Requested by Src: %s)', name, src), 'error')
        TriggerClientEvent('pokefivem:client:serverCallback', src, requestId, nil)
    end
end)
