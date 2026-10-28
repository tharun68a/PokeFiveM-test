-- ====================================================================
-- PokeFiveM Framework - Native Inventory & Usable Items Engine
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

PokeCore.UseableItems = PokeCore.UseableItems or {}

-- Register Usable Item Callback
function PokeCore.Functions.CreateUseableItem(item, cb)
    PokeCore.UseableItems[string.lower(item)] = cb
end

function PokeCore.Functions.CanUseItem(item)
    return PokeCore.UseableItems[string.lower(item)] ~= nil
end

function PokeCore.Functions.UseItem(src, item)
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    local it = player.Functions.GetItemByName(item)
    if not it or it.count <= 0 then return end

    local cb = PokeCore.UseableItems[string.lower(item)]
    if cb then
        PokeCore.Functions.Log('Item', string.format('Trainer %s used item %s.', player.PlayerData.name, item), 'debug')
        cb(src, it)
    end
end

-- Client requests to use item
RegisterNetEvent('pokefivem:server:useItem', function(itemName, targetSlot)
    local src = source
    PokeCore.Functions.UseItem(src, itemName)
end)

-- Register Default Usable Items
PokeCore.Functions.CreateUseableItem('water', function(source, item)
    local player = PokeCore.Functions.GetPlayer(source)
    if player.Functions.RemoveItem(item.name, 1) then
        local thirst = math.min(100, (player.Functions.GetMetaData('thirst') or 100) + 35)
        player.Functions.SetMetaData('thirst', thirst)
        TriggerClientEvent('pokefivem:client:playConsumeAnim', source, 'drink')
        PokeCore.Functions.Notify(source, 'You drank refreshing spring water.', 'success')
    end
end)

PokeCore.Functions.CreateUseableItem('sandwich', function(source, item)
    local player = PokeCore.Functions.GetPlayer(source)
    if player.Functions.RemoveItem(item.name, 1) then
        local hunger = math.min(100, (player.Functions.GetMetaData('hunger') or 100) + 40)
        player.Functions.SetMetaData('hunger', hunger)
        TriggerClientEvent('pokefivem:client:playConsumeAnim', source, 'eat')
        PokeCore.Functions.Notify(source, 'You ate a delicious sandwich.', 'success')
    end
end)

PokeCore.Functions.CreateUseableItem('pokedex', function(source, item)
    TriggerClientEvent('pokefivem:client:togglePokedexUI', source)
end)

-- Healing Potions
local potions = {
    ['potion'] = 20,
    ['superpotion'] = 50,
    ['hyperpotion'] = 120,
    ['maxpotion'] = 9999
}

for potName, healAmount in pairs(potions) do
    PokeCore.Functions.CreateUseableItem(potName, function(source, item)
        local player = PokeCore.Functions.GetPlayer(source)
        GetPlayerParty(player.PlayerData.citizenid, function(party)
            if not party or #party == 0 then return end
            -- Heal first damaged pokemon
            local target = nil
            for _, p in ipairs(party) do
                if p.current_hp > 0 and p.current_hp < p.max_hp then
                    target = p
                    break
                end
            end

            if not target then
                PokeCore.Functions.Notify(source, "All Pokémon in your party are at full health!", 'info')
                return
            end

            if player.Functions.RemoveItem(item.name, 1) then
                local newHp = math.min(target.max_hp, target.current_hp + healAmount)
                DB.execute('UPDATE `pokefivem_pokemon` SET `current_hp` = ? WHERE `id` = ?', { newHp, target.id }, function()
                    PokeCore.Functions.Notify(source, string.format('Healed %s for %d HP!', target.nickname or target.name, healAmount), 'success')
                    TriggerEvent('pokefivem:server:refreshParty', source)
                end)
            end
        end)
    end)
end

-- Revive
PokeCore.Functions.CreateUseableItem('revive', function(source, item)
    local player = PokeCore.Functions.GetPlayer(source)
    GetPlayerParty(player.PlayerData.citizenid, function(party)
        if not party or #party == 0 then return end
        local fainted = nil
        for _, p in ipairs(party) do
            if p.current_hp <= 0 or p.status == 'fainted' then
                fainted = p
                break
            end
        end

        if not fainted then
            PokeCore.Functions.Notify(source, "No Pokémon in your party are fainted!", 'info')
            return
        end

        if player.Functions.RemoveItem('revive', 1) then
            local reviveHp = math.floor(fainted.max_hp * 0.5)
            DB.execute('UPDATE `pokefivem_pokemon` SET `current_hp` = ?, `status` = "none" WHERE `id` = ?', { reviveHp, fainted.id }, function()
                PokeCore.Functions.Notify(source, string.format('Revived %s!', fainted.nickname or fainted.name), 'success')
                TriggerEvent('pokefivem:server:refreshParty', source)
            end)
        end
    end)
end)

-- Rare Candy
PokeCore.Functions.CreateUseableItem('rarecandy', function(source, item)
    local player = PokeCore.Functions.GetPlayer(source)
    GetPlayerParty(player.PlayerData.citizenid, function(party)
        if not party or #party == 0 then return end
        local lead = party[1]
        if lead.level >= 100 then
            PokeCore.Functions.Notify(source, string.format('%s is already at max level (100)!', lead.nickname or lead.name), 'error')
            return
        end

        if player.Functions.RemoveItem('rarecandy', 1) then
            local pData = GetPokedexEntry(lead.pokedex_id)
            local targetLevel = lead.level + 1
            local targetExp = PokeUtils.GetExpForLevel(targetLevel, pData.growthRate)
            local diff = targetExp - lead.exp
            AddPokemonExperience(source, lead.id, diff)
        end
    end)
end)

-- Buy Item at PokéMart
RegisterNetEvent('pokefivem:server:buyMartItem', function(itemKey, amount)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    amount = math.max(1, tonumber(amount) or 1)
    local itemDef = PokeCore.Shared.Items[itemKey]
    if not itemDef or not itemDef.price then return end

    local totalPrice = itemDef.price * amount

    -- Pay using Pokédollars first, or Cash fallback
    local pdBalance = player.Functions.GetMoney('pokedollars')
    local cashBalance = player.Functions.GetMoney('cash')

    if pdBalance >= totalPrice then
        player.Functions.RemoveMoney('pokedollars', totalPrice, 'PokéMart Purchase')
        player.Functions.AddItem(itemKey, amount)
        PokeCore.Functions.Log('Economy', string.format('Trainer %s bought %dx %s at PokéMart for ₽%d.', player.PlayerData.name, amount, itemDef.label, totalPrice), 'info')
        PokeCore.Functions.Notify(src, string.format('Purchased %dx %s for ₽%d!', amount, itemDef.label, totalPrice), 'success')
    elseif cashBalance >= totalPrice then
        player.Functions.RemoveMoney('cash', totalPrice, 'PokéMart Purchase')
        player.Functions.AddItem(itemKey, amount)
        PokeCore.Functions.Log('Economy', string.format('Trainer %s bought %dx %s at PokéMart for $%d.', player.PlayerData.name, amount, itemDef.label, totalPrice), 'info')
        PokeCore.Functions.Notify(src, string.format('Purchased %dx %s for $%d!', amount, itemDef.label, totalPrice), 'success')
    else
        PokeCore.Functions.Notify(src, _L('not_enough_money'), 'error')
    end
end)
