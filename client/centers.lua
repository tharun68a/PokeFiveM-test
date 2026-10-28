-- ====================================================================
-- PokeFiveM PokéCenters & Nurse Joy Healing Stations
-- Author: Pika Studio
-- ====================================================================

local spawnedCenterPeds = {}

CreateThread(function()
    -- Initialize PokéCenter Blips & NPCs
    for idx, center in ipairs(Config.PokeCenters or {}) do
        -- Map Blip
        local blip = AddBlipForCoord(center.coords.x, center.coords.y, center.coords.z)
        SetBlipSprite(blip, center.blip.id or 478)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, center.blip.scale or 0.8)
        SetBlipColour(blip, center.blip.color or 1)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(center.blip.text or "PokéCenter")
        EndTextCommandSetBlipName(blip)

        -- Spawn Nurse Joy Ped
        local modelHash = center.pedModel or `s_f_y_scrubs_01`
        RequestModel(modelHash)
        while not HasModelLoaded(modelHash) do Wait(10) end

        local nursePed = CreatePed(4, modelHash, center.coords.x, center.coords.y, center.coords.z - 1.0, center.heading, false, true)
        SetEntityHeading(nursePed, center.heading)
        FreezeEntityPosition(nursePed, true)
        SetEntityInvincible(nursePed, true)
        SetBlockingOfNonTemporaryEvents(nursePed, true)

        -- ox_target Integration for Nurse Joy
        if GetResourceState('ox_target') == 'started' then
            exports.ox_target:addLocalEntity(nursePed, {
                {
                    name = 'pokefivem_nurse_heal',
                    icon = 'fas fa-heart-pulse',
                    label = 'Heal Pokémon Party',
                    distance = 2.5,
                    onSelect = function()
                        StartHealingSequence()
                    end
                },
                {
                    name = 'pokefivem_nurse_pc',
                    icon = 'fas fa-computer',
                    label = 'Access Pokémon PC Storage',
                    distance = 2.5,
                    onSelect = function()
                        TriggerServerEvent('pokefivem:server:openPC', 1)
                    end
                }
            })
        end

        table.insert(spawnedCenterPeds, nursePed)
    end

    -- Interaction Loop
    while true do
        if GetResourceState('ox_target') == 'started' then
            Wait(5000)
        else
            local sleep = 1500
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            for _, center in ipairs(Config.PokeCenters or {}) do
                local dist = #(playerCoords - center.coords)
                if dist < 25.0 then
                    if dist < 6.0 then
                        sleep = 0
                        DrawMarker(1, center.coords.x, center.coords.y, center.coords.z - 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.2, 1.2, 0.3, 230, 40, 40, 150, false, false, 2, false, nil, nil, false)

                        if dist < 2.0 then
                            DrawText3D(center.coords.x, center.coords.y, center.coords.z + 0.9, "~g~Nurse Joy~w~")
                            DrawText3D(center.coords.x, center.coords.y, center.coords.z + 0.65, "~r~[E]~w~ Heal Pokémon Party   ~b~[G]~w~ Access PC")

                            if IsControlJustPressed(0, 38) then -- E key (Heal)
                                StartHealingSequence()
                            elseif IsControlJustPressed(0, 47) then -- G key (PC)
                                TriggerServerEvent('pokefivem:server:openPC', 1)
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

function StartHealingSequence()
    local playerPed = PlayerPedId()
    FreezeEntityPosition(playerPed, true)

    TriggerEvent('pokefivem:client:notify', _L('nurse_joy_greeting'), 'info')

    -- Play healing jingle sound
    PlaySoundFrontend(-1, "MEDAL_UP", "HUD_MINI_GAME_SOUNDSET", true)

    Wait(2500)

    -- Send server heal request
    TriggerServerEvent('pokefivem:server:healTeam')

    Wait(1500)
    PlaySoundFrontend(-1, "CHALLENGE_UNLOCKED", "HUD_AWARDS", true)
    TriggerEvent('pokefivem:client:notify', _L('nurse_joy_farewell'), 'success')
    FreezeEntityPosition(playerPed, false)
end

AddEventHandler('onResourceStop', function(res)
    if res == GetCurrentResourceName() then
        for _, ped in ipairs(spawnedCenterPeds) do
            if DoesEntityExist(ped) then DeleteEntity(ped) end
        end
    end
end)

