-- ====================================================================
-- PokeFiveM Framework - Server Core Controller
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

PokeCore = PokeCore or {}
PokeCore.Players = {}
PokeCore.ServerCallbacks = {}
PokeCore.UseableItems = {}
PokeCore.Commands = {}

-- Safe MySQL Wrapper (oxmysql native)
local MySQL_Async = {
    fetchAll = function(query, params, cb)
        if exports['oxmysql'] then
            exports['oxmysql']:execute(query, params or {}, cb)
        elseif MySQL and MySQL.Async and MySQL.Async.fetchAll then
            MySQL.Async.fetchAll(query, params or {}, cb)
        else
            print('^1[PokeFiveM - ERROR] No MySQL library found (ensure oxmysql)!^7')
            if cb then cb({}) end
        end
    end,
    execute = function(query, params, cb)
        if exports['oxmysql'] then
            exports['oxmysql']:execute(query, params or {}, cb)
        elseif MySQL and MySQL.Async and MySQL.Async.execute then
            MySQL.Async.execute(query, params or {}, cb)
        else
            print('^1[PokeFiveM - ERROR] No MySQL library found!^7')
            if cb then cb(0) end
        end
    end,
    insert = function(query, params, cb)
        if exports['oxmysql'] then
            exports['oxmysql']:insert(query, params or {}, cb)
        elseif MySQL and MySQL.Async and MySQL.Async.insert then
            MySQL.Async.insert(query, params or {}, cb)
        else
            print('^1[PokeFiveM - ERROR] No MySQL library found!^7')
            if cb then cb(0) end
        end
    end
}

DB = MySQL_Async

-- Player Identity Resolution
function PokeCore.Functions.GetIdentifier(source, idType)
    idType = idType or 'license'
    local identifiers = GetPlayerIdentifiers(source)
    for _, id in ipairs(identifiers) do
        if string.find(id, idType .. ':') then
            return id
        end
    end
    return nil
end

function PokeCore.Functions.GetLicense(source)
    return PokeCore.Functions.GetIdentifier(source, 'license') or ('license:trainer_' .. tostring(source))
end

-- Get Player by Source
function PokeCore.Functions.GetPlayer(source)
    if type(source) == 'number' or type(source) == 'string' then
        return PokeCore.Players[tonumber(source)]
    end
    return nil
end

-- Get Player by CitizenId
function PokeCore.Functions.GetPlayerByCitizenId(citizenid)
    for _, player in pairs(PokeCore.Players) do
        if player and player.PlayerData.citizenid == citizenid then
            return player
        end
    end
    return nil
end

-- Get All Active Players
function PokeCore.Functions.GetPlayers()
    local sources = {}
    for k, _ in pairs(PokeCore.Players) do
        table.insert(sources, k)
    end
    return sources
end

-- Permission Management
function PokeCore.Functions.HasPermission(source, permission)
    if IsPlayerAceAllowed(source, 'command') then return true end
    local player = PokeCore.Functions.GetPlayer(source)
    if not player then return false end
    local userGroup = player.PlayerData.permission_group or 'user'
    if userGroup == 'god' then return true end
    if userGroup == permission then return true end
    return false
end

function PokeCore.Functions.SetPermission(source, group)
    local player = PokeCore.Functions.GetPlayer(source)
    if player then
        player.PlayerData.permission_group = group
        DB.execute('UPDATE `pokefivem_users` SET `permission_group` = ? WHERE `identifier` = ?', {
            group, player.PlayerData.license
        })
    end
end

-- Notification Dispatcher
function PokeCore.Functions.Notify(source, text, type, length)
    TriggerClientEvent('pokefivem:client:notify', source, text, type or 'info', length or 4000)
end

-- Framework Paycheck Engine
CreateThread(function()
    while true do
        Wait(Config.Money.PaycheckInterval or (10 * 60 * 1000))
        for src, player in pairs(PokeCore.Players) do
            if player and player.PlayerData and player.PlayerData.job and player.PlayerData.job.onduty then
                local pay = player.PlayerData.job.payment or 50
                if pay > 0 then
                    if Config.Money.PaycheckToBank then
                        player.Functions.AddMoney('bank', pay, 'Salary Paycheck')
                    else
                        player.Functions.AddMoney('cash', pay, 'Salary Paycheck')
                    end
                    PokeCore.Functions.Notify(src, string.format('Paycheck received: +$%d (%s)', pay, player.PlayerData.job.label), 'success')
                end
            end
        end
    end
end)

-- Server Startup Logging
AddEventHandler('onResourceStart', function(resName)
    if resName ~= GetCurrentResourceName() then return end
    print([[
    ^3========================================================================
    ^2   PokeFiveM FRAMEWORK ^7- Fully Independent Pokémon RPG Architecture
    ^5   Author: ^7Pika Studio
    ^5   Mode:   ^7STANDALONE NATIVE (Zero ESX Dependency)
    ^5   Core:   ^7PokeCore | Cerulean Lua54
    ^3========================================================================^7
    ]])
end)

-- Exports
exports('GetCoreObject', function()
    return PokeCore
end)
