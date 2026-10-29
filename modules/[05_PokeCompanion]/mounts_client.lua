-- ====================================================================
-- PokeFiveM Mount Engine (Ground Riding, Water Surfing & Sky Flight)
-- Author: Pika Studio
-- ====================================================================

local activeMountPed = nil
local isMounted = false
local mountType = nil -- 'ground', 'surf', 'fly'

RegisterCommand('mount', function()
    if isMounted then
        DismountPokemon()
    else
        MountLeadPokemon()
    end
end, false)

function MountLeadPokemon()
    local party = PlayerParty or (PokeCore.PlayerData and PokeCore.PlayerData.pokemon) or {}
    if #party == 0 then return end
    local lead = party[1]
    if not lead or (lead.current_hp and lead.current_hp <= 0) or lead.status == "fainted" then
        TriggerEvent('pokefivem:client:notify', "Your lead Pokémon is fainted!", 'error')
        return
    end

    local pId = lead.pokedex_id
    local groundCfg = Config.Mounts.GroundRiders[pId]
    local surfCfg = Config.Mounts.Surfers[pId]
    local flyCfg = Config.Mounts.Flyers[pId]

    if not groundCfg and not surfCfg and not flyCfg then
        TriggerEvent('pokefivem:client:notify', _L('cant_ride'), 'error')
        return
    end

    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local heading = GetEntityHeading(playerPed)

    local pData = GetPokedexEntry(pId)
    local modelHash = (pData and pData.model) or `a_c_retriever`

    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do Wait(10) end

    activeMountPed = CreatePed(28, modelHash, coords.x, coords.y, coords.z, heading, true, true)
    SetModelAsNoLongerNeeded(modelHash)

    SetEntityInvincible(activeMountPed, true)
    SetBlockingOfNonTemporaryEvents(activeMountPed, true)

    -- Attach player to mount
    AttachEntityToEntity(playerPed, activeMountPed, 0, 0.0, 0.0, 0.75, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
    SetPedCanRagdoll(playerPed, false)

    isMounted = true

    if flyCfg then
        mountType = 'fly'
        StartFlightLoop(flyCfg)
    elseif surfCfg then
        mountType = 'surf'
        StartSurfLoop(surfCfg)
    else
        mountType = 'ground'
        StartGroundRideLoop(groundCfg)
    end

    TriggerEvent('pokefivem:client:notify', string.format('Mounted %s! Use /mount to dismount.', lead.nickname or pData.name), 'success')
end

function DismountPokemon()
    if not isMounted then return end
    local playerPed = PlayerPedId()

    DetachEntity(playerPed, true, true)
    ClearPedTasksImmediately(playerPed)

    if activeMountPed and DoesEntityExist(activeMountPed) then
        DeleteEntity(activeMountPed)
        activeMountPed = nil
    end

    isMounted = false
    mountType = nil
    TriggerEvent('pokefivem:client:notify', "Dismounted.", 'info')
end

-- Ground Ride Loop
function StartGroundRideLoop(cfg)
    CreateThread(function()
        while isMounted and mountType == 'ground' do
            Wait(0)
            local playerPed = PlayerPedId()
            local speedMult = cfg.speed or 1.3

            -- Controls: W / S / A / D
            if IsControlPressed(0, 32) then -- W
                local forward = GetEntityForwardVector(activeMountPed)
                ApplyForceToEntityCenterOfMass(activeMountPed, 1, forward.x * 6.0 * speedMult, forward.y * 6.0 * speedMult, 0.0, true, true, true, true)
            end

            -- Jump (SPACE)
            if IsControlJustPressed(0, 22) then
                ApplyForceToEntityCenterOfMass(activeMountPed, 1, 0.0, 0.0, 7.5 * (cfg.jump or 1.0), true, true, true, true)
            end

            -- Turn controls (A / D)
            if IsControlPressed(0, 34) then -- A
                local heading = GetEntityHeading(activeMountPed)
                SetEntityHeading(activeMountPed, heading + 2.5)
            elseif IsControlPressed(0, 35) then -- D
                local heading = GetEntityHeading(activeMountPed)
                SetEntityHeading(activeMountPed, heading - 2.5)
            end
        end
    end)
end

-- Surf Loop
function StartSurfLoop(cfg)
    CreateThread(function()
        while isMounted and mountType == 'surf' do
            Wait(0)
            local speedMult = cfg.speed or 1.2

            if IsControlPressed(0, 32) then -- W
                local forward = GetEntityForwardVector(activeMountPed)
                ApplyForceToEntityCenterOfMass(activeMountPed, 1, forward.x * 7.0 * speedMult, forward.y * 7.0 * speedMult, 0.0, true, true, true, true)
            end

            if IsControlPressed(0, 34) then
                SetEntityHeading(activeMountPed, GetEntityHeading(activeMountPed) + 2.0)
            elseif IsControlPressed(0, 35) then
                SetEntityHeading(activeMountPed, GetEntityHeading(activeMountPed) - 2.0)
            end
        end
    end)
end

-- Flight Loop
function StartFlightLoop(cfg)
    CreateThread(function()
        while isMounted and mountType == 'fly' do
            Wait(0)
            local speedMult = cfg.speed or 1.5
            local camRot = GetGameplayCamRot(2)

            SetEntityRotation(activeMountPed, camRot.x, 0.0, camRot.z, 2, true)

            -- Forward thrust (W)
            if IsControlPressed(0, 32) then
                local forward = RotationToDirection(camRot)
                SetEntityVelocity(activeMountPed, forward.x * 18.0 * speedMult, forward.y * 18.0 * speedMult, forward.z * 18.0 * speedMult)
            else
                -- Hover
                SetEntityVelocity(activeMountPed, 0.0, 0.0, 0.1)
            end

            -- Ascend (SPACE)
            if IsControlPressed(0, 22) then
                ApplyForceToEntityCenterOfMass(activeMountPed, 1, 0.0, 0.0, 9.0, true, true, true, true)
            end

            -- Descend (LSHIFT)
            if IsControlPressed(0, 21) then
                ApplyForceToEntityCenterOfMass(activeMountPed, 1, 0.0, 0.0, -9.0, true, true, true, true)
            end
        end
    end)
end

AddEventHandler('onResourceStop', function(res)
    if res == GetCurrentResourceName() and isMounted then
        DismountPokemon()
    end
end)

