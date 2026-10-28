-- ====================================================================
-- PokeFiveM Framework - Client Daycare Center & Egg Hatching Loop
-- Developed by: Pika Studio
-- Standalone Architecture (Zero ESX Dependency)
-- ====================================================================

local daycareCoords = vector3(2435.12, 4975.32, 46.56)
local daycareHeading = 135.0
local daycarePed = nil

CreateThread(function()
    -- Daycare Blip
    local blip = AddBlipForCoord(daycareCoords.x, daycareCoords.y, daycareCoords.z)
    SetBlipSprite(blip, 468) -- Nest/Egg icon
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.8)
    SetBlipColour(blip, 28) -- Soft Yellow
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Pokémon Daycare Center")
    EndTextCommandSetBlipName(blip)

    -- Spawn Daycare Lady Ped
    local modelHash = `a_f_y_genhot_01`
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do Wait(10) end

    daycarePed = CreatePed(4, modelHash, daycareCoords.x, daycareCoords.y, daycareCoords.z - 1.0, daycareHeading, false, true)
    FreezeEntityPosition(daycarePed, true)
    SetEntityInvincible(daycarePed, true)
    SetBlockingOfNonTemporaryEvents(daycarePed, true)

    -- ox_target Support
    if GetResourceState('ox_target') == 'started' then
        exports.ox_target:addLocalEntity(daycarePed, {
            {
                name = 'pokefivem_daycare_check',
                icon = 'fas fa-egg',
                label = 'Check Daycare & Collect Egg',
                distance = 2.5,
                onSelect = function()
                    TriggerServerEvent('pokefivem:server:checkDaycare')
                end
            }
        })
    end

    -- Interaction Marker Loop (Native Fallback)
    while true do
        local sleep = 800
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local dist = #(playerCoords - daycareCoords)

        if dist < 6.0 then
            sleep = 0
            DrawMarker(1, daycareCoords.x, daycareCoords.y, daycareCoords.z - 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.2, 1.2, 0.3, 240, 200, 80, 160, false, false, 2, false, nil, nil, false)

            if dist < 2.0 then
                DrawText3D(daycareCoords.x, daycareCoords.y, daycareCoords.z + 0.9, "~y~Daycare Caretaker~w~")
                DrawText3D(daycareCoords.x, daycareCoords.y, daycareCoords.z + 0.65, "~g~[E]~w~ Check Daycare Status & Collect Egg")

                if IsControlJustPressed(0, 38) then -- E key
                    TriggerServerEvent('pokefivem:server:checkDaycare')
                end
            end
        end

        Wait(sleep)
    end
end)

