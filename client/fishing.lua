-- ====================================================================
-- PokeFiveM Framework - Client Water Fishing Engine
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

local isFishing = false
local fishingRodProp = nil
local waitingForBite = false

local function CleanUpFishing()
    isFishing = false
    waitingForBite = false
    local ped = PlayerPedId()
    ClearPedTasks(ped)
    if fishingRodProp and DoesEntityExist(fishingRodProp) then
        DeleteEntity(fishingRodProp)
        fishingRodProp = nil
    end
end

-- Check if player is facing water
local function IsFacingWater()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local fwd = GetEntityForwardVector(ped)
    local checkPos = coords + (fwd * 3.5)

    local retval, waterHeight = GetWaterHeight(checkPos.x, checkPos.y, checkPos.z)
    if retval and math.abs(coords.z - waterHeight) < 4.0 then
        return true, vector3(checkPos.x, checkPos.y, waterHeight)
    end
    return false, nil
end

RegisterNetEvent('pokefivem:client:startFishing', function(rodType)
    if isFishing then
        TriggerEvent('pokefivem:client:notify', "You are already fishing!", 'warning')
        return
    end

    local nearWater, waterPos = IsFacingWater()
    if not nearWater then
        TriggerEvent('pokefivem:client:notify', "You must face water to cast your fishing rod!", 'error')
        return
    end

    isFishing = true
    local ped = PlayerPedId()

    -- Attach Fishing Rod Prop
    local rodModel = `prop_fishing_rod_01`
    RequestModel(rodModel)
    while not HasModelLoaded(rodModel) do Wait(10) end

    fishingRodProp = CreateObject(rodModel, 0.0, 0.0, 0.0, true, true, false)
    AttachEntityToEntity(fishingRodProp, ped, GetPedBoneIndex(ped, 60309), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
    SetModelAsNoLongerNeeded(rodModel)

    -- Play Fishing Animation
    local animDict = "amb@world_human_stand_fishing@base"
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do Wait(10) end
    TaskPlayAnim(ped, animDict, "base", 4.0, -4.0, -1, 1, 0, false, false, false)

    TriggerEvent('pokefivem:client:notify', "Cast your line into the water... waiting for a bite.", 'info', 3000)

    -- Random bite timer (3.5 to 7.0 seconds)
    local waitSecs = math.random(3500, 7000)
    SetTimeout(waitSecs, function()
        if not isFishing then return end
        waitingForBite = true

        PlaySoundFrontend(-1, "Beep_Red", "DLC_HEIST_HACKING_SNAKE_SOUNDS", true)

        -- Minigame Reaction Window: 2.5 seconds to hit [E]
        local biteStart = GetGameTimer()
        local hooked = false

        while isFishing and waitingForBite and (GetGameTimer() - biteStart < 2500) do
            Wait(0)
            local pCoords = GetEntityCoords(ped)
            DrawText3D(pCoords.x, pCoords.y, pCoords.z + 1.15, "~r~[ ! ] OH! A BITE! Press ~y~[E]~r~ to Reel In! ~w~")

            if IsControlJustPressed(0, 38) then -- 38 = E
                hooked = true
                break
            end
        end

        waitingForBite = false

        if hooked then
            PlaySoundFrontend(-1, "BASE_JUMP_PASSED", "HUD_AWARDS", true)
            TriggerEvent('pokefivem:client:notify', "You reeled in a wild water Pokémon!", 'success', 3000)

            -- Reeling Animation
            TaskPlayAnim(ped, animDict, "idle_c", 4.0, -4.0, 2000, 1, 0, false, false, false)
            Wait(1500)
            CleanUpFishing()

            -- Trigger Encounter on Server
            TriggerServerEvent('pokefivem:server:fishingEncounter', rodType)
        else
            TriggerEvent('pokefivem:client:notify', "The Pokémon got away...", 'error', 3000)
            CleanUpFishing()
        end
    end)
end)

-- Cancel fishing on movement or damage
CreateThread(function()
    while true do
        Wait(500)
        if isFishing then
            local ped = PlayerPedId()
            if IsPedRagdoll(ped) or IsEntityDead(ped) or IsControlPressed(0, 32) or IsControlPressed(0, 33) then
                CleanUpFishing()
                TriggerEvent('pokefivem:client:notify', "Fishing cancelled.", 'info')
            end
        end
    end
end)
