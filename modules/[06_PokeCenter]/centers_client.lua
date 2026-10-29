-- ====================================================================
-- PokeFiveM PokéCenters & Nurse Joy Healing Stations
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- Driven by .URI Scripting Engine (scripts/nurse_joy.uri)
-- ====================================================================

local spawnedCenterPeds = {}
local nurseJoyConfig = nil

CreateThread(function()
    -- Load Nurse Joy via .URI script engine
    if URIEngine and URIEngine.LoadURIFile then
        local ast = URIEngine.LoadURIFile('modules/[06_PokeCenter]/nurse_joy.uri') or URIEngine.LoadURIFile('scripts/nurse_joy.uri')
        if ast and ast.npcs and ast.npcs[1] then
            nurseJoyConfig = ast.npcs[1]
        end
    end

    local facilities = (nurseJoyConfig and #nurseJoyConfig.facilities > 0 and nurseJoyConfig.facilities) or Config.PokeCenters or {}
    local nurseModelName = (nurseJoyConfig and nurseJoyConfig.model) or "s_f_y_scrubs_01"
    local modelHash = GetHashKey(nurseModelName)

    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do Wait(10) end

    -- Initialize PokéCenter Blips & Nurse Joy NPCs
    for _, center in ipairs(facilities) do
        local coords = vector3(0.0, 0.0, 0.0)
        local heading = center.heading or 0.0

        if center.coords then
            if type(center.coords) == "vector3" or type(center.coords) == "vector4" then
                coords = vector3(center.coords.x, center.coords.y, center.coords.z)
                if type(center.coords) == "vector4" then
                    heading = center.coords.w
                end
            elseif type(center.coords) == "table" then
                coords = vector3(center.coords[1] or center.coords.x or 0.0, center.coords[2] or center.coords.y or 0.0, center.coords[3] or center.coords.z or 0.0)
                if center.coords[4] then
                    heading = center.coords[4]
                end
            end
        elseif center.x and center.y and center.z then
            coords = vector3(center.x, center.y, center.z)
        end

        -- Map Blip
        local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
        SetBlipSprite(blip, 478) -- Medical / Red Cross
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 0.8)
        SetBlipColour(blip, 1) -- Red
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(center.name or "PokéCenter")
        EndTextCommandSetBlipName(blip)

        -- Spawn Nurse Joy Ped
        local nursePed = CreatePed(4, modelHash, coords.x, coords.y, coords.z - 1.0, heading, false, true)
        SetEntityHeading(nursePed, heading)
        FreezeEntityPosition(nursePed, true)
        SetEntityInvincible(nursePed, true)
        SetBlockingOfNonTemporaryEvents(nursePed, true)

        -- ox_target Integration for Nurse Joy
        if GetResourceState('ox_target') == 'started' then
            exports.ox_target:addLocalEntity(nursePed, {
                {
                    name = 'pokefivem_nurse_heal',
                    icon = 'fas fa-heart-pulse',
                    label = 'Heal Pokémon Party (Nurse Joy)',
                    distance = 2.5,
                    onSelect = function()
                        StartHealingSequence(nursePed)
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

        table.insert(spawnedCenterPeds, { ped = nursePed, coords = coords, name = center.name })
    end

    SetModelAsNoLongerNeeded(modelHash)

    -- Standalone Distance Interaction Loop
    while true do
        if GetResourceState('ox_target') == 'started' then
            Wait(5000)
        else
            local sleep = 1500
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            for _, center in ipairs(spawnedCenterPeds) do
                local dist = #(playerCoords - center.coords)
                if dist < 20.0 then
                    if dist < 5.0 then
                        sleep = 0
                        DrawMarker(1, center.coords.x, center.coords.y, center.coords.z - 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.2, 1.2, 0.25, 239, 68, 68, 180, false, false, 2, false, nil, nil, false)

                        if dist < 2.0 then
                            DrawText3D(center.coords.x, center.coords.y, center.coords.z + 0.95, "~r~Nurse Joy~w~")
                            DrawText3D(center.coords.x, center.coords.y, center.coords.z + 0.70, "~g~[E]~w~ Heal Pokémon Party   ~b~[G]~w~ Access PC")

                            if IsControlJustPressed(0, 38) then -- E key (Heal)
                                StartHealingSequence(center.ped)
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

function StartHealingSequence(nursePed)
    local playerPed = PlayerPedId()
    FreezeEntityPosition(playerPed, true)

    local dialogue = (nurseJoyConfig and nurseJoyConfig.dialogue) or {}
    local greeting = dialogue.greeting or "Hello, and welcome to the Pokémon Center!"
    local healingMsg = dialogue.healing or "Okay, we'll need your Pokémon for just a few seconds..."
    local completedMsg = dialogue.completed or "Thank you for waiting! We've restored your Pokémon to full health."
    local farewell = dialogue.farewell or "We hope to see you again!"

    TriggerEvent('pokefivem:client:notify', string.format('[Nurse Joy]: "%s"', greeting), 'info', 3000)
    Wait(1200)

    TriggerEvent('pokefivem:client:notify', string.format('[Nurse Joy]: "%s"', healingMsg), 'info', 3000)

    -- Play authentic 6-note Pokémon Recovery Jingle
    SendNUIMessage({
        action = "playHealSound"
    })

    -- Nurse Joy bow animation
    if nursePed and DoesEntityExist(nursePed) then
        local animDict = "anim@mp_player_intcelebrationfemale@air_kiss"
        RequestAnimDict(animDict)
        local t = GetGameTimer() + 1500
        while not HasAnimDictLoaded(animDict) and GetGameTimer() < t do Wait(50) end
        if HasAnimDictLoaded(animDict) then
            TaskPlayAnim(nursePed, animDict, "air_kiss", 8.0, -8.0, 2500, 0, 0, false, false, false)
        end
    end

    Wait(2200)

    -- Send server heal request
    TriggerServerEvent('pokefivem:server:healTeam')

    Wait(1200)
    TriggerEvent('pokefivem:client:notify', string.format('[Nurse Joy]: "%s %s"', completedMsg, farewell), 'success', 5000)
    FreezeEntityPosition(playerPed, false)
end

AddEventHandler('onResourceStop', function(res)
    if res == GetCurrentResourceName() then
        for _, item in ipairs(spawnedCenterPeds) do
            if DoesEntityExist(item.ped) then DeleteEntity(item.ped) end
        end
    end
end)
