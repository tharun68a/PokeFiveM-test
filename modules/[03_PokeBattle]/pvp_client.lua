-- ====================================================================
-- PokeFiveM Framework - Client PvP Battle Controller
-- Developed by: Pika Studio
-- Standalone Architecture (Zero ESX Dependency)
-- ====================================================================

local currentDuel = nil

RegisterNetEvent('pokefivem:client:startPvPDuel', function(duelId, opponentInfo, opponentPokemon, isMyTurn)
    currentDuel = {
        id = duelId,
        opponent = opponentInfo,
        pokemon = opponentPokemon,
        isMyTurn = isMyTurn
    }

    InBattle = true
    SetNuiFocus(true, true)

    local leadMon = (PokeCore.PlayerData and PokeCore.PlayerData.pokemon and PokeCore.PlayerData.pokemon[1]) or {
        name = "Pikachu",
        level = 15,
        stats = { hp = 100, maxHp = 100 },
        moves = { "thundershock", "quickattack", "thunderwave", "slam" }
    }

    SendNUIMessage({
        action = "startBattle",
        battleType = "pvp",
        playerPokemon = {
            id = leadMon.id or 1,
            name = leadMon.name,
            level = leadMon.level,
            hp = (leadMon.stats and leadMon.stats.hp) or 100,
            maxHp = (leadMon.stats and leadMon.stats.maxHp) or 100,
            moves = leadMon.moves or { "tackle" }
        },
        wildPokemon = {
            name = opponentInfo.firstname .. "'s " .. opponentPokemon.name,
            level = opponentPokemon.level,
            hp = (opponentPokemon.stats and opponentPokemon.stats.hp) or 100,
            maxHp = (opponentPokemon.stats and opponentPokemon.stats.maxHp) or 100,
            isShiny = opponentPokemon.is_shiny or false
        }
    })

    PokeCore.Functions.Notify("Trainer duel started! Make your move.", "info")
end)

RegisterNetEvent('pokefivem:client:syncPvPAttack', function(moveName, damage)
    SendNUIMessage({
        action = "opponentAttack",
        move = moveName,
        damage = damage
    })
end)

RegisterNetEvent('pokefivem:client:endPvPDuel', function(winnerSrc)
    InBattle = false
    SetNuiFocus(false, false)
    SendNUIMessage({ action = "closeBattle" })
    currentDuel = nil
    PokeCore.Functions.Notify("The Pokémon duel has concluded.", "info")
end)

