-- ====================================================================
-- PokeFiveM Framework - Server Quests & Story Missions Engine
-- Developed by: Pika Studio
-- Standalone Architecture (Zero ESX Dependency)
-- ====================================================================

-- Handle Quest Interaction
RegisterNetEvent('pokefivem:server:interactQuest', function(questId)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    local quest = PokeCore.Shared.Quests[questId]
    if not quest then return end

    local metadata = player.Functions.GetMetaData() or {}
    metadata.quests = metadata.quests or {}

    local qState = metadata.quests[questId] or { status = "not_started", progress = 0 }

    if qState.status == "completed" then
        PokeCore.Functions.Notify(src, string.format("You have already completed %s!", quest.title), 'info')
        return
    end

    if qState.status == "not_started" then
        qState.status = "in_progress"
        qState.progress = 0
        metadata.quests[questId] = qState
        player.Functions.SetMetaData('quests', metadata.quests)
        PokeCore.Functions.Notify(src, string.format("Quest Started: %s\n%s", quest.title, quest.description), 'success')
        return
    end

    -- If in progress, check completion criteria
    if qState.status == "in_progress" then
        if quest.type == "catch" then
            if qState.progress >= quest.target_count then
                CompleteQuest(player, quest, qState)
            else
                PokeCore.Functions.Notify(src, string.format("Progress: %d / %d Pokémon caught.", qState.progress, quest.target_count), 'info')
            end
        elseif quest.type == "fossil" then
            if player.Functions.RemoveItem(quest.required_item, 1) then
                CompleteQuest(player, quest, qState)
                if quest.reward_pokemon then
                    TriggerEvent('pokefivem:server:givePokemonToPlayer', src, quest.reward_pokemon.pokedex_id, quest.reward_pokemon.level, false)
                end
            else
                PokeCore.Functions.Notify(src, string.format("You need 1x %s to resurrect this Pokémon!", quest.required_item), 'error')
            end
        elseif quest.type == "battle" then
            -- Trigger battle with grunt
            TriggerClientEvent('pokefivem:client:startQuestBattle', src, quest)
        end
    end
end)

function CompleteQuest(player, quest, qState)
    qState.status = "completed"
    local metadata = player.Functions.GetMetaData() or {}
    metadata.quests = metadata.quests or {}
    metadata.quests[quest.id] = qState
    player.Functions.SetMetaData('quests', metadata.quests)

    if quest.reward.money then
        player.Functions.AddMoney('pokedollars', quest.reward.money, 'Quest: ' .. quest.title)
    end

    if quest.reward.items then
        for _, it in ipairs(quest.reward.items) do
            player.Functions.AddItem(it.name, it.count)
        end
    end

    PlaySoundFrontend(-1, "LOCAL_PLYR_CASH_COUNTER_COMPLETE", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", true)
    PokeCore.Functions.Notify(player.PlayerData.source, string.format("🏆 Quest Completed: %s! Rewards received.", quest.title), 'success')
end

-- Catch Event Hook for Quests
AddEventHandler('pokefivem:server:onPokemonCaught', function(src, pokedexId)
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    local metadata = player.Functions.GetMetaData() or {}
    local quests = metadata.quests or {}

    for qId, qData in pairs(quests) do
        local qConf = PokeCore.Shared.Quests[qId]
        if qConf and qConf.type == "catch" and qData.status == "in_progress" then
            qData.progress = (qData.progress or 0) + 1
            player.Functions.SetMetaData('quests', quests)
            PokeCore.Functions.Notify(src, string.format("Quest Progress [%s]: %d / %d", qConf.title, qData.progress, qConf.target_count), 'info')
        end
    end
end)
