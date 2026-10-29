-- ====================================================================
-- PokeFiveM Framework - Client Spinning PokéStops Engine
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

local PokeStops = {
    { id = 'stop_legion',      name = 'Pallet Town Memorial Stop', coords = vector3(215.42, -905.15, 30.69) },
    { id = 'stop_delperro',    name = 'Vespucci Pier PokéStop',    coords = vector3(-1662.35, -1035.25, 13.15) },
    { id = 'stop_vinewood',    name = 'Vinewood Walk of Stars',     coords = vector3(375.12, 178.45, 103.12) },
    { id = 'stop_sandyshores', name = 'Cinnabar Desert Oasis',     coords = vector3(1965.45, 3740.12, 32.34) },
    { id = 'stop_paleto',      name = 'Viridian Outpost Stop',      coords = vector3(-135.24, 6385.12, 31.49) },
    { id = 'stop_observatory', name = 'Galileo Cosmic Stop',       coords = vector3(-428.12, 1110.45, 327.68) },
    { id = 'stop_airport',     name = 'Kanto Flight Terminal Stop',coords = vector3(-1038.45, -2735.12, 20.17) },
    { id = 'stop_powerplant',  name = 'Zapdos Power Generator',    coords = vector3(2730.45, 1530.12, 24.50) },
    { id = 'stop_alamosea',    name = 'Alamo Sea Fishery Stop',    coords = vector3(1335.25, 4310.45, 38.25) },
    { id = 'stop_beach',       name = 'Vermilion Coast Stop',       coords = vector3(-1385.12, -1540.25, 4.45) }
}

local clientCooldowns = {}

-- Setup Blips & ox_target
CreateThread(function()
    for _, stop in ipairs(PokeStops) do
        local blip = AddBlipForCoord(stop.coords.x, stop.coords.y, stop.coords.z)
        SetBlipSprite(blip, 357) -- Hexagon / Disc
        SetBlipScale(blip, 0.7)
        SetBlipColour(blip, 38) -- Dark blue
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(string.format("PokéStop: %s", stop.name))
        EndTextCommandSetBlipName(blip)

        if GetResourceState('ox_target') == 'started' then
            exports.ox_target:addSphereZone({
                coords = stop.coords,
                radius = 2.5,
                debug = false,
                options = {
                    {
                        name = 'pokefivem_spin_' .. stop.id,
                        icon = 'fas fa-compact-disc',
                        label = 'Spin PokéStop',
                        distance = 3.0,
                        onSelect = function()
                            TriggerServerEvent('pokefivem:server:spinPokeStop', stop.id)
                        end
                    }
                }
            })
        end
    end

    -- Visual Rendering Loop (3D Spinning Disk Marker)
    local rotation = 0.0
    while true do
        local ped = PlayerPedId()
        local pCoords = GetEntityCoords(ped)
        local sleep = 1000

        rotation = (rotation + 2.5) % 360.0

        for _, stop in ipairs(PokeStops) do
            local dist = #(pCoords - stop.coords)
            if dist < 45.0 then
                sleep = 0
                local onCooldown = clientCooldowns[stop.id] and (GetGameTimer() < clientCooldowns[stop.id])

                -- Cyan if ready, Violet/Purple if on cooldown
                local r, g, b = 0, 200, 255
                if onCooldown then
                    r, g, b = 210, 45, 255
                end

                -- Outer rotating disc
                DrawMarker(28, stop.coords.x, stop.coords.y, stop.coords.z + 0.8, 
                    0.0, 0.0, 0.0, 0.0, 0.0, rotation, 
                    0.85, 0.85, 0.85, r, g, b, 200, false, false, 2, false, nil, nil, false)

                -- Center core
                DrawMarker(23, stop.coords.x, stop.coords.y, stop.coords.z + 0.1, 
                    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 
                    1.4, 1.4, 0.3, r, g, b, 150, false, false, 2, false, nil, nil, false)

                if dist < 6.0 then
                    local label = onCooldown and string.format("~m~[POKÉSTOP - COOLDOWN]~w~\n%s", stop.name) or string.format("~b~[POKÉSTOP]~w~\n%s\n~g~[E] Spin~w~", stop.name)
                    DrawText3D(stop.coords.x, stop.coords.y, stop.coords.z + 1.45, label)

                    if not onCooldown and dist < 2.5 and IsControlJustPressed(0, 38) then
                        TriggerServerEvent('pokefivem:server:spinPokeStop', stop.id)
                    end
                end
            end
        end
        Wait(sleep)
    end
end)

-- Receive PokéStop Spun Feedback
RegisterNetEvent('pokefivem:client:pokeStopSpun', function(stopId, rewards)
    clientCooldowns[stopId] = GetGameTimer() + (5 * 60 * 1000) -- 5 min cooldown

    PlaySoundFrontend(-1, "LOCAL_PLYR_CASH_COUNTER_COMPLETE", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", true)

    local msg = "🌀 PokéStop Spun!\n"
    for _, item in ipairs(rewards) do
        msg = msg .. string.format("+%d %s\n", item.amount, item.label)
    end
    TriggerEvent('pokefivem:client:notify', msg, 'success', 5000)
end)

