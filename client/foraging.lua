-- ====================================================================
-- PokeFiveM Framework - Client Berry & Apricorn Foraging Trees
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

local ForagingNodes = {
    { id = 'berry_tongva_1',  type = 'berry',    coords = vector3(-1540.25, 2045.12, 58.20), label = "Oran Berry Bush" },
    { id = 'berry_tongva_2',  type = 'berry',    coords = vector3(-1510.45, 2085.60, 56.10), label = "Sitrus Berry Bush" },
    { id = 'apri_paleto_1',   type = 'apricorn', coords = vector3(-555.20, 5320.45, 73.12),  label = "Red Apricorn Tree" },
    { id = 'apri_paleto_2',   type = 'apricorn', coords = vector3(-585.12, 5360.25, 70.45),  label = "Blue Apricorn Tree" },
    { id = 'berry_chiliad_1', type = 'berry',    coords = vector3(375.45, 5120.12, 480.25),  label = "Lum Berry Bush" },
    { id = 'apri_chaparral_1',type = 'apricorn', coords = vector3(1055.25, 2680.45, 39.50),  label = "Yellow Apricorn Tree" },
    { id = 'berry_zancudo_1', type = 'berry',    coords = vector3(-2280.12, 3310.25, 32.40), label = "Leppa Berry Bush" },
    { id = 'apri_gordo_1',    type = 'apricorn', coords = vector3(2840.12, 4610.25, 48.60),  label = "Black Apricorn Tree" }
}

CreateThread(function()
    for _, node in ipairs(ForagingNodes) do
        -- Add mini blip
        local blip = AddBlipForCoord(node.coords.x, node.coords.y, node.coords.z)
        SetBlipSprite(blip, 514) -- Apple / leaf icon
        SetBlipScale(blip, 0.6)
        SetBlipColour(blip, (node.type == 'berry') and 2 or 17) -- Green / Orange
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(node.label)
        EndTextCommandSetBlipName(blip)

        -- ox_target interaction
        if GetResourceState('ox_target') == 'started' then
            exports.ox_target:addSphereZone({
                coords = node.coords,
                radius = 2.0,
                debug = false,
                options = {
                    {
                        name = 'pokefivem_forage_' .. node.id,
                        icon = 'fas fa-seedling',
                        label = 'Harvest ' .. node.label,
                        distance = 2.5,
                        onSelect = function()
                            TriggerEvent('pokefivem:client:startForaging', node)
                        end
                    }
                }
            })
        end
    end
end)

-- Foraging Gathering Sequence
RegisterNetEvent('pokefivem:client:startForaging', function(node)
    local ped = PlayerPedId()
    TaskStartScenarioInPlace(ped, "PROP_HUMAN_BUM_BIN", 0, true)

    if lib and lib.progressBar then
        lib.progressBar({
            duration = 3500,
            label = 'Foraging ' .. node.label .. '...',
            useWhileDead = false,
            canCancel = true,
            disable = { move = true, car = true, combat = true }
        })
    else
        Wait(3500)
    end

    ClearPedTasks(ped)
    TriggerServerEvent('pokefivem:server:forageNode', node.id, node.type)
end)
