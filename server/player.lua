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
        return true
    end

    self.Functions.SetMoney = function(account, amount, reason)
        amount = tonumber(amount) or 0
        account = string.lower(account)
        self.PlayerData.accounts[account] = math.max(0, amount)
        self.Functions.UpdatePlayerData()
        TriggerClientEvent('pokefivem:client:onMoneyChange', self.PlayerData.source, account, amount, 'set', self.PlayerData.accounts[account])
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
    -- Native Inventory Engine
    -- -------------------------------------------------------------
    self.Functions.AddItem = function(item, count, slot, metadata)
        count = tonumber(count) or 1
        item = string.lower(item)
        local itemInfo = PokeCore.Shared.Items[item]
        if not itemInfo then return false end

        metadata = metadata or {}

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
        for _, it in ipairs(self.PlayerData.items) do
            if it.name == item then
                return it
            end
        end
        return nil
    end

    self.Functions.GetItemCount = function(item)
        item = string.lower(item)
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

    self.Functions.Save = function()
        PokeCore.Player.Save(self.PlayerData.source)
    end

    return self
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
    end)
end

-- Auto-Save loop every 5 minutes
CreateThread(function()
    while true do
        Wait(5 * 60 * 1000)
        for src, _ in pairs(PokeCore.Players) do
            PokeCore.Player.Save(src)
        end
    end
end)
