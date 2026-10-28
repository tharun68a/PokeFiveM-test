-- ====================================================================
-- PokeFiveM PokéMarts & World Interactive Markers
-- Author: Pika Studio
-- ====================================================================

local spawnedMartPeds = {}

CreateThread(function()
    for _, mart in ipairs(Config.PokeMarts or {}) do
        -- Blip
        local blip = AddBlipForCoord(mart.coords.x, mart.coords.y, mart.coords.z)
        SetBlipSprite(blip, mart.blip.id or 52)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, mart.blip.scale or 0.7)
        SetBlipColour(blip, mart.blip.color or 2)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(mart.blip.text or "PokéMart")
        EndTextCommandSetBlipName(blip)

        -- NPC Cashier
        local modelHash = mart.pedModel or `mp_m_shopkeep_01`
        RequestModel(modelHash)
        while not HasModelLoaded(modelHash) do Wait(10) end

        local clerk = CreatePed(4, modelHash, mart.coords.x, mart.coords.y, mart.coords.z - 1.0, mart.heading, false, true)
        FreezeEntityPosition(clerk, true)
        SetEntityInvincible(clerk, true)
        SetBlockingOfNonTemporaryEvents(clerk, true)

        -- ox_target Integration for PokéMart
        if GetResourceState('ox_target') == 'started' then
            exports.ox_target:addLocalEntity(clerk, {
                {
                    name = 'pokefivem_pokemart_shop',
                    icon = 'fas fa-shop',
                    label = 'Open PokéMart',
                    distance = 2.5,
                    onSelect = function()
                        SetNuiFocus(true, true)
                        SendNUIMessage({
                            action = "openPokeMart",
                            items = Config.PokeMartItems or {},
                            pokedollars = (PokeCore.PlayerData.accounts and PokeCore.PlayerData.accounts.pokedollars) or 0
                        })
                    end
                }
            })
        end

        table.insert(spawnedMartPeds, clerk)
    end

    -- Interaction
    while true do
        local sleep = 800
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)

        for _, mart in ipairs(Config.PokeMarts or {}) do
            local dist = #(playerCoords - mart.coords)
            if dist < 5.0 then
                sleep = 0
                DrawMarker(1, mart.coords.x, mart.coords.y, mart.coords.z - 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 0.3, 50, 150, 255, 150, false, false, 2, false, nil, nil, false)

                if dist < 2.0 then
                    DrawText3D(mart.coords.x, mart.coords.y, mart.coords.z + 0.9, "~b~PokéMart Clerk~w~")
                    DrawText3D(mart.coords.x, mart.coords.y, mart.coords.z + 0.65, "~g~[E]~w~ Open PokéMart")

                    if IsControlJustPressed(0, 38) then
                        SetNuiFocus(true, true)
                        SendNUIMessage({
                            action = "openMart",
                            name = mart.name,
                            items = mart.items
                        })
                    end
                end
            end
        end

        Wait(sleep)
    end
end)

AddEventHandler('onResourceStop', function(res)
    if res == GetCurrentResourceName() then
        for _, ped in ipairs(spawnedMartPeds) do
            if DoesEntityExist(ped) then DeleteEntity(ped) end
        end
    end
end)

