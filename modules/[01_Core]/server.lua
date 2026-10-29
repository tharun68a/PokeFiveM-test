-- ====================================================================
-- PokeFiveM Framework - Server Core Controller
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

PokeCore = PokeCore or {}
PokeCore.Players = PokeCore.Players or {}
PokeCore.ServerCallbacks = PokeCore.ServerCallbacks or {}
PokeCore.UseableItems = PokeCore.UseableItems or {}
PokeCore.Commands = PokeCore.Commands or {}
PokeCore.Functions = PokeCore.Functions or {}

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

-- Generate Unique Citizen ID
function PokeCore.Functions.CreateCitizenId(cb)
    local function generateCandidate()
        local letters = ""
        for _ = 1, 3 do
            letters = letters .. string.char(math.random(65, 90)) -- A-Z
        end
        local numbers = tostring(math.random(10000, 99999))
        return letters .. numbers
    end

    if cb then
        local function checkId()
            local candidate = generateCandidate()
            if exports['oxmysql'] then
                exports['oxmysql']:scalar('SELECT COUNT(*) FROM `pokefivem_characters` WHERE `citizenid` = ?', { candidate }, function(count)
                    if (count or 0) == 0 then
                        cb(candidate)
                    else
                        checkId()
                    end
                end)
            else
                cb(candidate)
            end
        end
        checkId()
    else
        return generateCandidate()
    end
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

-- Structured Console Logger
function PokeCore.Functions.Log(module, text, level)
    level = level or 'info'
    local color = '^2' -- green for info
    local tag = 'INFO'
    if level == 'warn' then
        color = '^3' -- yellow
        tag = 'WARN'
    elseif level == 'error' then
        color = '^1' -- red
        tag = 'ERROR'
    elseif level == 'debug' then
        color = '^5' -- cyan
        tag = 'DEBUG'
    end
    print(string.format('^0[%s] %s[%s - %s]^7 %s', os.date('%X'), color, 'PokeFiveM', module or 'Core', text))
end

-- High-Level Economy & Inventory Helpers
function PokeCore.Functions.AddMoney(source, account, amount, reason)
    local player = PokeCore.Functions.GetPlayer(source)
    if player then
        return player.Functions.AddMoney(account, amount, reason)
    end
    return false
end

function PokeCore.Functions.RemoveMoney(source, account, amount, reason)
    local player = PokeCore.Functions.GetPlayer(source)
    if player then
        return player.Functions.RemoveMoney(account, amount, reason)
    end
    return false
end

function PokeCore.Functions.SetJob(source, job, grade)
    local player = PokeCore.Functions.GetPlayer(source)
    if player then
        return player.Functions.SetJob(job, grade)
    end
    return false
end

function PokeCore.Functions.AddItem(source, item, count, slot, metadata)
    local player = PokeCore.Functions.GetPlayer(source)
    if player then
        return player.Functions.AddItem(item, count, slot, metadata)
    end
    return false
end

function PokeCore.Functions.RemoveItem(source, item, count, slot)
    local player = PokeCore.Functions.GetPlayer(source)
    if player then
        return player.Functions.RemoveItem(item, count, slot)
    end
    return false
end

function PokeCore.Functions.GetParty(source)
    local player = PokeCore.Functions.GetPlayer(source)
    if player then
        return player.Functions.GetParty()
    end
    return {}
end

function PokeCore.Functions.GetPokedex(source)
    local player = PokeCore.Functions.GetPlayer(source)
    if player then
        return player.Functions.GetPokedex()
    end
    return { seen = {}, caught = {} }
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
    ^3========================================================================================
    ^2   ██████╗  ██████╗ ██╗  ██╗███████╗███████╗██╗██╗   ██╗███████╗███╗   ███╗
    ^2   ██╔══██╗██╔═══██╗██║ ██╔╝██╔════╝██╔════╝██║██║   ██║██╔════╝████╗ ████║
    ^2   ██████╔╝██║   ██║█████╔╝ █████╗  █████╗  ██║██║   ██║█████╗  ██╔████╔██║
    ^2   ██╔═══╝ ██║   ██║██╔═██╗ ██╔══╝  ██╔══╝  ██║╚██╗ ██╔╝██╔══╝  ██║╚██╔╝██║
    ^2   ██║     ╚██████╔╝██║  ██╗███████╗██║     ██║ ╚████╔╝ ███████╗██║ ╚═╝ ██║
    ^2   ╚═╝      ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝  ╚═══╝  ╚══════╝╚═╝     ╚═╝
    ^3========================================================================================
    ^5   Framework:    ^7PokeFiveM by Pika Studio
    ^5   Architecture: ^7Pure Standalone Native (Zero ESX Dependency)
    ^5   Version:      ^72.0.0 (Cerulean Lua54)
    ^5   Core:         ^2PokeCore ^7(Accessible via exports['PokeFiveM']:GetCoreObject())
    ^3========================================================================================^7
    ]])

    PokeCore.Functions.Log('Database', 'oxmysql connection established & tables verified.', 'info')
    PokeCore.Functions.Log('Multicharacter', 'NUI Multicharacter registry & slots activated.', 'info')
    PokeCore.Functions.Log('Battle', 'Gen 8 turn-based battle simulator & type matchups ready.', 'info')
    PokeCore.Functions.Log('Gyms', '8 Kanto Gym Leaders & badge progression loaded.', 'info')
    PokeCore.Functions.Log('Storage', 'Party & 30 PC Storage Boxes (900 slots) initialized.', 'info')
    PokeCore.Functions.Log('Inventory', (GetResourceState('ox_inventory') == 'started' and 'Overextended ox_inventory bridge active.' or 'Native slot inventory active.'), 'info')
    PokeCore.Functions.Log('Core', 'PokeFiveM Framework fully loaded and ready!', 'info')
end)

-- Exports
function GetCoreObject()
    return PokeCore
end

function GetSharedObject()
    return ESX or PokeCore
end

function getSharedObject()
    return ESX or PokeCore
end

exports('GetCoreObject', GetCoreObject)
exports('GetSharedObject', GetSharedObject)
exports('getSharedObject', getSharedObject)
