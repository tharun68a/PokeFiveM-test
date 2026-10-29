-- ====================================================================
-- PokeFiveM Framework - Client Gym Leaders & Badge System
-- Developed by: Pika Studio
-- Standalone Architecture (Zero ESX Dependency)
-- ====================================================================

local spawnedGymLeaders = {}

CreateThread(function()
    for gymId, gym in pairs(PokeCore.Shared.Gyms or {}) do
        -- Gym Map Blip
        local blip = AddBlipForCoord(gym.coords.x, gym.coords.y, gym.coords.z)
        SetBlipSprite(blip, 311) -- Trophy icon
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 0.85)
        SetBlipColour(blip, 46) -- Gold
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Gym: " .. gym.leader .. " (" .. gym.type .. ")")
        EndTextCommandSetBlipName(blip)

        -- Spawn Gym Leader Ped
        local modelHash = gym.pedModel or `csb_ramp_gang`
        RequestModel(modelHash)
        while not HasModelLoaded(modelHash) do Wait(10) end

        local leaderPed = CreatePed(4, modelHash, gym.coords.x, gym.coords.y, gym.coords.z - 1.0, gym.heading, false, true)
        FreezeEntityPosition(leaderPed, true)
        SetEntityInvincible(leaderPed, true)
        SetBlockingOfNonTemporaryEvents(leaderPed, true)

        -- ox_target Support
        if GetResourceState('ox_target') == 'started' then
            exports.ox_target:addLocalEntity(leaderPed, {
                {
                    name = 'pokefivem_challenge_gym_' .. gymId,
                    icon = 'fas fa-trophy',
                    label = string.format("Challenge %s (%s)", gym.leader, gym.badge),
                    distance = 2.5,
                    onSelect = function()
                        TriggerServerEvent('pokefivem:server:challengeGym', gymId)
                    end
                }
            })
        end

        table.insert(spawnedGymLeaders, { id = gymId, ped = leaderPed, coords = gym.coords })
    end

    -- Interaction Distance Loop (Native Fallback)
    while true do
        if GetResourceState('ox_target') == 'started' then
            Wait(5000)
        else
            local sleep = 1500
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            for _, g in ipairs(spawnedGymLeaders) do
                local dist = #(playerCoords - g.coords)
                if dist < 25.0 then
                    if dist < 6.0 then
                        sleep = 0
                        DrawMarker(1, g.coords.x, g.coords.y, g.coords.z - 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.2, 1.2, 0.3, 255, 215, 0, 160, false, false, 2, false, nil, nil, false)

                        if dist < 2.0 then
                            local gym = PokeCore.Shared.Gyms[g.id]
                            DrawText3D(g.coords.x, g.coords.y, g.coords.z + 0.9, string.format("~y~Leader %s~w~", gym.leader))
                            DrawText3D(g.coords.x, g.coords.y, g.coords.z + 0.65, string.format("~g~[E]~w~ Challenge for the %s", gym.badge))

                            if IsControlJustPressed(0, 38) then -- E key
                                TriggerServerEvent('pokefivem:server:challengeGym', g.id)
                            end
                        end
                    elseif sleep > 300 then
                        sleep = 300
                    end
                end
            end

            Wait(sleep)
        end
    end
end)

-- Handle Gym Battle Trigger
RegisterNetEvent('pokefivem:client:startGymBattle', function(gym)
    PokeCore.Functions.Notify(string.format("Gym Leader %s accepted your challenge!", gym.leader), 'success')

    -- Start first Pokémon from Gym Leader's team
    local firstMon = gym.team[1]
    local wildData = {
        wildId = "gym_" .. gym.id,
        pokedex_id = firstMon.pokedex_id,
        name = gym.leader .. "'s " .. firstMon.name,
        level = firstMon.level,
        hp = 120 + (firstMon.level * 8),
        max_hp = 120 + (firstMon.level * 8),
        model = `a_c_pug`,
        is_shiny = false,
        moves = firstMon.moves,
        is_gym = true,
        gym_id = gym.id
    }

    TriggerEvent('pokefivem:client:startWildBattleDirect', wildData)
end)

