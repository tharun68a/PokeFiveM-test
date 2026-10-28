-- ====================================================================
-- PokeFiveM Framework - Client Quests & Story Missions
-- Developed by: Pika Studio
-- Standalone Architecture (Zero ESX Dependency)
-- ====================================================================

local spawnedQuestPeds = {}

CreateThread(function()
    for questId, quest in pairs(PokeCore.Shared.Quests or {}) do
        -- Map Blip
        local blip = AddBlipForCoord(quest.coords.x, quest.coords.y, quest.coords.z)
        SetBlipSprite(blip, 66) -- Story mission question mark
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 0.75)
        SetBlipColour(blip, 5) -- Yellow
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Mission: " .. quest.title)
        EndTextCommandSetBlipName(blip)

        -- Spawn NPC
        local modelHash = quest.pedModel or `csb_scientist`
        RequestModel(modelHash)
        while not HasModelLoaded(modelHash) do Wait(10) end

        local ped = CreatePed(4, modelHash, quest.coords.x, quest.coords.y, quest.coords.z - 1.0, quest.heading, false, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)

        -- ox_target Support
        if GetResourceState('ox_target') == 'started' then
            exports.ox_target:addLocalEntity(ped, {
                {
                    name = 'pokefivem_quest_' .. questId,
                    icon = 'fas fa-scroll',
                    label = quest.npc .. ": " .. quest.title,
                    distance = 2.5,
                    onSelect = function()
                        TriggerServerEvent('pokefivem:server:interactQuest', questId)
                    end
                }
            })
        end

        table.insert(spawnedQuestPeds, { id = questId, ped = ped, coords = quest.coords, quest = quest })
    end

    -- Interaction Distance Loop (Native Fallback)
    while true do
        local sleep = 800
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)

        for _, q in ipairs(spawnedQuestPeds) do
            local dist = #(playerCoords - q.coords)
            if dist < 6.0 then
                sleep = 0
                DrawMarker(1, q.coords.x, q.coords.y, q.coords.z - 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 0.3, 255, 230, 0, 150, false, false, 2, false, nil, nil, false)

                if dist < 2.0 then
                    DrawText3D(q.coords.x, q.coords.y, q.coords.z + 0.9, "~y~" .. q.quest.npc .. "~w~")
                    DrawText3D(q.coords.x, q.coords.y, q.coords.z + 0.65, "~g~[E]~w~ " .. q.quest.title)

                    if IsControlJustPressed(0, 38) then
                        TriggerServerEvent('pokefivem:server:interactQuest', q.id)
                    end
                end
            end
        end

        Wait(sleep)
    end
end)

RegisterNetEvent('pokefivem:client:startQuestBattle', function(quest)
    local opp = quest.opponent
    local wildData = {
        wildId = "quest_" .. quest.id,
        pokedex_id = opp.pokemon.pokedex_id,
        name = opp.name .. "'s " .. opp.pokemon.name,
        level = opp.pokemon.level,
        hp = 100 + (opp.pokemon.level * 6),
        max_hp = 100 + (opp.pokemon.level * 6),
        model = `a_c_pug`,
        is_shiny = false,
        moves = { "tackle", "bite", "sludge" },
        is_quest = true,
        quest_id = quest.id
    }

    TriggerEvent('pokefivem:client:startWildBattleDirect', wildData)
end)
