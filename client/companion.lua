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
    if #PlayerParty == 0 then
        TriggerEvent('pokefivem:client:notify', "You do not have any Pokémon in your party!", 'error')
        return
    end

    local lead = PlayerParty[1]
    if lead.current_hp <= 0 or lead.status == "fainted" then
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

    -- Follow Loop
    CreateThread(function()
        while activeCompanionPed and DoesEntityExist(activeCompanionPed) do
            Wait(800)
            local pPed = PlayerPedId()
            local pPos = GetEntityCoords(pPed)
            local cPos = GetEntityCoords(activeCompanionPed)
            local dist = #(pPos - cPos)

            -- Auto-recall when player is inside vehicle
            if IsPedInAnyVehicle(pPed, false) and Config.Companion.AutoRecallVehicle then
                RecallCompanion()
                break
            end

            if dist > 35.0 then
                -- Teleport catch-up
                local behind = pPos - (GetEntityForwardVector(pPed) * 2.0)
                SetEntityCoords(activeCompanionPed, behind.x, behind.y, behind.z, false, false, false, false)
            elseif dist > (Config.Companion.FollowDistance or 2.5) then
                TaskGoToEntity(activeCompanionPed, pPed, -1, 1.8, Config.Companion.FollowSpeed or 3.0, 1073741824, 0)
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

