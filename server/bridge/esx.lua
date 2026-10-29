-- ====================================================================
-- PokeFiveM Framework - ESX Compatibility Bridge (Server)
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- Seamlessly bridges community ESX scripts to PokeFiveM Core
-- ====================================================================

ESX = ESX or {}
ESX.Players = {}
ESX.Jobs = {}
ESX.Items = {}
ESX.ServerCallbacks = {}
ESX.UsableItemsCallbacks = {}

-- Export getSharedObject for exports['PokeFiveM']:GetSharedObject()
function GetSharedObject()
    return ESX
end

exports('GetSharedObject', function()
    return ESX
end)

exports('getSharedObject', function()
    return ESX
end)

-- Legacy Event Hook: TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
AddEventHandler('esx:getSharedObject', function(cb)
    if cb then cb(ESX) end
end)

-- ====================================================================
-- xPlayer Proxy Wrapper Class
-- ====================================================================
local function BuildESXxPlayer(src, pPlayer)
    if not pPlayer then return nil end

    local xPlayer = {}
    xPlayer.source = src
    xPlayer.citizenid = pPlayer.PlayerData.citizenid
    xPlayer.identifier = pPlayer.PlayerData.citizenid
    xPlayer.license = pPlayer.PlayerData.license or ""
    xPlayer.name = pPlayer.PlayerData.name or GetPlayerName(src) or "Trainer"
    xPlayer.group = "user"

    -- Cash & Accounts
    function xPlayer.getMoney()
        return pPlayer.Functions.GetMoney('cash')
    end

    function xPlayer.addMoney(amount, reason)
        return pPlayer.Functions.AddMoney('cash', amount, reason or "ESX Bridge")
    end

    function xPlayer.removeMoney(amount, reason)
        return pPlayer.Functions.RemoveMoney('cash', amount, reason or "ESX Bridge")
    end

    function xPlayer.setMoney(amount, reason)
        return pPlayer.Functions.SetMoney('cash', amount, reason or "ESX Bridge")
    end

    function xPlayer.getAccount(account)
        account = (account == 'money') and 'cash' or string.lower(account)
        local bal = pPlayer.Functions.GetMoney(account)
        return {
            name = account,
            money = bal,
            label = account:gsub("^%l", string.upper)
        }
    end

    function xPlayer.getAccounts()
        local accs = {}
        for accName, val in pairs(pPlayer.PlayerData.accounts or {}) do
            table.insert(accs, {
                name = accName,
                money = val,
                label = accName:gsub("^%l", string.upper)
            })
        end
        return accs
    end

    function xPlayer.addAccountMoney(account, amount, reason)
        account = (account == 'money') and 'cash' or string.lower(account)
        return pPlayer.Functions.AddMoney(account, amount, reason or "ESX Bridge")
    end

    function xPlayer.removeAccountMoney(account, amount, reason)
        account = (account == 'money') and 'cash' or string.lower(account)
        return pPlayer.Functions.RemoveMoney(account, amount, reason or "ESX Bridge")
    end

    function xPlayer.setAccountMoney(account, amount, reason)
        account = (account == 'money') and 'cash' or string.lower(account)
        return pPlayer.Functions.SetMoney(account, amount, reason or "ESX Bridge")
    end

    -- Inventory Management
    function xPlayer.getInventory(minimal)
        local inv = {}
        local pItems = pPlayer.PlayerData.items or {}
        for slot, item in pairs(pItems) do
            if item and item.name then
                table.insert(inv, {
                    name = item.name,
                    count = item.amount or 1,
                    label = item.label or item.name,
                    weight = item.weight or 0,
                    usable = item.useable or false,
                    rare = false,
                    canRemove = true
                })
            end
        end
        return inv
    end

    function xPlayer.getInventoryItem(name)
        local item = pPlayer.Functions.GetItemByName(name)
        if item then
            return {
                name = item.name,
                count = item.amount or 1,
                label = item.label or item.name,
                weight = item.weight or 0,
                usable = item.useable or false,
                rare = false,
                canRemove = true
            }
        end
        return {
            name = name,
            count = 0,
            label = name,
            weight = 0,
            usable = false,
            rare = false,
            canRemove = true
        }
    end

    function xPlayer.addInventoryItem(name, count, metadata)
        count = tonumber(count) or 1
        return pPlayer.Functions.AddItem(name, count, nil, metadata)
    end

    function xPlayer.removeInventoryItem(name, count)
        count = tonumber(count) or 1
        return pPlayer.Functions.RemoveItem(name, count)
    end

    function xPlayer.hasItem(name, count)
        local item = pPlayer.Functions.GetItemByName(name)
        if not item then return false end
        return (item.amount or 1) >= (count or 1)
    end

    -- Job & Permissions
    function xPlayer.getJob()
        local j = pPlayer.PlayerData.job or {}
        return {
            name = j.name or 'trainer',
            label = j.label or 'Pokémon Trainer',
            grade = j.grade or 0,
            grade_name = j.grade_name or 'Rookie Trainer',
            grade_label = j.grade_name or 'Rookie Trainer',
            grade_salary = j.payment or 75,
            onduty = j.onduty or true
        }
    end

    function xPlayer.setJob(name, grade)
        return pPlayer.Functions.SetJob(name, grade)
    end

    function xPlayer.getGroup()
        if IsPlayerAceAllowed(tostring(src), 'command') then
            return 'admin'
        end
        return 'user'
    end

    function xPlayer.setGroup(newGroup)
        xPlayer.group = newGroup
    end

    -- Coordinates & Ped Natives
    function xPlayer.getCoords(vector)
        local ped = GetPlayerPed(src)
        local coords = GetEntityCoords(ped)
        local heading = GetEntityHeading(ped)
        if vector then
            return coords
        end
        return { x = coords.x, y = coords.y, z = coords.z, heading = heading }
    end

    function xPlayer.setCoords(coords)
        local ped = GetPlayerPed(src)
        SetEntityCoords(ped, coords.x, coords.y, coords.z, false, false, false, false)
        if coords.w or coords.heading then
            SetEntityHeading(ped, coords.w or coords.heading)
        end
    end

    -- Messaging & Events
    function xPlayer.showNotification(msg, notifyType, length)
        TriggerClientEvent('pokefivem:client:notify', src, msg, notifyType or 'info', length or 4000)
    end

    function xPlayer.showHelpNotification(msg)
        TriggerClientEvent('pokefivem:client:notify', src, msg, 'info', 3000)
    end

    function xPlayer.triggerEvent(eventName, ...)
        TriggerClientEvent(eventName, src, ...)
    end

    return xPlayer
end

-- ====================================================================
-- ESX Core Server Functions
-- ====================================================================

function ESX.GetPlayers()
    local playerIds = {}
    for src, _ in pairs(PokeCore.Players or {}) do
        table.insert(playerIds, src)
    end
    return playerIds
end

function ESX.GetPlayerFromId(source)
    local src = tonumber(source)
    if not src then return nil end

    local pPlayer = PokeCore.Functions.GetPlayer(src)
    if not pPlayer then return nil end

    if not ESX.Players[src] then
        ESX.Players[src] = BuildESXxPlayer(src, pPlayer)
    end
    return ESX.Players[src]
end

function ESX.GetPlayerFromIdentifier(identifier)
    for src, pPlayer in pairs(PokeCore.Players or {}) do
        if pPlayer.PlayerData and (pPlayer.PlayerData.citizenid == identifier or pPlayer.PlayerData.license == identifier) then
            return ESX.GetPlayerFromId(src)
        end
    end
    return nil
end

function ESX.RegisterServerCallback(name, cb)
    PokeCore.Functions.CreateCallback(name, cb)
end

function ESX.RegisterUsableItem(item, cb)
    PokeCore.Functions.CreateUseableItem(item, cb)
end

function ESX.UseItem(source, item)
    PokeCore.Functions.UseItem(source, item)
end

function ESX.GetItem(item)
    return PokeCore.Shared.Items[item]
end

function ESX.GetItems()
    return PokeCore.Shared.Items
end

function ESX.GetJobs()
    return PokeCore.Shared.Jobs
end

-- ====================================================================
-- ESX Event Hooks (Lifecycle Synchronization)
-- ====================================================================

RegisterNetEvent('pokefivem:server:onPlayerLoaded', function(src)
    local source = src or source
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        TriggerEvent('esx:playerLoaded', source, xPlayer)
        PokeCore.Functions.Log('Bridge', string.format('ESX Bridge triggered esx:playerLoaded for [%d] %s', source, xPlayer.name), 'info')
    end
end)

AddEventHandler('playerDropped', function(reason)
    local src = source
    if ESX.Players[src] then
        TriggerEvent('esx:playerDropped', src, reason)
        ESX.Players[src] = nil
        PokeCore.Functions.Log('Bridge', string.format('ESX Bridge cleaned up xPlayer for [%d]', src), 'info')
    end
end)

PokeCore.Functions.Log('Bridge', 'PokeFiveM ESX Compatibility Bridge (Server) initialized.', 'info')
