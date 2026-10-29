-- ====================================================================
-- PokeFiveM Framework - Gym Leader Progression Engine
-- Developed by: Pika Studio
-- Standalone Architecture (Zero ESX Dependency)
-- ====================================================================

RegisterNetEvent('pokefivem:server:challengeGym', function(gymId)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    local gym = PokeCore.Shared.Gyms[gymId]
    if not gym then
        PokeCore.Functions.Notify(src, 'Invalid Gym Leader.', 'error')
        return
    end

    local metadata = player.Functions.GetMetaData() or {}
    local badges = metadata.badges or {}

    -- Check if trainer already has this badge
    for _, b in ipairs(badges) do
        if b == gym.badge then
            PokeCore.Functions.Notify(src, string.format('You have already defeated %s and earned the %s!', gym.leader, gym.badge), 'info')
            return
        end
    end

    local party = player.Functions.GetParty()
    if not party or #party == 0 then
        PokeCore.Functions.Notify(src, 'You have no conscious Pokémon in your party!', 'error')
        return
    end

    -- Initiate Gym Battle
    PokeCore.Functions.Log('Gyms', string.format('Trainer %s (Src: %s) challenged Gym Leader %s (%s, %s).', player.PlayerData.name, src, gym.leader, gym.badge, gym.name), 'info')
    TriggerClientEvent('pokefivem:client:startGymBattle', src, gym)
end)

-- Gym Battle Victory Handler
RegisterNetEvent('pokefivem:server:gymDefeated', function(gymId)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    local gym = PokeCore.Shared.Gyms[gymId]
    if not gym then return end

    local metadata = player.Functions.GetMetaData() or {}
    metadata.badges = metadata.badges or {}

    -- Verify not duplicate
    local alreadyWon = false
    for _, b in ipairs(metadata.badges) do
        if b == gym.badge then alreadyWon = true break end
    end

    if not alreadyWon then
        table.insert(metadata.badges, gym.badge)
        player.Functions.SetMetaData('badges', metadata.badges)

        -- Award Badge & Pokédollars
        player.Functions.AddMoney('pokedollars', gym.reward_money, 'Gym Victory: ' .. gym.badge)
        if gym.reward_item then
            player.Functions.AddItem(gym.reward_item, 1)
        end

        -- Update Database Gym Leader Records
        MySQL.query([[
            INSERT INTO pokefivem_gyms (gym_id, leader_name, badge_name, defeated_by)
            VALUES (?, ?, ?, json_array(?))
            ON DUPLICATE KEY UPDATE defeated_by = json_array_append(defeated_by, '$', ?)
        ]], { gym.id, gym.leader, gym.badge, player.PlayerData.citizenid, player.PlayerData.citizenid })

        -- Global Announcement
        local trainerName = player.PlayerData.charinfo.firstname .. ' ' .. player.PlayerData.charinfo.lastname
        TriggerClientEvent('chat:addMessage', -1, {
            color = { 255, 215, 0 },
            multiline = true,
            args = { "🏆 Gym Challenge", string.format("Trainer ^3%s^0 has defeated Gym Leader ^2%s^0 and claimed the ^3%s^0!", trainerName, gym.leader, gym.badge) }
        })

        PokeCore.Functions.Log('Gyms', string.format('Trainer %s defeated Gym Leader %s and claimed %s! (Reward: ₽%d)', trainerName, gym.leader, gym.badge, gym.reward_money), 'info')
        PokeCore.Functions.Notify(src, string.format('Congratulations! You earned the %s and ₽%d!', gym.badge, gym.reward_money), 'success')
    end
end)

