-- ====================================================================
-- PokeFiveM Battle Engine (Turn-Based Wild & PvP)
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

ActiveBattles = {}
local battleCounter = 5000

-- Initiate Battle with Wild Pokemon
RegisterNetEvent('pokefivem:server:startWildBattle', function(wildId)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    local wild = ActiveWildPokemon[wildId]
    if not wild or wild.inBattle then
        PokeCore.Functions.Notify(src, "That Pokémon is no longer available!", 'error')
        return
    end

    GetPlayerParty(player.PlayerData.citizenid, function(party)
        -- Find first conscious pokemon
        local lead = nil
        for _, p in ipairs(party) do
            if p.current_hp > 0 and p.status ~= 'fainted' then
                lead = p
                break
            end
        end

        if not lead then
            PokeCore.Functions.Notify(src, "All your Pokémon have fainted! Visit a PokéCenter.", 'error')
            return
        end

        wild.inBattle = true
        battleCounter = battleCounter + 1
        local battleId = "battle_" .. tostring(battleCounter)

        ActiveBattles[battleId] = {
            id = battleId,
            type = 'wild',
            playerSrc = src,
            wildId = wildId,
            playerParty = party,
            playerLead = lead,
            wildPokemon = wild,
            turn = 1,
            state = 'awaiting_player'
        }

        RegisterPokedexEntry(src, wild.pokedex_id, false) -- Seen

        TriggerClientEvent('pokefivem:client:startBattle', src, {
            battleId = battleId,
            battleType = 'wild',
            lead = lead,
            opponent = wild
        })
    end)
end)

-- Execute Player Turn Action
RegisterNetEvent('pokefivem:server:battleAction', function(battleId, actionType, data)
    local src = source
    local battle = ActiveBattles[battleId]
    if not battle or battle.playerSrc ~= src then return end
    local player = PokeCore.Functions.GetPlayer(src)

    if actionType == 'run' then
        -- Run Away Check
        local playerSpeed = (battle.playerLead.stats and battle.playerLead.stats.speed) or 50
        local wildSpeed = PokeUtils.CalculateStat(GetPokedexEntry(battle.wildPokemon.pokedex_id).baseStats.speed, battle.wildPokemon.ivs.speed, 0, battle.wildPokemon.level)

        if playerSpeed >= wildSpeed or math.random(1, 100) <= 85 then
            TriggerClientEvent('pokefivem:client:battleEnded', src, { reason = 'ran', message = _L('battle_ran') })
            EndBattle(battleId, false)
        else
            TriggerClientEvent('pokefivem:client:battleLog', src, "Couldn't get away!")
            ExecuteWildTurn(battle)
        end

    elseif actionType == 'attack' then
        local moveKey = data.moveKey
        local pMove = GetMove(moveKey)
        if not pMove then return end

        local playerSpeed = (battle.playerLead.stats and battle.playerLead.stats.speed) or 50
        local wildSpeed = PokeUtils.CalculateStat(GetPokedexEntry(battle.wildPokemon.pokedex_id).baseStats.speed, battle.wildPokemon.ivs.speed, 0, battle.wildPokemon.level)
        local pPriority = pMove.priority or 0

        -- Wild picks random move
        local wMoveObj = battle.wildPokemon.moves[math.random(1, #battle.wildPokemon.moves)]
        local wMove = GetMove(wMoveObj and wMoveObj.key or "Tackle")
        local wPriority = wMove.priority or 0

        local playerFirst = true
        if pPriority == wPriority then
            playerFirst = (playerSpeed >= wildSpeed)
        else
            playerFirst = (pPriority > wPriority)
        end

        if playerFirst then
            -- Player attacks first
            ExecuteAttack(battle, 'player', pMove, function(wildFainted)
                if wildFainted then
                    HandleWildFainted(battle)
                else
                    ExecuteAttack(battle, 'wild', wMove, function(playerFainted)
                        if playerFainted then
                            HandlePlayerFainted(battle)
                        else
                            TriggerClientEvent('pokefivem:client:nextTurn', src, battle.turn + 1)
                            battle.turn = battle.turn + 1
                        end
                    end)
                end
            end)
        else
            -- Wild attacks first
            ExecuteAttack(battle, 'wild', wMove, function(playerFainted)
                if playerFainted then
                    HandlePlayerFainted(battle)
                else
                    ExecuteAttack(battle, 'player', pMove, function(wildFainted)
                        if wildFainted then
                            HandleWildFainted(battle)
                        else
                            TriggerClientEvent('pokefivem:client:nextTurn', src, battle.turn + 1)
                            battle.turn = battle.turn + 1
                        end
                    end)
                end
            end)
        end

    elseif actionType == 'throw_ball' then
        local ballKey = data.ballKey or 'pokeball'

        if not player or player.Functions.GetItemCount(ballKey) <= 0 then
            PokeCore.Functions.Notify(src, _L('no_pokeballs'), 'error')
            return
        end

        player.Functions.RemoveItem(ballKey, 1)

        local caught, shakes = PokeUtils.CalculateCatch(battle.wildPokemon, ballKey)

        TriggerClientEvent('pokefivem:client:ballThrowResult', src, {
            ballKey = ballKey,
            caught = caught,
            shakes = shakes,
            pokemonName = battle.wildPokemon.name
        })

        if caught then
            SetTimeout(3500, function()
                HandleCaptureSuccess(battle, ballKey)
            end)
        else
            -- Pokemon broke free; wild gets a counter attack
            SetTimeout(3000, function()
                local wMoveObj = battle.wildPokemon.moves[math.random(1, #battle.wildPokemon.moves)]
                local wMove = GetMove(wMoveObj and wMoveObj.key or "Tackle")
                ExecuteAttack(battle, 'wild', wMove, function(playerFainted)
                    if playerFainted then
                        HandlePlayerFainted(battle)
                    else
                        TriggerClientEvent('pokefivem:client:nextTurn', src, battle.turn + 1)
                        battle.turn = battle.turn + 1
                    end
                end)
            end)
        end
    end
end)

-- Execute Damage & Accuracy for Attack
function ExecuteAttack(battle, attackerRole, move, callback)
    local src = battle.playerSrc
    local attacker = (attackerRole == 'player') and battle.playerLead or battle.wildPokemon
    local defender = (attackerRole == 'player') and battle.wildPokemon or battle.playerLead

    local roll = math.random(1, 100)
    if roll > (move.accuracy or 100) then
        TriggerClientEvent('pokefivem:client:battleAnimation', src, {
            attacker = attackerRole,
            move = move.name,
            missed = true
        })
        if callback then callback(false) end
        return
    end

    local dmg, typeMult, isCrit, effectiveness = PokeUtils.CalculateDamage(attacker, defender, move.name)
    defender.current_hp = math.max(0, defender.current_hp - dmg)

    if attackerRole == 'wild' then
        DB.execute('UPDATE `pokefivem_pokemon` SET `current_hp` = ? WHERE `id` = ?', {
            defender.current_hp, defender.id
        })
    end

    TriggerClientEvent('pokefivem:client:battleAnimation', src, {
        attacker = attackerRole,
        move = move.name,
        damage = dmg,
        isCrit = isCrit,
        typeMult = typeMult,
        effectiveness = effectiveness,
        defenderHp = defender.current_hp,
        defenderMaxHp = defender.max_hp
    })

    local fainted = (defender.current_hp <= 0)
    if callback then callback(fainted) end
end

-- Handle Wild Pokémon Defeated
function HandleWildFainted(battle)
    local src = battle.playerSrc
    local player = PokeCore.Functions.GetPlayer(src)
    local exp = PokeUtils.CalculateExpReward(battle.wildPokemon.pokedex_id, battle.wildPokemon.level)

    -- Give monetary reward (Pokédollars ₽)
    local pokeDollarReward = math.random(80, 250) * battle.wildPokemon.level
    if player then
        player.Functions.AddMoney('pokedollars', pokeDollarReward, 'Wild Battle Victory')
    end

    AddPokemonExperience(src, battle.playerLead.id, exp, function(newLevel, newExp)
        TriggerClientEvent('pokefivem:client:battleEnded', src, {
            reason = 'victory',
            message = string.format("Defeated wild %s! Gained %d EXP & ₽%d.", battle.wildPokemon.name, exp, pokeDollarReward),
            expGained = exp
        })
        EndBattle(battle.id, true)
    end)
end

-- Handle Player Pokémon Fainted
function HandlePlayerFainted(battle)
    local src = battle.playerSrc
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    DB.execute('UPDATE `pokefivem_pokemon` SET `current_hp` = 0, `status` = "fainted" WHERE `id` = ?', { battle.playerLead.id })

    GetPlayerParty(player.PlayerData.citizenid, function(party)
        local conscious = nil
        for _, p in ipairs(party) do
            if p.current_hp > 0 and p.status ~= 'fainted' then
                conscious = p
                break
            end
        end

        if conscious then
            TriggerClientEvent('pokefivem:client:promptSwitchFainted', src, party)
        else
            TriggerClientEvent('pokefivem:client:battleEnded', src, {
                reason = 'defeat',
                message = _L('battle_lost')
            })
            EndBattle(battle.id, false)
            TriggerClientEvent('pokefivem:client:playerBlackout', src)
        end
    end)
end

-- Handle Capture Success
function HandleCaptureSuccess(battle, ballKey)
    local src = battle.playerSrc
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end
    local wild = battle.wildPokemon

    RegisterPokedexEntry(src, wild.pokedex_id, true)

    GetPlayerParty(player.PlayerData.citizenid, function(party)
        local isPartyFull = (#party >= (Config.MaxPartySize or 6))
        local storageType = isPartyFull and 'box' or 'party'
        local storageIndex = isPartyFull and 0 or (#party + 1)
        local targetBox = isPartyFull and 1 or nil

        CreatePokemon(player.PlayerData.citizenid, wild.pokedex_id, wild.level, {
            nickname = wild.name,
            nature = wild.nature,
            isShiny = wild.is_shiny,
            ivs = wild.ivs,
            evs = wild.evs,
            moves = wild.moves,
            storageType = storageType,
            storageIndex = storageIndex,
            boxNumber = targetBox,
            caughtBall = ballKey
        }, function(newPoke)
            TriggerClientEvent('pokefivem:client:battleEnded', src, {
                reason = 'caught',
                message = isPartyFull and _L('party_full_sent_pc', wild.name, targetBox) or _L('pokemon_caught', wild.name),
                pokemon = newPoke
            })
            EndBattle(battle.id, true)
            TriggerEvent('pokefivem:server:refreshParty', src)
        end)
    end)
end

-- Clean up Battle
function EndBattle(battleId, removeWild)
    local battle = ActiveBattles[battleId]
    if not battle then return end

    if battle.wildId and ActiveWildPokemon[battle.wildId] then
        if removeWild then
            TriggerClientEvent('pokefivem:client:despawnWildPokemon', -1, battle.wildId)
            ActiveWildPokemon[battle.wildId] = nil
        else
            ActiveWildPokemon[battle.wildId].inBattle = false
        end
    end

    ActiveBattles[battleId] = nil
end


-- Capture From Overworld Physical Ball Throw
RegisterNetEvent('pokefivem:server:captureWildFromThrow', function(wildId, ballKey)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    local wild = ActiveWildPokemon[wildId]
    if not wild then return end

    player.Functions.RemoveItem(ballKey, 1)
    RegisterPokedexEntry(src, wild.pokedex_id, true)

    GetPlayerParty(player.PlayerData.citizenid, function(party)
        local isPartyFull = (#party >= (Config.MaxPartySize or 6))
        local storageType = isPartyFull and 'box' or 'party'
        local storageIndex = isPartyFull and 0 or (#party + 1)
        local targetBox = isPartyFull and 1 or nil

        CreatePokemon(player.PlayerData.citizenid, wild.pokedex_id, wild.level, {
            nickname = wild.name,
            nature = wild.nature,
            isShiny = wild.is_shiny,
            ivs = wild.ivs,
            evs = wild.evs,
            moves = wild.moves,
            storageType = storageType,
            storageIndex = storageIndex,
            boxNumber = targetBox,
            caughtBall = ballKey
        }, function(newPoke)
            TriggerClientEvent('pokefivem:client:notify', src, isPartyFull and _L('party_full_sent_pc', wild.name, targetBox) or _L('pokemon_caught', wild.name), 'success')
            TriggerEvent('pokefivem:server:refreshParty', src)
            TriggerClientEvent('pokefivem:client:despawnWildPokemon', -1, wildId)
            ActiveWildPokemon[wildId] = nil
        end)
    end)
end)
