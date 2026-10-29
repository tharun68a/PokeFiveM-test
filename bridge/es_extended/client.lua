-- ====================================================================
-- es_extended Standalone Bridge (Client)
-- Developed by: Pika Studio
-- Passes all ESX client calls directly to PokeFiveM's native ESX bridge
-- ====================================================================

local ESX = nil

local function FetchCore()
    if not ESX then
        ESX = exports['PokeFiveM']:GetSharedObject()
    end
    return ESX
end

function getSharedObject()
    return FetchCore()
end

function GetSharedObject()
    return FetchCore()
end

exports('getSharedObject', getSharedObject)
exports('GetSharedObject', GetSharedObject)

AddEventHandler('esx:getSharedObject', function(cb)
    if cb then cb(FetchCore()) end
end)
