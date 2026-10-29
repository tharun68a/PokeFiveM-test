-- ====================================================================
-- PokeFiveM Client Wild Spawner & Ped Tracker
-- Author: Pika Studio
-- ====================================================================

SpawnedWildPeds = {} -- [wildId] = { entity = ped, data = wildData }

-- Biome Detection based on GTA Map Zone
function GetCurrentBiome()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local zone = GetNameOfZone(coords.x, coords.y, coords.z)

    if IsEntityInWater(ped) or zone == "BEACH" or zone == "PALCOV" then
        return "water"
    elseif zone == "MTCHIL" or zone == "MTGORDO" or zone == "MTJOSE" or zone == "CANNY" then
        return "mountain"
    elseif zone == "PALFOR" or zone == "TONGVAH" or zone == "TATAMO" then
        return "forest"
    elseif zone == "SANDY" or zone == "GRAPES" or zone == "JAIL" then
        return "cave"
    elseif zone == "DOWNT" or zone == "VINE" or zone == "KOREAT" or zone == "BURTON" then
        return "urban"
    end
    return "grass"
end

local isRepelActive = false
local repelExpiresAt = 0

RegisterNetEvent('pokefivem:client:applyRepel', function(durSec)
    isRepelActive = true
    repelExpiresAt = GetGameTimer() + ((durSec or 120) * 1000)
end)

-- Periodic Wild Spawn Requester
CreateThread(function()
    while true do
        Wait(Config.WildSpawning.SpawnInterval or 12000)
        local ped = PlayerPedId()
        local repelOn = isRepelActive and (GetGameTimer() < repelExpiresAt)
        if not IsPedInAnyVehicle(ped, false) and not InBattle and not repelOn then
            local coords = GetEntityCoords(ped)
            local biome = GetCurrentBiome()
            TriggerServerEvent('pokefivem:server:requestSpawns', coords, biome)
        end
    end
end)

-- Handle Server Spawn Instruction
RegisterNetEvent('pokefivem:client:spawnWildPokemon', function(wildData)
    if SpawnedWildPeds[wildData.wildId] then return end

    local modelHash = (wildData.pokedex_id and GetPokemonModel(wildData.pokedex_id)) or wildData.model or `a_c_pug`
    RequestModel(modelHash)
    local timeout = 0
    while not HasModelLoaded(modelHash) and timeout < 30 do
        Wait(100)
        timeout = timeout + 1
    end

    if not HasModelLoaded(modelHash) then
        modelHash = wildData.model or `a_c_pug` -- safe fallback
        RequestModel(modelHash)
        while not HasModelLoaded(modelHash) do Wait(50) end
    end

    -- Find ground Z
    local foundGround, groundZ = GetGroundZFor_3dCoord(wildData.coords.x, wildData.coords.y, wildData.coords.z + 5.0, false)
    local finalZ = foundGround and groundZ or wildData.coords.z

    local ped = CreatePed(28, modelHash, wildData.coords.x, wildData.coords.y, finalZ, math.random(0, 359) + 0.0, false, true)
    SetModelAsNoLongerNeeded(modelHash)

    SetEntityAsMissionEntity(ped, true, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetPedCanRagdoll(ped, false)
    SetEntityInvincible(ped, true)

    -- Wander task
    TaskWanderStandard(ped, 10.0, 10)

    -- ox_target Integration for Wild Pokémon
    if GetResourceState('ox_target') == 'started' then
        exports.ox_target:addLocalEntity(ped, {
            {
                name = 'pokefivem_wild_battle',
                icon = 'fas fa-shield-halved',
                label = 'Battle ' .. (wildData.name or 'Pokémon'),
                distance = 3.0,
                onSelect = function()
                    if not InBattle then
                        TriggerServerEvent('pokefivem:server:startBattle', wildData.wildId)
                    end
                end
            },
            {
                name = 'pokefivem_wild_throw',
                icon = 'fas fa-circle-dot',
                label = 'Throw Pokéball',
                distance = 15.0,
                onSelect = function()
                    if not InBattle then
                        TriggerEvent('pokefivem:client:throwBall', 'pokeball')
                    end
                end
            }
        })
    end

    local shinyTag = wildData.is_shiny and "~y~★ " or ""
    local cachedLabel = string.format("%s~w~%s ~g~Lv. %d~w~", shinyTag, wildData.name, wildData.level)

    SpawnedWildPeds[wildData.wildId] = {
        entity = ped,
        data = wildData,
        cachedLabel = cachedLabel
    }
end)

-- Despawn Wild Pokemon
RegisterNetEvent('pokefivem:client:despawnWildPokemon', function(wildId)
    local entry = SpawnedWildPeds[wildId]
    if entry and DoesEntityExist(entry.entity) then
        DeleteEntity(entry.entity)
    end
    SpawnedWildPeds[wildId] = nil
end)

-- Interaction Loop: 3D Text & Battle Trigger
CreateThread(function()
    while true do
        local hasTarget = (GetResourceState('ox_target') == 'started')
        local sleep = 1000

        if not InBattle and next(SpawnedWildPeds) then
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            for wildId, wild in pairs(SpawnedWildPeds) do
                if DoesEntityExist(wild.entity) then
                    local wildCoords = GetEntityCoords(wild.entity)
                    local dist = #(playerCoords - wildCoords)

                    if dist < 8.0 then
                        sleep = 0
                        DrawText3D(wildCoords.x, wildCoords.y, wildCoords.z + 0.6, wild.cachedLabel or wild.data.name)

                        if not hasTarget and dist < 2.5 then
                            DrawText3D(wildCoords.x, wildCoords.y, wildCoords.z + 0.35, "~b~[E]~w~ Battle Wild Pokémon")
                            if IsControlJustPressed(0, 38) then -- E key
                                TriggerServerEvent('pokefivem:server:startWildBattle', wildId)
                            end
                        end
                    elseif dist < 20.0 and sleep > 300 then
                        sleep = 300
                    elseif dist > (Config.WildSpawning.DespawnDistance or 80.0) then
                        TriggerServerEvent('pokefivem:server:despawnWild', wildId)
                    end
                end
            end
        end

        Wait(sleep)
    end
end)

-- 3D Text Renderer
function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    if onScreen then
        SetTextScale(0.32, 0.32)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)

        local factor = string.len(text) / 370
        DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 20, 20, 20, 160)
    end
end

