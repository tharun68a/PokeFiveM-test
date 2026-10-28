-- ====================================================================
-- PokeFiveM Framework - Client Multicharacter Controller
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

local charCam = nil
local inCharSelect = false

-- Initialize Multicharacter on Session Start
CreateThread(function()
    while not NetworkIsSessionActive() do Wait(250) end
    Wait(500)

    if Config.Multicharacter and Config.Multicharacter.Enabled then
        TriggerEvent('pokefivem:client:openMulticharacter')
    else
        TriggerServerEvent('pokefivem:server:playerLoaded')
    end
end)

-- Open Multicharacter Selection Interface
RegisterNetEvent('pokefivem:client:openMulticharacter', function()
    inCharSelect = true
    local ped = PlayerPedId()

    -- Setup Cinematic Camera
    DoScreenFadeOut(300)
    while not IsScreenFadedOut() do Wait(10) end

    local camCoords = Config.Multicharacter.CameraCoords or vector4(-1392.21, -590.45, 30.32, 210.0)
    SetEntityCoords(ped, camCoords.x, camCoords.y, camCoords.z - 1.0, false, false, false, false)
    FreezeEntityPosition(ped, true)
    SetEntityVisible(ped, false, false)

    if not charCam then
        charCam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
        SetCamCoord(charCam, camCoords.x, camCoords.y, camCoords.z + 1.2)
        SetCamRot(charCam, -5.0, 0.0, camCoords.w, 2)
        SetCamActive(charCam, true)
        RenderScriptCams(true, false, 0, true, true)
    end

    -- Request Characters from Server
    PokeCore.Functions.TriggerCallback('pokefivem:multichar:getCharacters', function(characters)
        SetNuiFocus(true, true)
        SendNUIMessage({
            action = 'openMulticharacter',
            characters = characters or {},
            maxSlots = (Config.Multicharacter and Config.Multicharacter.MaxSlots) or 4,
            starters = Config.StarterPokemon or {}
        })

        DoScreenFadeIn(800)
    end)
end)

-- Spawn Selected Character Handler
RegisterNetEvent('pokefivem:client:spawnSelectedCharacter', function(playerData)
    inCharSelect = false
    local ped = PlayerPedId()

    -- Close NUI
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = 'closeMulticharacter'
    })

    -- Destroy Camera
    if charCam then
        RenderScriptCams(false, true, 800, true, true)
        DestroyCam(charCam, false)
        charCam = nil
    end

    local pos = playerData.position or Config.Player.DefaultSpawn
    SetEntityCoords(ped, pos.x, pos.y, pos.z, false, false, false, false)
    SetEntityHeading(ped, pos.heading or 75.0)
    FreezeEntityPosition(ped, false)
    SetEntityVisible(ped, true, false)
    SetEntityInvincible(ped, false)

    DoScreenFadeIn(1000)
end)

-- Player Logout Event
RegisterNetEvent('pokefivem:client:onPlayerLogout', function()
    local ped = PlayerPedId()
    FreezeEntityPosition(ped, true)
    SetEntityVisible(ped, false, false)
end)

-- ====================================================================
-- NUI Callbacks
-- ====================================================================

RegisterNUICallback('selectCharacter', function(data, cb)
    if data and data.citizenid then
        TriggerServerEvent('pokefivem:server:selectCharacter', data.citizenid)
    end
    cb('ok')
end)

RegisterNUICallback('createCharacter', function(data, cb)
    if data then
        TriggerServerEvent('pokefivem:server:createCharacter', data)
    end
    cb('ok')
end)

RegisterNUICallback('deleteCharacter', function(data, cb)
    if data and data.citizenid then
        TriggerServerEvent('pokefivem:server:deleteCharacter', data.citizenid)
    end
    cb('ok')
end)
