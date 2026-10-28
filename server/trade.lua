-- ====================================================================
-- PokeFiveM Framework - Player Trading Engine & Trade Evolutions
-- Developed by: Pika Studio
-- Standalone Architecture (Zero ESX Dependency)
-- ====================================================================

local activeTradeRequests = {}
local activeTrades = {} -- [tradeId] = { p1, p2, p1_offer, p2_offer, p1_ready, p2_ready }

local TradeEvolutions = {
    [64] = { evolveInto = 65, name = "Alakazam" }, -- Kadabra -> Alakazam
    [67] = { evolveInto = 68, name = "Machamp" },  -- Machoke -> Machamp
    [75] = { evolveInto = 76, name = "Golem" },    -- Graveler -> Golem
    [93] = { evolveInto = 94, name = "Gengar" },   -- Haunter -> Gengar
    [61] = { evolveInto = 186, name = "Politoed", item = "kingsrock" },
    [79] = { evolveInto = 199, name = "Slowking", item = "kingsrock" },
    [95] = { evolveInto = 208, name = "Steelix", item = "metalcoat" },
    [123] = { evolveInto = 212, name = "Scizor", item = "metalcoat" },
    [117] = { evolveInto = 230, name = "Kingdra", item = "dragonscale" }
}

-- Trade Command
RegisterCommand('trade', function(source, args)
    local targetId = tonumber(args[1])
    if not targetId or targetId == source then
        PokeCore.Functions.Notify(source, 'Usage: /trade [playerId]', 'error')
        return
    end

    local sender = PokeCore.Functions.GetPlayer(source)
    local target = PokeCore.Functions.GetPlayer(targetId)

    if not sender or not target then
        PokeCore.Functions.Notify(source, 'Player not found.', 'error')
        return
    end

    activeTradeRequests[targetId] = { sender = source, timestamp = os.time() }

    local sName = sender.PlayerData.charinfo.firstname .. ' ' .. sender.PlayerData.charinfo.lastname
    local tName = target.PlayerData.charinfo.firstname .. ' ' .. target.PlayerData.charinfo.lastname

    PokeCore.Functions.Notify(source, string.format('Sent trade request to Trainer %s.', tName), 'info')
    PokeCore.Functions.Notify(targetId, string.format('Trainer %s wants to trade Pokémon with you! Type /accepttrade or /denytrade', sName), 'success')
end)

-- Accept Trade
RegisterCommand('accepttrade', function(source)
    local req = activeTradeRequests[source]
    if not req or (os.time() - req.timestamp > 45) then
        PokeCore.Functions.Notify(source, 'No active trade request or request expired.', 'error')
        return
    end

    local p1 = req.sender
    local p2 = source
    activeTradeRequests[source] = nil

    local player1 = PokeCore.Functions.GetPlayer(p1)
    local player2 = PokeCore.Functions.GetPlayer(p2)

    if not player1 or not player2 then
        PokeCore.Functions.Notify(source, 'Trainer is no longer online.', 'error')
        return
    end

    local tradeId = "trade_" .. p1 .. "_" .. p2
    activeTrades[tradeId] = {
        id = tradeId,
        p1 = p1,
        p2 = p2,
        p1_offer = nil,
        p2_offer = nil,
        p1_ready = false,
        p2_ready = false
    }

    TriggerClientEvent('pokefivem:client:openTradeUI', p1, tradeId, player2.PlayerData.charinfo)
    TriggerClientEvent('pokefivem:client:openTradeUI', p2, tradeId, player1.PlayerData.charinfo)
end)

-- Deny Trade
RegisterCommand('denytrade', function(source)
    local req = activeTradeRequests[source]
    if req then
        PokeCore.Functions.Notify(req.sender, 'Trainer declined the trade.', 'error')
        PokeCore.Functions.Notify(source, 'Trade declined.', 'info')
        activeTradeRequests[source] = nil
    end
end)

-- Submit Offer
RegisterNetEvent('pokefivem:server:offerTradePokemon', function(tradeId, pokemonDbId)
    local src = source
    local trade = activeTrades[tradeId]
    if not trade then return end

    local isP1 = (src == trade.p1)
    if isP1 then
        trade.p1_offer = pokemonDbId
        trade.p1_ready = false
    else
        trade.p2_offer = pokemonDbId
        trade.p2_ready = false
    end

    local opponent = isP1 and trade.p2 or trade.p1
    TriggerClientEvent('pokefivem:client:syncTradeOffer', opponent, pokemonDbId)
end)

-- Confirm & Execute Trade
RegisterNetEvent('pokefivem:server:confirmTrade', function(tradeId)
    local src = source
    local trade = activeTrades[tradeId]
    if not trade then return end

    if src == trade.p1 then trade.p1_ready = true end
    if src == trade.p2 then trade.p2_ready = true end

    -- When both ready, execute exchange
    if trade.p1_ready and trade.p2_ready then
        local player1 = PokeCore.Functions.GetPlayer(trade.p1)
        local player2 = PokeCore.Functions.GetPlayer(trade.p2)

        if player1 and player2 and trade.p1_offer and trade.p2_offer then
            local c1 = player1.PlayerData.citizenid
            local c2 = player2.PlayerData.citizenid

            -- Swap ownership in database
            MySQL.query.await('UPDATE pokefivem_pokemon SET owner = ? WHERE id = ?', { c2, trade.p1_offer })
            MySQL.query.await('UPDATE pokefivem_pokemon SET owner = ? WHERE id = ?', { c1, trade.p2_offer })

            -- Check Trade Evolutions
            local mon1 = MySQL.single.await('SELECT pokedex_id, nickname FROM pokefivem_pokemon WHERE id = ?', { trade.p1_offer })
            local mon2 = MySQL.single.await('SELECT pokedex_id, nickname FROM pokefivem_pokemon WHERE id = ?', { trade.p2_offer })

            if mon1 and TradeEvolutions[mon1.pokedex_id] then
                local evo = TradeEvolutions[mon1.pokedex_id]
                MySQL.query('UPDATE pokefivem_pokemon SET pokedex_id = ?, nickname = ? WHERE id = ?', { evo.evolveInto, evo.name, trade.p1_offer })
                PokeCore.Functions.Notify(trade.p2, string.format("What? %s is evolving into %s through trade!", mon1.nickname or "Pokémon", evo.name), 'success')
            end

            if mon2 and TradeEvolutions[mon2.pokedex_id] then
                local evo = TradeEvolutions[mon2.pokedex_id]
                MySQL.query('UPDATE pokefivem_pokemon SET pokedex_id = ?, nickname = ? WHERE id = ?', { evo.evolveInto, evo.name, trade.p2_offer })
                PokeCore.Functions.Notify(trade.p1, string.format("What? %s is evolving into %s through trade!", mon2.nickname or "Pokémon", evo.name), 'success')
            end

            TriggerClientEvent('pokefivem:client:tradeSuccess', trade.p1)
            TriggerClientEvent('pokefivem:client:tradeSuccess', trade.p2)
            activeTrades[tradeId] = nil
        end
    end
end)

