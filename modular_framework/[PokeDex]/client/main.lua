-- ====================================================================
-- PokeFiveM Framework - Client Main Controller
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

PlayerParty = {}
IsUIOpen = false

-- Sync Party State
RegisterNetEvent('pokefivem:client:syncParty', function(party)
    PlayerParty = party
    SendNUIMessage({
        action = "syncParty",
        party = PlayerParty
    })
    -- Update HUD Quick-Bar
    SendNUIMessage({
        action = "updateHud",
        lead = PlayerParty[1]
    })
end)

-- Prompt Starter Selection
RegisterNetEvent('pokefivem:client:promptStarter', function()
    SetNuiFocus(true, true)
    IsUIOpen = true
    SendNUIMessage({
        action = "openStarterMenu",
        starters = Config.StarterPokemon
    })
end)

-- Toggle Party UI
RegisterNetEvent('pokefivem:client:togglePartyUI', function()
    if IsUIOpen then
        CloseAllUI()
    else
        SetNuiFocus(true, true)
        IsUIOpen = true
        SendNUIMessage({
            action = "openPartyMenu",
            party = PlayerParty
        })
    end
end)

-- Toggle Pokédex UI
RegisterNetEvent('pokefivem:client:togglePokedexUI', function()
    if IsUIOpen then
        CloseAllUI()
    else
        SetNuiFocus(true, true)
        IsUIOpen = true
        local meta = (PokeCore.PlayerData and PokeCore.PlayerData.metadata) or {}
        SendNUIMessage({
            action = "openPokedex",
            seen = meta.pokedex_seen or {},
            caught = meta.pokedex_caught or {},
            database = PokedexData
        })
    end
end)

-- Receive PC Data
RegisterNetEvent('pokefivem:client:receivePCData', function(data)
    SetNuiFocus(true, true)
    IsUIOpen = true
    SendNUIMessage({
        action = "openPC",
        data = data
    })
end)

-- Close UI helper
function CloseAllUI()
    SetNuiFocus(false, false)
    IsUIOpen = false
    SendNUIMessage({
        action = "closeAll"
    })
end

-- Keybinds
RegisterKeyMapping('pokeparty', Config.Controls.OpenPartyKeyDesc, 'keyboard', Config.Controls.OpenPartyKey)
RegisterCommand('pokeparty', function()
    TriggerEvent('pokefivem:client:togglePartyUI')
end, false)

RegisterKeyMapping('pokepokedex', Config.Controls.OpenPokedexKeyDesc, 'keyboard', Config.Controls.OpenPokedexKey)
RegisterCommand('pokepokedex', function()
    TriggerEvent('pokefivem:client:togglePokedexUI')
end, false)

-- NUI Callbacks
RegisterNUICallback('closeUI', function(data, cb)
    CloseAllUI()
    cb('ok')
end)

RegisterNUICallback('chooseStarter', function(data, cb)
    local starterId = tonumber(data.id)
    if starterId then
        TriggerServerEvent('pokefivem:server:chooseStarter', starterId)
        CloseAllUI()
    end
    cb('ok')
end)

RegisterNUICallback('swapParty', function(data, cb)
    TriggerServerEvent('pokefivem:server:swapPartyOrder', data.slot1, data.slot2)
    cb('ok')
end)

RegisterNUICallback('depositPC', function(data, cb)
    TriggerServerEvent('pokefivem:server:depositToPC', data.partySlot, data.targetBox, data.targetSlot)
    cb('ok')
end)

RegisterNUICallback('withdrawPC', function(data, cb)
    TriggerServerEvent('pokefivem:server:withdrawFromPC', data.pokemonId)
    cb('ok')
end)

RegisterNUICallback('releasePokemon', function(data, cb)
    TriggerServerEvent('pokefivem:server:releasePokemon', data.pokemonId)
    cb('ok')
end)

RegisterNUICallback('useBagItem', function(data, cb)
    TriggerServerEvent('pokefivem:server:useItem', data.itemKey, data.pokemonId)
    cb('ok')
end)

RegisterNUICallback('switchBox', function(data, cb)
    TriggerServerEvent('pokefivem:server:openPC', data.boxNumber)
    cb('ok')
end)

RegisterNUICallback('buyMartItem', function(data, cb)
    TriggerServerEvent('pokefivem:server:buyMartItem', data.itemKey, data.amount)
    cb('ok')
end)
