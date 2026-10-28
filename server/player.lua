-- ====================================================================
-- PokeFiveM Framework - Player Entity Engine
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

PokeCore.Player = {}

-- Create a live Player object instance
function PokeCore.Player.CreatePlayer(src, data)
    local self = {}
    self.Functions = {}
    self.PlayerData = data or {}

    self.PlayerData.source = src
    self.PlayerData.name = GetPlayerName(src) or "Trainer"

    -- -------------------------------------------------------------
    -- Accounts / Money Management
    -- -------------------------------------------------------------
    self.Functions.AddMoney = function(account, amount, reason)
        amount = tonumber(amount) or 0
        if amount <= 0 then return false end
        account = string.lower(account)

        if not self.PlayerData.accounts[account] then
            self.PlayerData.accounts[account] = 0
        end

        self.PlayerData.accounts[account] = self.PlayerData.accounts[account] + amount
        self.Functions.UpdatePlayerData()
        TriggerClientEvent('pokefivem:client:onMoneyChange', self.PlayerData.source, account, amount, 'add', self.PlayerData.accounts[account])
        PokeCore.Functions.Log('Economy', string.format('Trainer %s received %d %s (Reason: %s, Balance: %d)', self.PlayerData.name, amount, account, reason or 'N/A', self.PlayerData.accounts[account]), 'info')
        return true
    end

    self.Functions.RemoveMoney = function(account, amount, reason)
        amount = tonumber(amount) or 0
        if amount <= 0 then return false end
        account = string.lower(account)

        if not self.PlayerData.accounts[account] or self.PlayerData.accounts[account] < amount then
            return false
        end

        self.PlayerData.accounts[account] = self.PlayerData.accounts[account] - amount
        self.Functions.UpdatePlayerData()
        TriggerClientEvent('pokefivem:client:onMoneyChange', self.PlayerData.source, account, amount, 'remove', self.PlayerData.accounts[account])
        PokeCore.Functions.Log('Economy', string.format('Trainer %s spent %d %s (Reason: %s, Balance: %d)', self.PlayerData.name, amount, account, reason or 'N/A', self.PlayerData.accounts[account]), 'info')
        return true
    end

    self.Functions.SetMoney = function(account, amount, reason)
        amount = tonumber(amount) or 0
        account = string.lower(account)
        self.PlayerData.accounts[account] = math.max(0, amount)
        self.Functions.UpdatePlayerData()
        TriggerClientEvent('pokefivem:client:onMoneyChange', self.PlayerData.source, account, amount, 'set', self.PlayerData.accounts[account])
        PokeCore.Functions.Log('Economy', string.format('Trainer %s %s balance set to %d (Reason: %s)', self.PlayerData.name, account, amount, reason or 'N/A'), 'info')
        return true
    end

    self.Functions.GetMoney = function(account)
        account = string.lower(account)
        return self.PlayerData.accounts[account] or 0
    end

    -- -------------------------------------------------------------
    -- Job & Duty Management
    -- -------------------------------------------------------------
    self.Functions.SetJob = function(jobName, grade)
        jobName = string.lower(jobName)
        grade = tostring(grade or 0)

        local jobDef = PokeCore.Shared.Jobs[jobName]
        if not jobDef then return false end

        local gradeDef = jobDef.grades[grade] or jobDef.grades['0']

        self.PlayerData.job = {
            name = jobName,
            label = jobDef.label,
            payment = gradeDef.payment or 50,
            onduty = jobDef.defaultDuty or true,
            isboss = gradeDef.isboss or false,
            grade = tonumber(grade),
            grade_name = gradeDef.name
        }

        self.Functions.UpdatePlayerData()
        TriggerClientEvent('pokefivem:client:onJobUpdate', self.PlayerData.source, self.PlayerData.job)
        PokeCore.Functions.Log('Job', string.format('Trainer %s job updated to %s (%s, Grade: %s)', self.PlayerData.name, jobDef.label, gradeDef.name, grade), 'info')
        return true
    end

    self.Functions.SetDuty = function(onDuty)
        self.PlayerData.job.onduty = onDuty
        self.Functions.UpdatePlayerData()
        TriggerClientEvent('pokefivem:client:onDutyChange', self.PlayerData.source, onDuty)
        return true
    end

    -- -------------------------------------------------------------
    -- Metadata Management
    -- -------------------------------------------------------------
    self.Functions.SetMetaData = function(meta, value)
        self.PlayerData.metadata[meta] = value
        self.Functions.UpdatePlayerData()
    end

    self.Functions.GetMetaData = function(meta)
        return self.PlayerData.metadata[meta]
    end

    -- -------------------------------------------------------------
    -- Native & ox_inventory Dual-Engine Support
    -- -------------------------------------------------------------
    self.Functions.AddItem = function(item, count, slot, metadata)
        count = tonumber(count) or 1
        item = string.lower(item)
        local itemInfo = PokeCore.Shared.Items[item]
        if not itemInfo then return false end

        metadata = metadata or {}

        -- If ox_inventory is running, route directly through ox_inventory
        if GetResourceState('ox_inventory') == 'started' then
            local success, response = exports.ox_inventory:AddItem(self.PlayerData.source, item, count, metadata, slot)
            if success then
                self.Functions.UpdatePlayerData()
                return true
            end
            return false
        end

        -- Check if item is already in inventory and stackable
        local found = false
        if not itemInfo.unique then
            for s, it in pairs(self.PlayerData.items) do
                if it.name == item then
                    it.count = it.count + count
                    found = true
                    break
                end
            end
        end

        if not found then
            -- Find next free slot
            slot = slot or (#self.PlayerData.items + 1)
            table.insert(self.PlayerData.items, {
                name = item,
                label = itemInfo.label,
                count = count,
                weight = itemInfo.weight or 100,
                type = itemInfo.type or 'item',
                useable = itemInfo.useable or false,
                image = itemInfo.image or (item .. '.png'),
                description = itemInfo.description or '',
                slot = slot,
                metadata = metadata
            })
        end

        self.Functions.UpdatePlayerData()
        TriggerClientEvent('pokefivem:client:onInventoryUpdate', self.PlayerData.source, self.PlayerData.items)
        return true
    end

    self.Functions.RemoveItem = function(item, count, slot)
        count = tonumber(count) or 1
        item = string.lower(item)

        if GetResourceState('ox_inventory') == 'started' then
            local success = exports.ox_inventory:RemoveItem(self.PlayerData.source, item, count, nil, slot)
            if success then
                self.Functions.UpdatePlayerData()
                return true
            end
            return false
        end

        for idx, it in ipairs(self.PlayerData.items) do
            if it.name == item and (not slot or it.slot == slot) then
                if it.count >= count then
                    it.count = it.count - count
                    if it.count <= 0 then
                        table.remove(self.PlayerData.items, idx)
                    end
                    self.Functions.UpdatePlayerData()
                    TriggerClientEvent('pokefivem:client:onInventoryUpdate', self.PlayerData.source, self.PlayerData.items)
                    return true
                end
            end
        end
        return false
    end

    self.Functions.GetItemByName = function(item)
        item = string.lower(item)
        if GetResourceState('ox_inventory') == 'started' then
            local it = exports.ox_inventory:GetItem(self.PlayerData.source, item)
            if it then
                return {
                    name = it.name,
                    label = it.label,
                    count = it.count,
                    slot = it.slot,
                    metadata = it.metadata
                }
            end
            return nil
        end
        for _, it in ipairs(self.PlayerData.items) do
            if it.name == item then
                return it
            end
        end
        return nil
    end

    self.Functions.GetItemCount = function(item)
        item = string.lower(item)
        if GetResourceState('ox_inventory') == 'started' then
            return exports.ox_inventory:GetItemCount(self.PlayerData.source, item) or 0
        end
        local total = 0
        for _, it in ipairs(self.PlayerData.items) do
            if it.name == item then
                total = total + it.count
            end
        end
        return total
    end

    -- -------------------------------------------------------------
    -- Synchronization & Database Persistence
    -- -------------------------------------------------------------
    self.Functions.UpdatePlayerData = function()
        TriggerClientEvent('pokefivem:client:syncPlayerData', self.PlayerData.source, self.PlayerData)
    end

    self.Functions.GetParty = function()
        local party = MySQL.query.await('SELECT * FROM `pokefivem_pokemon` WHERE `owner` = ? AND `storage_type` = "party" ORDER BY `storage_index` ASC', { self.PlayerData.citizenid }) or {}
        for _, mon in ipairs(party) do
            mon.ivs = json.decode(mon.ivs or '{}')
            mon.evs = json.decode(mon.evs or '{}')
            mon.moves = json.decode(mon.moves or '[]')
        end
        return party
    end

    self.Functions.GetPokedex = function()
        local row = MySQL.single.await('SELECT `seen`, `caught` FROM `pokefivem_pokedex` WHERE `citizenid` = ?', { self.PlayerData.citizenid })
        return {
            seen = json.decode(row and row.seen or '[]'),
            caught = json.decode(row and row.caught or '[]')
        }
    end

    self.Functions.Save = function()
        PokeCore.Player.Save(self.PlayerData.source)
    end

    return self
end

-- Compatibility Validator
function PokeCore.Player.CheckPlayerData(source, data)
    return PokeCore.Player.CreatePlayer(source, data)
end

-- Core Player Login Handler
function PokeCore.Player.Login(source, citizenid, newData)
    if not source or not citizenid then return false end
    local license = PokeCore.Functions.GetLicense(source)

    local charData = MySQL.single.await('SELECT * FROM `pokefivem_characters` WHERE `citizenid` = ? AND `identifier` = ?', { citizenid, license })
    if not charData then
        print(string.format('^1[PokeFiveM - ERROR] Character %s not found for license %s^7', citizenid, license))
        return false
    end

    -- Fetch character inventory
    local items = MySQL.query.await('SELECT * FROM `pokefivem_inventory` WHERE `citizenid` = ?', { citizenid }) or {}
    local inventory = {}
    for _, it in ipairs(items) do
        local def = PokeCore.Shared.Items[it.item]
        if def then
            table.insert(inventory, {
                name = it.item,
                label = def.label,
                count = it.count,
                slot = it.slot,
                weight = def.weight or 100,
                type = def.type,
                useable = def.useable,
                image = def.image,
                description = def.description,
                metadata = json.decode(it.metadata or '{}')
            })
        end
    end

    local playerData = {
        citizenid = citizenid,
        source = source,
        identifier = license,
        license = license,
        name = GetPlayerName(source),
        charinfo = json.decode(charData.charinfo or '{}'),
        job = json.decode(charData.job or '{}'),
        accounts = json.decode(charData.accounts or '{}'),
        metadata = json.decode(charData.metadata or '{}'),
        position = json.decode(charData.position or '{}'),
        items = inventory
    }

    local playerObj = PokeCore.Player.CreatePlayer(source, playerData)
    PokeCore.Players[source] = playerObj

    -- Trigger client spawn and lifecycle hooks
    TriggerClientEvent('pokefivem:client:spawnSelectedCharacter', source, playerData)
    TriggerClientEvent('pokefivem:client:onPlayerLoaded', source, playerData)
    TriggerEvent('pokefivem:server:onPlayerLoaded', citizenid, playerObj)
    TriggerEvent('pokefivem:server:refreshParty', source)

    local fullName = playerData.charinfo.firstname .. ' ' .. playerData.charinfo.lastname
    PokeCore.Functions.Notify(source, string.format('Welcome back, Trainer %s!', fullName), 'success')
    PokeCore.Functions.Log('Player', string.format('Trainer %s (%s, ID: %s) entered the world.', fullName, citizenid, source), 'info')
    return true
end

-- Core Player Logout Handler
function PokeCore.Player.Logout(source)
    local player = PokeCore.Players[source]
    if player then
        PokeCore.Player.Save(source)
        PokeCore.Players[source] = nil
        TriggerClientEvent('pokefivem:client:onPlayerLogout', source)
        TriggerClientEvent('pokefivem:client:openMulticharacter', source)
        PokeCore.Functions.Log('Player', string.format('Trainer (ID: %s) saved and logged out.', source), 'info')
    end
end

-- Save player to database
function PokeCore.Player.Save(source)
    local player = PokeCore.Players[source]
    if not player then return end

    local ped = GetPlayerPed(source)
    local coords = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)

    local pos = { x = coords.x, y = coords.y, z = coords.z, heading = heading }

    local query = [[
        UPDATE `pokefivem_characters`
        SET `charinfo` = ?, `job` = ?, `accounts` = ?, `metadata` = ?, `position` = ?
        WHERE `citizenid` = ?
    ]]

    local params = {
        json.encode(player.PlayerData.charinfo),
        json.encode(player.PlayerData.job),
        json.encode(player.PlayerData.accounts),
        json.encode(player.PlayerData.metadata),
        json.encode(pos),
        player.PlayerData.citizenid
    }

    DB.execute(query, params)

    -- Save inventory
    DB.execute('DELETE FROM `pokefivem_inventory` WHERE `citizenid` = ?', { player.PlayerData.citizenid }, function()
        for _, it in ipairs(player.PlayerData.items or {}) do
            DB.execute('INSERT INTO `pokefivem_inventory` (`citizenid`, `item`, `count`, `slot`, `metadata`) VALUES (?, ?, ?, ?, ?)', {
                player.PlayerData.citizenid, it.name, it.count, it.slot, json.encode(it.metadata or {})
            })
        end
        PokeCore.Functions.Log('Player', string.format('Saved trainer %s (%s) profile & inventory.', player.PlayerData.name, player.PlayerData.citizenid), 'debug')
    end)
end

-- Auto-Save loop every 5 minutes (Staggered across players to prevent DB load spikes)
CreateThread(function()
    while true do
        Wait(5 * 60 * 1000)
        local count = 0
        for src, _ in pairs(PokeCore.Players) do
            if PokeCore.Players[src] then
                PokeCore.Player.Save(src)
                count = count + 1
                Wait(250)
            end
        end
        if count > 0 then
            PokeCore.Functions.Log('Player', string.format('Auto-save cycle completed for %d active trainer(s).', count), 'info')
        end
    end
end)
