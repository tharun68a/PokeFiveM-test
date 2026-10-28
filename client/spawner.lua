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

-- Periodic Wild Spawn Requester
CreateThread(function()
    while true do
        Wait(Config.WildSpawning.SpawnInterval or 12000)
        local ped = PlayerPedId()
        if not IsPedInAnyVehicle(ped, false) and not InBattle then
            local coords = GetEntityCoords(ped)
            local biome = GetCurrentBiome()
            TriggerServerEvent('pokefivem:server:requestSpawns', coords, biome)
        end
    end
end)

-- Handle Server Spawn Instruction
RegisterNetEvent('pokefivem:client:spawnWildPokemon', function(wildData)
    if SpawnedWildPeds[wildData.wildId] then return end

    local modelHash = wildData.model or `a_c_pug`
    RequestModel(modelHash)
    local timeout = 0
    while not HasModelLoaded(modelHash) and timeout < 30 do
        Wait(100)
        timeout = timeout + 1
    end

    if not HasModelLoaded(modelHash) then
        modelHash = `a_c_pug` -- safe fallback
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

    SpawnedWildPeds[wildData.wildId] = {
        entity = ped,
        data = wildData
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
        local sleep = 500
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)

        if not InBattle then
            for wildId, wild in pairs(SpawnedWildPeds) do
                if DoesEntityExist(wild.entity) then
                    local wildCoords = GetEntityCoords(wild.entity)
                    local dist = #(playerCoords - wildCoords)

                    if dist < 18.0 then
                        sleep = 0
                        local shinyTag = wild.data.is_shiny and "~y~★ " or ""
                        local text = string.format("%s~w~%s ~g~Lv. %d~w~", shinyTag, wild.data.name, wild.data.level)
                        DrawText3D(wildCoords.x, wildCoords.y, wildCoords.z + 0.6, text)

                        if dist < 2.5 then
                            DrawText3D(wildCoords.x, wildCoords.y, wildCoords.z + 0.35, "~b~[E]~w~ Battle Wild Pokémon")
                            if IsControlJustPressed(0, 38) then -- E key
                                TriggerServerEvent('pokefivem:server:startWildBattle', wildId)
                            end
                        end
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

