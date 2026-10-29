-- ====================================================================
-- PokeFiveM Framework - Client Evolution Controller
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

local activeEvolution = nil

-- Open Target Selection Menu for Evolution Stone
RegisterNetEvent('pokefivem:client:openStoneEvolutionMenu', function(stoneItem)
    PokeCore.Functions.TriggerCallback('pokefivem:party:getParty', function(party)
        if not party or #party == 0 then
            TriggerEvent('pokefivem:client:notify', "You have no Pokémon in your party!", 'error')
            return
        end

        local options = {}
        for _, mon in ipairs(party) do
            local evo = PokeEvolution.GetStoneEvolution(stoneItem, tonumber(mon.pokedex_id))
            local description = evo and string.format("Can evolve into %s!", evo.name) or "No compatible reaction."
            local disabled = (evo == nil)

            table.insert(options, {
                title = mon.nickname or mon.name,
                description = description,
                disabled = disabled,
                icon = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/' .. mon.pokedex_id .. '.png',
                onSelect = function()
                    TriggerServerEvent('pokefivem:server:useEvolutionItem', stoneItem, mon.id)
                end
            })
        end

        if lib and lib.registerContext then
            lib.registerContext({
                id = 'pokefivem_stone_evo',
                title = 'Select Pokémon for Evolution',
                options = options
            })
            lib.showContext('pokefivem_stone_evo')
        end
    end)
end)

-- Start Cinematic Evolution Cutscene
RegisterNetEvent('pokefivem:client:startEvolutionCinematic', function(data)
    activeEvolution = data
    SetNuiFocus(true, false)
    SendNUIMessage({
        action = 'startEvolution',
        data = data
    })

    -- Listen for Cancel Key (Backspace / 'B' / Escape)
    CreateThread(function()
        local startTime = GetGameTimer()
        while activeEvolution and (GetGameTimer() - startTime < 8000) do
            Wait(0)
            -- 177 is Backspace / ESC, 29 is 'B'
            if IsControlJustPressed(0, 177) or IsControlJustPressed(0, 29) then
                local token = activeEvolution.token
                activeEvolution = nil
                SetNuiFocus(false, false)
                SendNUIMessage({ action = 'cancelEvolution' })
                TriggerServerEvent('pokefivem:server:cancelEvolution', token)
                break
            end
        end
    end)
end)

-- NUI Evolution Finished Callback
RegisterNUICallback('finishEvolution', function(data, cb)
    if activeEvolution then
        local token = activeEvolution.token
        activeEvolution = nil
        SetNuiFocus(false, false)
        TriggerServerEvent('pokefivem:server:completeEvolution', token)
    end
    cb('ok')
end)
