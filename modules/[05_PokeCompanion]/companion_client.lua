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
    local modelHash = GetPokemonModel(lead.pokedex_id)

    RequestModel(modelHash)
    local waitCount = 0
    while not HasModelLoaded(modelHash) and waitCount < 30 do
        Wait(50)
        waitCount = waitCount + 1
    end

    if not HasModelLoaded(modelHash) then
        modelHash = `a_c_pug`
        RequestModel(modelHash)
        while not HasModelLoaded(modelHash) do Wait(10) end
    end

    local playerPed = PlayerPedId()
    local pCoords = GetEntityCoords(playerPed)
    local forward = GetEntityForwardVector(playerPed)
    local spawnPos = pCoords - (forward * 1.5)

    -- Ped Type 4 (CIVMALE) accommodates both bipedal and quadrupedal custom Pokémon models smoothly
    activeCompanionPed = CreatePed(4, modelHash, spawnPos.x, spawnPos.y, spawnPos.z, GetEntityHeading(playerPed), true, true)
    SetModelAsNoLongerNeeded(modelHash)

    SetEntityInvincible(activeCompanionPed, true)
    SetBlockingOfNonTemporaryEvents(activeCompanionPed, true)
    SetPedCanRagdoll(activeCompanionPed, false)

    -- Flame FX for Fire Starters (Charmander / Charmeleon / Charizard)
    if lead.pokedex_id == 4 or lead.pokedex_id == 5 or lead.pokedex_id == 6 then
        CreateThread(function()
            RequestNamedPtfxAsset("core")
            local ptfxWait = 0
            while not HasNamedPtfxAssetLoaded("core") and ptfxWait < 20 do
                Wait(50)
                ptfxWait = ptfxWait + 1
            end
            if HasNamedPtfxAssetLoaded("core") and activeCompanionPed and DoesEntityExist(activeCompanionPed) then
                UseParticleFxAssetNextCall("core")
                StartParticleFxLoopedOnEntity("ent_amb_candle_flame", activeCompanionPed, 0.0, -0.3, 0.25, 0.0, 0.0, 0.0, 1.2, false, false, false)
            end
        end)
    end

    activeCompanionData = lead
    TriggerEvent('pokefivem:client:notify', _L('companion_sent', lead.nickname or pData.name), 'info')

    -- Follow & HUD Loop (Optimized Ticking)
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

    -- Floating 3D Companion Overhead Tag
    CreateThread(function()
        while activeCompanionPed and DoesEntityExist(activeCompanionPed) do
            local pPed = PlayerPedId()
            local pPos = GetEntityCoords(pPed)
            local cPos = GetEntityCoords(activeCompanionPed)
            local dist = #(pPos - cPos)

            if dist < 20.0 then
                local pName = activeCompanionData.nickname or pData.name
                local curHp = activeCompanionData.current_hp or 20
                local maxHp = activeCompanionData.max_hp or 20
                local hpPct = math.floor((curHp / math.max(1, maxHp)) * 100)
                local hpColor = (hpPct > 50) and "~g~" or ((hpPct > 20) and "~y~" or "~r~")
                local label = string.format("~b~[Companion]~w~ %s ~w~(Lv. %d) %s%d%% HP", pName, activeCompanionData.level or 5, hpColor, hpPct)

                DrawText3D(cPos.x, cPos.y, cPos.z + 0.65, label)
                Wait(0)
            else
                Wait(1000)
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

