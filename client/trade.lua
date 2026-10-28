-- ====================================================================
-- PokeFiveM Framework - Client Trading Controller
-- Developed by: Pika Studio
-- Standalone Architecture (Zero ESX Dependency)
-- ====================================================================

local currentTradeId = nil

RegisterNetEvent('pokefivem:client:openTradeUI', function(tradeId, partnerInfo)
    currentTradeId = tradeId
    SetNuiFocus(true, true)

    local party = (PokeCore.PlayerData and PokeCore.PlayerData.pokemon) or {}

    SendNUIMessage({
        action = "openTrade",
        tradeId = tradeId,
        partnerName = partnerInfo.firstname .. " " .. partnerInfo.lastname,
        party = party
    })

    PokeCore.Functions.Notify("Trade session started! Select a Pokémon to offer.", "info")
end)

RegisterNetEvent('pokefivem:client:syncTradeOffer', function(offeredPokemonId)
    SendNUIMessage({
        action = "partnerOffered",
        pokemonId = offeredPokemonId
    })
    PokeCore.Functions.Notify("Trade partner has updated their offer.", "info")
end)

RegisterNetEvent('pokefivem:client:tradeSuccess', function()
    SetNuiFocus(false, false)
    SendNUIMessage({ action = "tradeComplete" })
    currentTradeId = nil
    PlaySoundFrontend(-1, "LOCAL_PLYR_CASH_COUNTER_COMPLETE", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", true)
    PokeCore.Functions.Notify("Trade completed successfully! Pokémon transferred.", "success")
end)
