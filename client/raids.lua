-- ====================================================================
-- PokeFiveM Framework - Client Legendary World Boss Raids
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

local activeRaids = {}
local spawnedBossEntities = {}

-- Receive Synced Active Raids from Server
RegisterNetEvent('pokefivem:client:syncRaids', function(raids)
    activeRaids = raids or {}
end)

-- Receive Global Raid Boss Alert
RegisterNetEvent('pokefivem:client:raidAlert', function(bossName, locationName)
    PlaySoundFrontend(-1, "Airhorn", "DLC_TG_Running_Defenders_Sounds", true)
    TriggerEvent('pokefivem:client:notify', string.format("⚡ [WORLD RAID]: %s has appeared at %s! Rally your party!", bossName, locationName), 'error', 12000)
end)

-- Render Bosses and Healthbars
CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local pCoords = GetEntityCoords(ped)
        local sleep = 1000

        for raidId, raid in pairs(activeRaids) do
            if raid and raid.active then
                local dist = #(pCoords - raid.coords)
                if dist < 65.0 then
                    sleep = 0

                    -- Spawn visual boss ped if not already present
                    if not spawnedBossEntities[raidId] or not DoesEntityExist(spawnedBossEntities[raidId]) then
                        local modelHash = GetPokemonModel(raid.pokedex_id)
                        RequestModel(modelHash)
                        local timeout = GetGameTimer() + 3000
                        while not HasModelLoaded(modelHash) and GetGameTimer() < timeout do Wait(10) end

                        if HasModelLoaded(modelHash) then
                            local bPed = CreatePed(4, modelHash, raid.coords.x, raid.coords.y, raid.coords.z, raid.heading or 0.0, false, true)
                            SetEntityInvincible(bPed, true)
                            SetBlockingOfNonTemporaryEvents(bPed, true)
                            FreezeEntityPosition(bPed, true)
                            spawnedBossEntities[raidId] = bPed
                        end
                    end

                    -- Draw Raid Boss Name and HP Bar above head
                    local hpPct = math.max(0, math.min(100, (raid.currentHp / raid.maxHp) * 100))
                    local barColor = (hpPct > 50) and "~g~" or ((hpPct > 25) and "~y~" or "~r~")
                    local label = string.format("~r~[LEGENDARY RAID BOSS]~w~\n~y~%s (Lv. %d)~w~\nHP: %s%d / %d (~w~%.0f%%~s~)\n~b~[E] Challenge Raid Boss~w~",
                        raid.name, raid.level, barColor, raid.currentHp, raid.maxHp, hpPct)

                    DrawText3D(raid.coords.x, raid.coords.y, raid.coords.z + 2.4, label)

                    -- Challenge Interaction
                    if dist < 4.0 and IsControlJustPressed(0, 38) then
                        TriggerServerEvent('pokefivem:server:challengeRaidBoss', raidId)
                    end
                else
                    -- Cleanup entity if player moved far away
                    if spawnedBossEntities[raidId] and DoesEntityExist(spawnedBossEntities[raidId]) then
                        DeleteEntity(spawnedBossEntities[raidId])
                        spawnedBossEntities[raidId] = nil
                    end
                end
            end
        end
        Wait(sleep)
    end
end)
