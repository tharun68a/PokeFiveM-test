-- ====================================================================
-- PokeFiveM Framework - Pokéball Throwing & Physics Engine
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

local isThrowing = false

-- Keybind for Throwing Pokéball
RegisterKeyMapping('pokethrow', Config.Controls.ThrowBallKeyDesc, 'keyboard', Config.Controls.ThrowBallKey)
RegisterCommand('pokethrow', function()
    if isThrowing or InBattle then return end
    InitiateBallThrow('pokeball')
end, false)

function InitiateBallThrow(ballKey)
    local playerPed = PlayerPedId()
    if IsPedInAnyVehicle(playerPed, false) then return end

    -- Check if player has the ball in inventory
    local count = 0
    if PokeCore.PlayerData and PokeCore.PlayerData.items then
        for _, it in ipairs(PokeCore.PlayerData.items) do
            if it.name == ballKey then
                count = count + it.count
            end
        end
    end

    if count <= 0 then
        PokeCore.Functions.Notify(_L('no_pokeballs'), 'error')
        return
    end

    isThrowing = true

    -- Request throwing animation
    local dict = "weapons@projectile@"
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do Wait(10) end

    -- Play throw animation
    TaskPlayAnim(playerPed, dict, "throw_m_fb_stand", 8.0, -8.0, 1000, 48, 0, false, false, false)
    Wait(350)

    -- Spawn ball prop in hand / position
    local coords = GetOffsetFromEntityInWorldCoords(playerPed, 0.2, 0.5, 0.6)
    local ballModel = `prop_tennis_ball`
    RequestModel(ballModel)
    while not HasModelLoaded(ballModel) do Wait(10) end

    local ballObj = CreateObject(ballModel, coords.x, coords.y, coords.z, true, true, false)
    SetEntityCollision(ballObj, true, true)

    -- Calculate throw vector towards camera direction
    local camRot = GetGameplayCamRot(2)
    local forward = RotationToDirection(camRot)
    local velocity = forward * (Config.Throwing.BallVelocity or 26.0)

    SetEntityVelocity(ballObj, velocity.x, velocity.y, velocity.z + (Config.Throwing.ThrowArcHeight or 2.0))

    -- Trajectory tracking thread
    CreateThread(function()
        local hitTarget = nil
        local startTime = GetGameTimer()

        while DoesEntityExist(ballObj) and (GetGameTimer() - startTime < 4000) do
            Wait(20)
            local ballCoords = GetEntityCoords(ballObj)

            -- Check proximity to any wild pokemon
            for wildId, wild in pairs(SpawnedWildPeds) do
                if DoesEntityExist(wild.entity) then
                    local targetCoords = GetEntityCoords(wild.entity)
                    local dist = #(ballCoords - targetCoords)
                    if dist < 1.4 then
                        hitTarget = wild
                        break
                    end
                end
            end

            if hitTarget then break end
        end

        if hitTarget then
            -- Ball hit wild pokemon
            TriggerEvent('pokefivem:client:notify', _L('ball_thrown', "Poké Ball"), 'info')
            ExecuteCaptureSequence(ballObj, hitTarget, ballKey)
        else
            -- Missed throw
            Wait(1500)
            if DoesEntityExist(ballObj) then DeleteEntity(ballObj) end
            isThrowing = false
        end
    end)
end

-- Capture Wobble Sequence on Ground
function ExecuteCaptureSequence(ballObj, wildEntry, ballKey)
    local targetPed = wildEntry.entity
    local wildData = wildEntry.data
    local wildCoords = GetEntityCoords(targetPed)

    -- Freeze target and make it vanish into ball
    ClearPedTasksImmediately(targetPed)
    SetEntityVisible(targetPed, false, false)

    -- Move ball directly to wild Pokemon position on ground
    SetEntityCoords(ballObj, wildCoords.x, wildCoords.y, wildCoords.z + 0.1, false, false, false, false)
    SetEntityVelocity(ballObj, 0.0, 0.0, 0.0)
    FreezeEntityPosition(ballObj, true)

    -- Calculate Catch on Client / Server Handshake
    local caught, shakes = PokeUtils.CalculateCatch(wildData, ballKey)

    -- Wobble animation simulation
    for i = 1, shakes do
        Wait(1000)
        SetEntityRotation(ballObj, 0.0, 18.0, 0.0, 2, true)
        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
        Wait(200)
        SetEntityRotation(ballObj, 0.0, -18.0, 0.0, 2, true)
        Wait(200)
        SetEntityRotation(ballObj, 0.0, 0.0, 0.0, 2, true)
    end

    Wait(800)

    if caught then
        PlaySoundFrontend(-1, "RACE_PLACED_FIRST", "HUD_AWARDS", true)
        TriggerEvent('pokefivem:client:notify', _L('pokemon_caught', wildData.name), 'success')

        -- Notify server to consume ball & award captured Pokemon
        TriggerServerEvent('pokefivem:server:captureWildFromThrow', wildData.wildId, ballKey)

        Wait(1500)
        if DoesEntityExist(ballObj) then DeleteEntity(ballObj) end
        if DoesEntityExist(targetPed) then DeleteEntity(targetPed) end
        SpawnedWildPeds[wildData.wildId] = nil
    else
        -- Broke free!
        SetEntityVisible(targetPed, true, false)
        PlaySoundFrontend(-1, "ERROR", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
        TriggerEvent('pokefivem:client:notify', _L('pokemon_escaped'), 'error')

        if DoesEntityExist(ballObj) then DeleteEntity(ballObj) end

        -- Immediately engage in battle!
        TriggerServerEvent('pokefivem:server:startWildBattle', wildData.wildId)
    end

    isThrowing = false
end

-- Helper: Convert Cam Rotation to Direction Vector
function RotationToDirection(rot)
    local z = math.rad(rot.z)
    local x = math.rad(rot.x)
    local num = math.abs(math.cos(x))
    return vector3(-math.sin(z) * num, math.cos(z) * num, math.sin(x))
end
