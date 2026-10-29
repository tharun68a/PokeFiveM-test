-- ====================================================================
-- PokeFiveM Framework - ESX Compatibility Bridge (Client)
-- Developed by: Pika Studio
-- Allows any community ESX resource to seamlessly run on PokeFiveM
-- ====================================================================

ESX = ESX or {}
ESX.PlayerData = {}
ESX.UI = { Menu = {} }
ESX.Game = {}

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

-- Core ESX Client Methods
function ESX.GetPlayerData()
    return PokeCore.PlayerData or {}
end

function ESX.SetPlayerData(key, val)
    if PokeCore.PlayerData then
        PokeCore.PlayerData[key] = val
    end
end

function ESX.IsPlayerLoaded()
    return PokeCore.Functions.IsPlayerLoaded()
end

function ESX.ShowNotification(msg, notifyType, length)
    PokeCore.Functions.Notify(msg, notifyType or 'info', length or 4000)
end

function ESX.ShowHelpNotification(msg, thisFrame, beep, duration)
    AddTextEntry('PokeFiveM_HelpNotification', msg)
    BeginTextCommandDisplayHelp('PokeFiveM_HelpNotification')
    EndTextCommandDisplayHelp(0, false, (beep == nil and true or beep), duration or -1)
end

function ESX.ShowFloatingHelpNotification(msg, coords)
    AddTextEntry('PokeFiveM_FloatingHelp', msg)
    SetFloatingHelpTextWorldPosition(1, coords.x, coords.y, coords.z)
    SetFloatingHelpTextStyle(1, 1, 2, -1, 3, 0)
    BeginTextCommandDisplayHelp('PokeFiveM_FloatingHelp')
    EndTextCommandDisplayHelp(2, false, false, -1)
end

function ESX.TriggerServerCallback(name, cb, ...)
    PokeCore.Functions.TriggerCallback(name, cb, ...)
end

-- ====================================================================
-- ESX.Game Helpers
-- ====================================================================

function ESX.Game.GetPlayers()
    local players = {}
    for _, player in ipairs(GetActivePlayers()) do
        table.insert(players, player)
    end
    return players
end

function ESX.Game.GetClosestPlayer(coords)
    local players = ESX.Game.GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local myCoords = coords or GetEntityCoords(PlayerPedId())

    for _, playerId in ipairs(players) do
        if playerId ~= PlayerId() then
            local targetPed = GetPlayerPed(playerId)
            local targetCoords = GetEntityCoords(targetPed)
            local distance = #(myCoords - targetCoords)

            if closestDistance == -1 or distance < closestDistance then
                closestPlayer = playerId
                closestDistance = distance
            end
        end
    end

    return closestPlayer, closestDistance
end

function ESX.Game.GetClosestVehicle(coords)
    local pCoords = coords or GetEntityCoords(PlayerPedId())
    local vehicles = GetGamePool('CVehicle')
    local closestDist = -1
    local closestVeh = -1

    for _, veh in ipairs(vehicles) do
        local vCoords = GetEntityCoords(veh)
        local dist = #(pCoords - vCoords)
        if closestDist == -1 or dist < closestDist then
            closestVeh = veh
            closestDist = dist
        end
    end

    return closestVeh, closestDist
end

function ESX.Game.GetClosestPed(coords, ignoreList)
    ignoreList = ignoreList or {}
    local pCoords = coords or GetEntityCoords(PlayerPedId())
    local peds = GetGamePool('CPed')
    local closestDist = -1
    local closestPed = -1

    for _, ped in ipairs(peds) do
        local isIgnored = false
        for _, ig in ipairs(ignoreList) do
            if ped == ig then isIgnored = true break end
        end

        if not isIgnored and ped ~= PlayerPedId() then
            local vCoords = GetEntityCoords(ped)
            local dist = #(pCoords - vCoords)
            if closestDist == -1 or dist < closestDist then
                closestPed = ped
                closestDist = dist
            end
        end
    end

    return closestPed, closestDist
end

function ESX.Game.SpawnVehicle(modelName, coords, heading, cb, isNetwork)
    local model = (type(modelName) == 'number') and modelName or GetHashKey(modelName)
    CreateThread(function()
        RequestModel(model)
        while not HasModelLoaded(model) do Wait(50) end
        local veh = CreateVehicle(model, coords.x, coords.y, coords.z, heading or 0.0, (isNetwork == nil and true or isNetwork), false)
        SetModelAsNoLongerNeeded(model)
        if cb then cb(veh) end
    end)
end

function ESX.Game.DeleteVehicle(vehicle)
    SetEntityAsMissionEntity(vehicle, true, true)
    DeleteVehicle(vehicle)
end

function ESX.Game.Teleport(entity, coords, cb)
    if DoesEntityExist(entity) then
        RequestCollisionAtCoord(coords.x, coords.y, coords.z)
        SetEntityCoords(entity, coords.x, coords.y, coords.z, false, false, false, false)
        if type(coords) == 'vector4' then
            SetEntityHeading(entity, coords.w)
        end
        if cb then cb() end
    end
end

-- ====================================================================
-- ESX Event Bridges (Sync PokeCore to ESX ecosystem)
-- ====================================================================

local function FormatESXPlayerData(pData)
    if not pData then return {} end
    local cash = (pData.accounts and pData.accounts.cash) or 0
    local bank = (pData.accounts and pData.accounts.bank) or 0
    local pokedollars = (pData.accounts and pData.accounts.pokedollars) or 0

    return {
        identifier = pData.citizenid,
        citizenid = pData.citizenid,
        name = pData.name or "Trainer",
        accounts = {
            { name = 'money', label = 'Cash', money = cash },
            { name = 'bank', label = 'Bank', money = bank },
            { name = 'pokedollars', label = 'Pokédollars', money = pokedollars }
        },
        money = cash,
        job = {
            name = (pData.job and pData.job.name) or 'trainer',
            label = (pData.job and pData.job.label) or 'Pokémon Trainer',
            grade = (pData.job and pData.job.grade) or 0,
            grade_name = (pData.job and pData.job.grade_name) or 'Rookie Trainer',
            grade_label = (pData.job and pData.job.grade_name) or 'Rookie Trainer',
            grade_salary = (pData.job and pData.job.payment) or 75,
            onduty = (pData.job and pData.job.onduty) or true
        },
        inventory = pData.items or {},
        loadout = {},
        coords = pData.position or vector3(0, 0, 0)
    }
end

RegisterNetEvent('pokefivem:client:onPlayerLoaded', function(playerData)
    ESX.PlayerData = FormatESXPlayerData(playerData)
    TriggerEvent('esx:playerLoaded', ESX.PlayerData)
    TriggerEvent('esx:setJob', ESX.PlayerData.job)
end)

RegisterNetEvent('pokefivem:client:onPlayerLogout', function()
    ESX.PlayerData = {}
    TriggerEvent('esx:onPlayerLogout')
end)

RegisterNetEvent('pokefivem:client:onJobUpdate', function(job)
    if ESX.PlayerData then
        ESX.PlayerData.job = job
        TriggerEvent('esx:setJob', job)
    end
end)

RegisterNetEvent('pokefivem:client:onMoneyChange', function(account, amount, action, balance)
    if ESX.PlayerData and ESX.PlayerData.accounts then
        for _, acc in ipairs(ESX.PlayerData.accounts) do
            if acc.name == account or (account == 'cash' and acc.name == 'money') then
                acc.money = balance
                TriggerEvent('esx:setAccountMoney', acc)
                break
            end
        end
    end
end)

RegisterNetEvent('pokefivem:client:notify', function(message, type, length)
    TriggerEvent('esx:showNotification', message)
end)
