-- ====================================================================
-- PokeFiveM Cinematic Battle & Camera Manager
-- Author: Pika Studio
-- ====================================================================

InBattle = false
CurrentBattle = nil
local battleCam = nil
local playerBattlePed = nil

-- Start Battle Triggered by Server
RegisterNetEvent('pokefivem:client:startBattle', function(data)
    InBattle = true
    CurrentBattle = data

    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local heading = GetEntityHeading(playerPed)

    -- Freeze player during battle
    FreezeEntityPosition(playerPed, true)

    -- Position player lead Pokemon
    local pData = GetPokedexEntry(data.lead.pokedex_id)
    local modelHash = (pData and pData.model) or `a_c_pug`

    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do Wait(10) end

    local forward = GetEntityForwardVector(playerPed)
    local leadCoords = coords + (forward * 2.2)

    playerBattlePed = CreatePed(28, modelHash, leadCoords.x, leadCoords.y, leadCoords.z, heading, false, true)
    SetEntityInvincible(playerBattlePed, true)
    SetBlockingOfNonTemporaryEvents(playerBattlePed, true)

    -- Create Battle Camera
    local camCoords = coords + vector3(-2.5, -2.5, 1.8)
    battleCam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
    SetCamCoord(battleCam, camCoords.x, camCoords.y, camCoords.z)
    PointCamAtCoord(battleCam, leadCoords.x + 2.0, leadCoords.y + 2.0, leadCoords.z)
    SetCamActive(battleCam, true)
    RenderScriptCams(true, true, 800, true, true)

    -- Open Battle NUI
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "openBattleUI",
        battleId = data.battleId,
        lead = data.lead,
        opponent = data.opponent
    })
end)

-- Execute Attack Animation & Damage Display
RegisterNetEvent('pokefivem:client:battleAnimation', function(data)
    SendNUIMessage({
        action = "battleLogEvent",
        data = data
    })

    if data.damage and data.damage > 0 then
        -- Play hit sound
        PlaySoundFrontend(-1, "BASE_JUMP_PASSED", "HUD_AWARDS", true)
    end
end)

-- Ball Throw Result Event in Battle
RegisterNetEvent('pokefivem:client:ballThrowResult', function(data)
    SendNUIMessage({
        action = "battleBallThrow",
        ballKey = data.ballKey,
        shakes = data.shakes,
        caught = data.caught
    })
end)

-- Next Turn Sync
RegisterNetEvent('pokefivem:client:nextTurn', function(turnNum)
    SendNUIMessage({
        action = "nextTurn",
        turn = turnNum
    })
end)

-- Battle Ended
RegisterNetEvent('pokefivem:client:battleEnded', function(data)
    InBattle = false
    SetNuiFocus(false, false)

    SendNUIMessage({
        action = "battleEnded",
        reason = data.reason,
        message = data.message,
        expGained = data.expGained
    })

    -- Camera cleanup
    if battleCam then
        RenderScriptCams(false, true, 800, true, true)
        DestroyCam(battleCam, false)
        battleCam = nil
    end

    -- Delete battle ped
    if playerBattlePed and DoesEntityExist(playerBattlePed) then
        DeleteEntity(playerBattlePed)
        playerBattlePed = nil
    end

    local playerPed = PlayerPedId()
    FreezeEntityPosition(playerPed, false)
    CurrentBattle = nil
end)

-- Player Blackout
RegisterNetEvent('pokefivem:client:playerBlackout', function()
    DoScreenFadeOut(1000)
    Wait(1200)

    -- Teleport to nearest PokéCenter
    local center = Config.PokeCenters[1]
    local ped = PlayerPedId()
    SetEntityCoords(ped, center.coords.x, center.coords.y, center.coords.z, false, false, false, false)
    SetEntityHeading(ped, center.heading)

    TriggerServerEvent('pokefivem:server:healTeam')
    Wait(1500)
    DoScreenFadeIn(1000)
end)

-- NUI Battle Callback
RegisterNUICallback('battleAction', function(data, cb)
    if CurrentBattle then
        TriggerServerEvent('pokefivem:server:battleAction', CurrentBattle.battleId, data.actionType, data)
    end
    cb('ok')
end)

