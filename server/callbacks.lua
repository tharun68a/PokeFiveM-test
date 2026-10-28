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
        print(string.format('^1[PokeFiveM - ERROR] Server Callback "%s" does not exist!^7', name))
        TriggerClientEvent('pokefivem:client:serverCallback', src, requestId, nil)
    end
end)
