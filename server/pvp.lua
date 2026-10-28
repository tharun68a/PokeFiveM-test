-- ====================================================================
-- PokeFiveM Framework - Player vs Player (PvP) Duel System
-- Developed by: Pika Studio
-- Standalone Architecture (Zero ESX Dependency)
-- ====================================================================

local activeDuelRequests = {} -- [targetId] = { challenger = src, time = os.time() }
local activeDuels = {} -- [duelId] = { p1 = src1, p2 = src2, p1_lead = {}, p2_lead = {}, turn = src1 }

-- Challenge Command
RegisterCommand('challenge', function(source, args)
    local targetId = tonumber(args[1])
    if not targetId or targetId == source then
        PokeCore.Functions.Notify(source, 'Usage: /challenge [playerId]', 'error')
        return
    end

    local challenger = PokeCore.Functions.GetPlayer(source)
    local target = PokeCore.Functions.GetPlayer(targetId)

    if not challenger or not target then
        PokeCore.Functions.Notify(source, 'Player not found.', 'error')
        return
    end

    local cParty = challenger.Functions.GetParty()
    local tParty = target.Functions.GetParty()

    if #cParty == 0 then
        PokeCore.Functions.Notify(source, 'You have no conscious Pokémon in your party!', 'error')
        return
    end

    if #tParty == 0 then
        PokeCore.Functions.Notify(source, 'The opponent has no conscious Pokémon in their party!', 'error')
        return
    end

    activeDuelRequests[targetId] = { challenger = source, timestamp = os.time() }

    local cName = challenger.PlayerData.charinfo.firstname .. ' ' .. challenger.PlayerData.charinfo.lastname
    local tName = target.PlayerData.charinfo.firstname .. ' ' .. target.PlayerData.charinfo.lastname

    PokeCore.Functions.Notify(source, string.format('Challenged Trainer %s to a Pokémon duel!', tName), 'info')
    PokeCore.Functions.Notify(targetId, string.format('Trainer %s challenged you to a Pokémon duel! Type /acceptduel or /denyduel', cName), 'success')
end)

-- Accept Duel
RegisterCommand('acceptduel', function(source)
    local req = activeDuelRequests[source]
    if not req or (os.time() - req.timestamp > 45) then
        PokeCore.Functions.Notify(source, 'No active duel request or request expired.', 'error')
        return
    end

    local p1 = req.challenger
    local p2 = source
    activeDuelRequests[source] = nil

    local player1 = PokeCore.Functions.GetPlayer(p1)
    local player2 = PokeCore.Functions.GetPlayer(p2)

    if not player1 or not player2 then
        PokeCore.Functions.Notify(source, 'Challenger is no longer online.', 'error')
        return
    end

    local duelId = "duel_" .. p1 .. "_" .. p2
    local p1Party = player1.Functions.GetParty()
    local p2Party = player2.Functions.GetParty()

    activeDuels[duelId] = {
        id = duelId,
        p1 = p1,
        p2 = p2,
        p1_lead = p1Party[1],
        p2_lead = p2Party[1],
        turn = p1
    }

    TriggerClientEvent('pokefivem:client:startPvPDuel', p1, duelId, player2.PlayerData.charinfo, p2Party[1], true)
    TriggerClientEvent('pokefivem:client:startPvPDuel', p2, duelId, player1.PlayerData.charinfo, p1Party[1], false)

    PokeCore.Functions.Notify(p1, 'Duel accepted! Battle commencing...', 'success')
    PokeCore.Functions.Notify(p2, 'Duel accepted! Battle commencing...', 'success')
end)

-- Deny Duel
RegisterCommand('denyduel', function(source)
    local req = activeDuelRequests[source]
    if req then
        PokeCore.Functions.Notify(req.challenger, 'Trainer declined your duel request.', 'error')
        PokeCore.Functions.Notify(source, 'Declined duel challenge.', 'info')
        activeDuelRequests[source] = nil
    end
end)

-- PvP Action Handler
RegisterNetEvent('pokefivem:server:pvpAction', function(duelId, actionType, actionData)
    local src = source
    local duel = activeDuels[duelId]
    if not duel then return end

    local opponent = (src == duel.p1) and duel.p2 or duel.p1

    if actionType == 'attack' then
        local moveName = actionData.move
        local damage = actionData.damage or 25

        TriggerClientEvent('pokefivem:client:syncPvPAttack', opponent, moveName, damage)
        TriggerClientEvent('pokefivem:client:notify', opponent, string.format('Opponent used %s, dealing %d damage!', moveName, damage), 'info')
    elseif actionType == 'forfeit' then
        TriggerClientEvent('pokefivem:client:endPvPDuel', duel.p1, opponent)
        TriggerClientEvent('pokefivem:client:endPvPDuel', duel.p2, opponent)
        activeDuels[duelId] = nil
    end
end)
