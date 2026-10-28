-- ====================================================================
-- PokeFiveM Companion / Buddy Follower System
-- Author: Pika Studio
-- ====================================================================

local activeCompanionPed = nil
local activeCompanionData = nil

-- Keybind for Companion Summon / Recall
RegisterKeyMapping('pokecompanion', Config.Controls.CompanionKeyDesc, 'keyboard', Config.Controls.CompanionKey)
RegisterCommand('pokecompanion', function()
    ToggleCompanion()
end, false)

function ToggleCompanion()
    if not Config.Companion.Enabled then return end
    if InBattle then return end

    if activeCompanionPed and DoesEntityExist(activeCompanionPed) then
        -- Recall companion
        RecallCompanion()
    else
        -- Summon first healthy party member
        SummonCompanion()
    end
end

function SummonCompanion()
    local party = PlayerParty or (PokeCore.PlayerData and PokeCore.PlayerData.pokemon) or {}
    if #party == 0 then
        TriggerEvent('pokefivem:client:notify', "You do not have any Pokémon in your party!", 'error')
        return
    end

    local lead = party[1]
    if not lead or (lead.current_hp and lead.current_hp <= 0) or lead.status == "fainted" then
        TriggerEvent('pokefivem:client:notify', "Your lead Pokémon is fainted!", 'error')
        return
    end

    local pData = GetPokedexEntry(lead.pokedex_id)
    local modelHash = (pData and pData.model) or `a_c_pug`

    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do Wait(10) end

    local playerPed = PlayerPedId()
    local pCoords = GetEntityCoords(playerPed)
    local forward = GetEntityForwardVector(playerPed)
    local spawnPos = pCoords - (forward * 1.5)

    activeCompanionPed = CreatePed(28, modelHash, spawnPos.x, spawnPos.y, spawnPos.z, GetEntityHeading(playerPed), true, true)
    SetModelAsNoLongerNeeded(modelHash)

    SetEntityInvincible(activeCompanionPed, true)
    SetBlockingOfNonTemporaryEvents(activeCompanionPed, true)
    SetPedCanRagdoll(activeCompanionPed, false)

    activeCompanionData = lead
    TriggerEvent('pokefivem:client:notify', _L('companion_sent', lead.nickname or pData.name), 'info')

    -- Follow Loop (Optimized Ticking)
    CreateThread(function()
        local followDist = Config.Companion.FollowDistance or 2.5
        local followSpeed = Config.Companion.FollowSpeed or 3.0

        while activeCompanionPed and DoesEntityExist(activeCompanionPed) do
            local pPed = PlayerPedId()
            if IsPedInAnyVehicle(pPed, false) and Config.Companion.AutoRecallVehicle then
                RecallCompanion()
                break
            end

            local pPos = GetEntityCoords(pPed)
            local cPos = GetEntityCoords(activeCompanionPed)
            local dist = #(pPos - cPos)

            if dist > 35.0 then
                -- Teleport catch-up
                local behind = pPos - (GetEntityForwardVector(pPed) * 2.0)
                SetEntityCoords(activeCompanionPed, behind.x, behind.y, behind.z, false, false, false, false)
                Wait(800)
            elseif dist > followDist then
                TaskGoToEntity(activeCompanionPed, pPed, -1, 1.8, followSpeed, 1073741824, 0)
                Wait(600)
            else
                Wait(1200) -- Sleep longer when already near trainer
            end
        end
    end)
end

function RecallCompanion()
    if activeCompanionPed and DoesEntityExist(activeCompanionPed) then
        local name = activeCompanionData and (activeCompanionData.nickname or activeCompanionData.name) or "Pokémon"
        TriggerEvent('pokefivem:client:notify', _L('companion_recalled', name), 'info')
        DeleteEntity(activeCompanionPed)
        activeCompanionPed = nil
        activeCompanionData = nil
    end
end

-- Cleanup on resource stop
AddEventHandler('onResourceStop', function(res)
    if res == GetCurrentResourceName() and activeCompanionPed and DoesEntityExist(activeCompanionPed) then
        DeleteEntity(activeCompanionPed)
    end
end)

