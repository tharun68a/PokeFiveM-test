-- ====================================================================
-- PokeFiveM Framework - Client Multicharacter & Ped Preview Controller
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

local charCam = nil
local inCharSelect = false
local previewPed = nil
local previewCompanion = nil
local hasOpenedMultichar = false
local isPlayerLoaded = false

-- Disable auto-spawn from spawnmanager
AddEventHandler('onClientResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        pcall(function()
            if exports.spawnmanager then
                exports.spawnmanager:setAutoSpawn(false)
            end
        end)
    end
end)

-- Safe Cleanup for Preview Entities
local function CleanUpPreviewEntities()
    if previewPed and DoesEntityExist(previewPed) then
        DeleteEntity(previewPed)
        previewPed = nil
    end
    if previewCompanion and DoesEntityExist(previewCompanion) then
        DeleteEntity(previewCompanion)
        previewCompanion = nil
    end
end

-- Spawn or Update 3D Character Preview Ped in Front of Camera
local function SpawnOrUpdatePreviewPed(gender, style, leadPokedexId)
    CleanUpPreviewEntities()

    local pedCoords = (Config.Multicharacter and Config.Multicharacter.PedPreviewCoords) or vector4(-1393.12, -592.34, 30.32, 35.0)
    RequestCollisionAtCoord(pedCoords.x, pedCoords.y, pedCoords.z)

    gender = tonumber(gender) or 0
    local modelName = (gender == 1) and "mp_f_freemode_01" or "mp_m_freemode_01"
    local modelHash = GetHashKey(modelName)

    RequestModel(modelHash)
    local timeout = GetGameTimer() + 3500
    while not HasModelLoaded(modelHash) and GetGameTimer() < timeout do
        Wait(50)
    end

    if HasModelLoaded(modelHash) then
        previewPed = CreatePed(4, modelHash, pedCoords.x, pedCoords.y, pedCoords.z, pedCoords.w, false, true)
        SetEntityHeading(previewPed, pedCoords.w)
        SetEntityInvincible(previewPed, true)
        SetBlockingOfNonTemporaryEvents(previewPed, true)
        FreezeEntityPosition(previewPed, true) -- Kept frozen so it never falls into the void
        SetEntityCanBeDamaged(previewPed, false)
        SetEntityVisible(previewPed, true, false)
        ResetEntityAlpha(previewPed)

        -- Apply complete Trainer Outfit (Face, Hair, Drawables, Textures, Hats/Caps, Bags)
        if PokeCore.Functions and PokeCore.Functions.ApplyTrainerOutfit then
            PokeCore.Functions.ApplyTrainerOutfit(previewPed, style, gender)
        elseif ApplyTrainerOutfit then
            ApplyTrainerOutfit(previewPed, style, gender)
        end

        -- Play confident trainer stance animation
        local animDict = "move_m@confident"
        RequestAnimDict(animDict)
        local aTimeout = GetGameTimer() + 2000
        while not HasAnimDictLoaded(animDict) and GetGameTimer() < aTimeout do
            Wait(50)
        end
        if HasAnimDictLoaded(animDict) then
            TaskPlayAnim(previewPed, animDict, "idle", 8.0, -8.0, -1, 1, 0, false, false, false)
        end
        SetModelAsNoLongerNeeded(modelHash)
    end

    -- If a lead Pokémon exists for this character, spawn companion beside the trainer
    if leadPokedexId then
        local pData = GetPokedexEntry(leadPokedexId)
        if pData then
            local monHash = GetPokemonModel(leadPokedexId)
            RequestModel(monHash)
            local mTimeout = GetGameTimer() + 2500
            while not HasModelLoaded(monHash) and GetGameTimer() < mTimeout do
                Wait(50)
            end
            if HasModelLoaded(monHash) then
                local compCoords = vector3(pedCoords.x + 0.8, pedCoords.y - 0.2, pedCoords.z)
                previewCompanion = CreatePed(4, monHash, compCoords.x, compCoords.y, compCoords.z, pedCoords.w, false, true)
                SetEntityHeading(previewCompanion, pedCoords.w)
                SetEntityInvincible(previewCompanion, true)
                SetBlockingOfNonTemporaryEvents(previewCompanion, true)
                FreezeEntityPosition(previewCompanion, true)
                SetEntityVisible(previewCompanion, true, false)
                ResetEntityAlpha(previewCompanion)
                SetModelAsNoLongerNeeded(monHash)
            end
        end
    end
end

-- Initialize Multicharacter on Session Start
CreateThread(function()
    while not NetworkIsSessionActive() do Wait(250) end
    Wait(500)

    pcall(function()
        if exports.spawnmanager then
            exports.spawnmanager:setAutoSpawn(false)
            -- Pre-register safe spawn point to prevent any "tried to spawn at an invalid spawn index" error
            local def = (Config.Player and Config.Player.DefaultSpawn) or vector4(298.54, -584.43, 43.26, 75.0)
            exports.spawnmanager:addSpawnPoint({
                x = def.x,
                y = def.y,
                z = def.z,
                heading = def.w or 75.0,
                model = `mp_m_freemode_01`,
                skipFade = true
            })
        end
    end)

    if Config.Multicharacter and Config.Multicharacter.Enabled then
        local camCoords = Config.Multicharacter.CameraCoords or vector4(-1392.21, -590.45, 30.32, 210.0)

        local hasSpawned = false
        pcall(function()
            if exports.spawnmanager then
                exports.spawnmanager:spawnPlayer({
                    x = camCoords.x,
                    y = camCoords.y,
                    z = camCoords.z,
                    heading = camCoords.w,
                    model = `mp_m_freemode_01`,
                    skipFade = true
                }, function()
                    hasSpawned = true
                    ShutdownLoadingScreen()
                    ShutdownLoadingScreenNui()
                    TriggerEvent('pokefivem:client:openMulticharacter')
                end)
            end
        end)

        -- Fallback if spawnmanager is missing or delayed
        SetTimeout(2000, function()
            if not hasSpawned then
                local ped = PlayerPedId()
                SetEntityCoords(ped, camCoords.x, camCoords.y, camCoords.z - 1.0, false, false, false, false)
                FreezeEntityPosition(ped, true)
                SetEntityVisible(ped, false, false)
                ShutdownLoadingScreen()
                ShutdownLoadingScreenNui()
                TriggerEvent('pokefivem:client:openMulticharacter')
            end
        end)
    else
        ShutdownLoadingScreen()
        ShutdownLoadingScreenNui()
        TriggerServerEvent('pokefivem:server:playerLoaded')
    end
end)

-- Open Multicharacter Selection Interface
RegisterNetEvent('pokefivem:client:openMulticharacter', function()
    if hasOpenedMultichar or isPlayerLoaded then return end
    hasOpenedMultichar = true

    ShutdownLoadingScreen()
    ShutdownLoadingScreenNui()
    inCharSelect = true
    local ped = PlayerPedId()

    -- Setup Cinematic Camera
    DoScreenFadeOut(0)

    local camCoords = Config.Multicharacter.CameraCoords or vector4(-1392.21, -590.45, 30.32, 210.0)
    local pedCoords = (Config.Multicharacter and Config.Multicharacter.PedPreviewCoords) or vector4(-1393.12, -592.34, 30.32, 35.0)

    SetEntityCoords(ped, camCoords.x, camCoords.y, camCoords.z - 1.0, false, false, false, false)
    FreezeEntityPosition(ped, true)
    SetEntityVisible(ped, false, false)

    if not charCam then
        charCam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
        SetCamCoord(charCam, camCoords.x, camCoords.y, camCoords.z + 1.2)
        SetCamRot(charCam, -5.0, 0.0, camCoords.w, 2)
        PointCamAtCoord(charCam, pedCoords.x, pedCoords.y, pedCoords.z + 0.9)
        SetCamFov(charCam, 48.0)
        SetCamActive(charCam, true)
        RenderScriptCams(true, false, 0, true, true)
    else
        PointCamAtCoord(charCam, pedCoords.x, pedCoords.y, pedCoords.z + 0.9)
        SetCamFov(charCam, 48.0)
    end

    -- Dynamic Studio Key & Rim Lighting Thread for Ped Presentation
    CreateThread(function()
        while inCharSelect do
            -- Studio key light in front of ped
            DrawLightWithRange(pedCoords.x + 0.5, pedCoords.y + 0.8, pedCoords.z + 1.2, 245, 250, 255, 5.0, 2.2)
            -- Subtle warm rim light behind ped
            DrawLightWithRange(pedCoords.x - 0.6, pedCoords.y - 0.7, pedCoords.z + 1.4, 255, 220, 160, 4.0, 1.4)
            Wait(0)
        end
    end)

    -- Request Characters from Server
    PokeCore.Functions.TriggerCallback('pokefivem:multichar:getCharacters', function(characters)
        local defaultGender = 0
        local defaultStyle = 'red'
        local defaultLeadId = nil

        if characters and #characters > 0 then
            local first = characters[1]
            defaultGender = (first.charinfo and first.charinfo.gender) or 0
            defaultStyle = (first.charinfo and first.charinfo.style) or (defaultGender == 1 and 'leaf' or 'red')
            if first.leadPokemon then
                defaultLeadId = first.leadPokemon.pokedex_id
            end
        end

        -- Spawn initial preview ped
        SpawnOrUpdatePreviewPed(defaultGender, defaultStyle, defaultLeadId)

        SetNuiFocus(true, true)
        SendNUIMessage({
            action = 'openMulticharacter',
            characters = characters or {},
            maxSlots = (Config.Multicharacter and Config.Multicharacter.MaxSlots) or 4,
            starters = Config.StarterPokemon or {},
            outfits = PokeCore.Shared.TrainerOutfits or {}
        })

        DoScreenFadeIn(800)
    end)
end)

-- Spawn Selected Character Handler
RegisterNetEvent('pokefivem:client:spawnSelectedCharacter', function(playerData)
    hasOpenedMultichar = true
    isPlayerLoaded = true
    inCharSelect = false
    CleanUpPreviewEntities()

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

    local charinfo = playerData.charinfo or {}
    local gender = tonumber(charinfo.gender) or 0
    local targetModel = (gender == 1) and `mp_f_freemode_01` or `mp_m_freemode_01`

    -- Apply target gender model if different
    RequestModel(targetModel)
    local tTimeout = GetGameTimer() + 5000
    while not HasModelLoaded(targetModel) and GetGameTimer() < tTimeout do
        Wait(50)
    end
    if HasModelLoaded(targetModel) then
        SetPlayerModel(PlayerId(), targetModel)
        SetModelAsNoLongerNeeded(targetModel)
    end

    local ped = PlayerPedId()
    SetPedDefaultComponentVariation(ped)
    SetPedHeadBlendData(ped, 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0.0, false)

    -- Apply Trainer Outfit to player ped
    local style = charinfo.style or (gender == 1 and 'leaf' or 'red')
    if PokeCore.Functions and PokeCore.Functions.ApplyTrainerOutfit then
        PokeCore.Functions.ApplyTrainerOutfit(ped, style, gender)
    elseif ApplyTrainerOutfit then
        ApplyTrainerOutfit(ped, style, gender)
    end

    -- Determine safe spawn coordinates
    local defSpawn = (Config.Player and Config.Player.DefaultSpawn) or vector4(298.54, -584.43, 43.26, 75.0)
    local pos = playerData.position
    local spawnX = (pos and tonumber(pos.x)) or defSpawn.x
    local spawnY = (pos and tonumber(pos.y)) or defSpawn.y
    local spawnZ = (pos and tonumber(pos.z)) or defSpawn.z
    local spawnH = (pos and tonumber(pos.heading or pos.w)) or (defSpawn.w or 75.0)

    -- If coords are invalid or empty table, fallback to default spawn
    if (spawnX == 0 and spawnY == 0 and spawnZ == 0) or spawnX == nil or spawnY == nil or spawnZ == nil then
        spawnX, spawnY, spawnZ, spawnH = defSpawn.x, defSpawn.y, defSpawn.z, (defSpawn.w or 75.0)
    end

    RequestCollisionAtCoord(spawnX, spawnY, spawnZ)
    SetEntityCoordsNoOffset(ped, spawnX, spawnY, spawnZ, false, false, false)
    SetEntityHeading(ped, spawnH)
    FreezeEntityPosition(ped, false)
    SetEntityVisible(ped, true, false)
    ResetEntityAlpha(ped)
    SetEntityInvincible(ped, false)
    ClearPedTasksImmediately(ped)

    DoScreenFadeIn(1000)
end)

-- Player Logout Event
RegisterNetEvent('pokefivem:client:onPlayerLogout', function()
    hasOpenedMultichar = false
    isPlayerLoaded = false
    LocalPlayer.state:set('isLoggedIn', false, false)
    local ped = PlayerPedId()
    FreezeEntityPosition(ped, true)
    SetEntityVisible(ped, false, false)
end)

-- ====================================================================
-- NUI Callbacks
-- ====================================================================

-- Select Character
RegisterNUICallback('selectCharacter', function(data, cb)
    if data and data.citizenid then
        TriggerServerEvent('pokefivem:server:selectCharacter', data.citizenid)
    end
    cb('ok')
end)

-- Create New Character
RegisterNUICallback('createCharacter', function(data, cb)
    if data then
        TriggerServerEvent('pokefivem:server:createCharacter', data)
    end
    cb('ok')
end)

-- Delete Character
RegisterNUICallback('deleteCharacter', function(data, cb)
    if data and data.citizenid then
        TriggerServerEvent('pokefivem:server:deleteCharacter', data.citizenid)
    end
    cb('ok')
end)

-- Preview Character (When clicking or hovering over a character slot)
RegisterNUICallback('previewCharacter', function(data, cb)
    if not inCharSelect then cb('ok') return end
    if data and data.char then
        local c = data.char
        local gender = (c.charinfo and c.charinfo.gender) or 0
        local style = (c.charinfo and c.charinfo.style) or (gender == 1 and 'leaf' or 'red')
        local leadId = c.leadPokemon and c.leadPokemon.pokedex_id or nil
        SpawnOrUpdatePreviewPed(gender, style, leadId)
    else
        -- Empty slot preview (Default trainer)
        local gender = (data and data.gender) or 0
        local style = (gender == 1) and 'leaf' or 'red'
        SpawnOrUpdatePreviewPed(gender, style, nil)
    end
    cb('ok')
end)

-- Preview Style (When user changes gender or clicks an outfit in registration modal)
RegisterNUICallback('previewStyle', function(data, cb)
    if not inCharSelect then cb('ok') return end
    local gender = (data and tonumber(data.gender)) or 0
    local style = (data and data.style) or (gender == 1 and 'leaf' or 'red')
    SpawnOrUpdatePreviewPed(gender, style, nil)
    cb('ok')
end)

-- Rotate Preview Ped
RegisterNUICallback('rotatePed', function(data, cb)
    if previewPed and DoesEntityExist(previewPed) then
        local currentHeading = GetEntityHeading(previewPed)
        local diff = (data and tonumber(data.diff)) or 20.0
        SetEntityHeading(previewPed, (currentHeading + diff) % 360.0)
    end
    cb('ok')
end)

-- Toggle Camera Zoom (Full Body vs Close-Up Face)
local isZoomedIn = false
RegisterNUICallback('toggleCameraZoom', function(data, cb)
    if not charCam or not inCharSelect then cb('ok') return end
    isZoomedIn = not isZoomedIn

    local pedCoords = (Config.Multicharacter and Config.Multicharacter.PedPreviewCoords) or vector4(-1393.12, -592.34, 30.32, 35.0)
    local camCoords = Config.Multicharacter.CameraCoords or vector4(-1392.21, -590.45, 30.32, 210.0)

    if isZoomedIn then
        SetCamFov(charCam, 30.0)
        PointCamAtCoord(charCam, pedCoords.x, pedCoords.y, pedCoords.z + 1.6)
    else
        SetCamFov(charCam, 48.0)
        PointCamAtCoord(charCam, pedCoords.x, pedCoords.y, pedCoords.z + 0.9)
    end
    cb('ok')
end)

-- Reset Ped Heading
RegisterNUICallback('resetPedHeading', function(data, cb)
    if previewPed and DoesEntityExist(previewPed) then
        local pedCoords = (Config.Multicharacter and Config.Multicharacter.PedPreviewCoords) or vector4(-1393.12, -592.34, 30.32, 35.0)
        SetEntityHeading(previewPed, pedCoords.w)
    end
    cb('ok')
end)

-- Studio Lighting during Character Preview
CreateThread(function()
    while true do
        if inCharSelect then
            local pedCoords = (Config.Multicharacter and Config.Multicharacter.PedPreviewCoords) or vector4(-1393.12, -592.34, 30.32, 35.0)
            DrawLightWithRange(pedCoords.x, pedCoords.y + 0.6, pedCoords.z + 1.2, 255, 255, 255, 6.0, 2.2)
            Wait(0)
        else
            Wait(1000)
        end
    end
end)

-- In-Game Command: /trainer or /outfit (Change outfit on the fly)
RegisterCommand('trainer', function(source, args)
    local styleArg = args[1] and string.lower(args[1])
    local ped = PlayerPedId()
    local isFemale = (GetEntityModel(ped) == `mp_f_freemode_01`)
    local gender = isFemale and 1 or 0

    if styleArg and PokeCore.Shared.TrainerOutfits[styleArg] then
        local outfit = PokeCore.Shared.TrainerOutfits[styleArg]
        -- If model differs, switch model first
        local targetModel = (outfit.gender == 1) and `mp_f_freemode_01` or `mp_m_freemode_01`
        if GetEntityModel(ped) ~= targetModel then
            RequestModel(targetModel)
            while not HasModelLoaded(targetModel) do Wait(50) end
            SetPlayerModel(PlayerId(), targetModel)
            SetModelAsNoLongerNeeded(targetModel)
            ped = PlayerPedId()
        end
        PokeCore.Functions.ApplyTrainerOutfit(ped, styleArg, outfit.gender)
        PokeCore.Functions.Notify(string.format('Equipped %s outfit!', outfit.label), 'success')
    else
        -- Print available styles
        local list = {}
        for k, v in pairs(PokeCore.Shared.TrainerOutfits) do
            table.insert(list, k)
        end
        PokeCore.Functions.Notify('Usage: /trainer [' .. table.concat(list, ', ') .. ']', 'info')
    end
end, false)
