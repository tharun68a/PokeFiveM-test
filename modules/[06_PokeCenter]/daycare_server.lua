-- ====================================================================
-- PokeFiveM Framework - Daycare & Egg Breeding Engine
-- Developed by: Pika Studio
-- Standalone Architecture (Zero ESX Dependency)
-- ====================================================================

local daycarePairs = {} -- [citizenid] = { mon1 = {}, mon2 = {}, deposit_time = os.time(), egg_ready = false }

RegisterNetEvent('pokefivem:server:daycareDeposit', function(p1Id, p2Id)
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    local cid = player.PlayerData.citizenid

    if daycarePairs[cid] then
        PokeCore.Functions.Notify(src, 'You already have Pokémon in the Daycare!', 'error')
        return
    end

    if not player.Functions.RemoveMoney('pokedollars', 500, 'Daycare Deposit Fee') then
        PokeCore.Functions.Notify(src, 'You need ₽500 for the Daycare deposit fee!', 'error')
        return
    end

    -- Mark deposit
    daycarePairs[cid] = {
        p1 = p1Id,
        p2 = p2Id,
        deposit_time = os.time(),
        egg_ready = false
    }

    PokeCore.Functions.Log('Daycare', string.format('Trainer %s deposited Pokémon #%s and #%s to Daycare (Fee: ₽500).', player.PlayerData.name, tostring(p1Id), tostring(p2Id)), 'info')
    PokeCore.Functions.Notify(src, 'Pokémon deposited at the Daycare! Check back later for an Egg.', 'success')
end)

RegisterNetEvent('pokefivem:server:checkDaycare', function()
    local src = source
    local player = PokeCore.Functions.GetPlayer(src)
    if not player then return end

    local cid = player.PlayerData.citizenid
    local data = daycarePairs[cid]

    if not data then
        PokeCore.Functions.Notify(src, 'You have no Pokémon deposited at the Daycare.', 'info')
        return
    end

    -- Check if egg is ready (after 5 minutes or travel)
    local elapsed = os.time() - data.deposit_time
    if elapsed > 300 and not data.egg_ready then
        data.egg_ready = true
    end

    if data.egg_ready then
        -- Generate Egg in Party
        local party = player.Functions.GetParty()
        if #party >= 6 then
            PokeCore.Functions.Notify(src, 'Your Daycare has an Egg, but your Party is full! Deposit a Pokémon in the PC first.', 'error')
            return
        end

        -- Determine baby species from parent
        local parentMon = MySQL.single.await('SELECT pokedex_id FROM pokefivem_pokemon WHERE id = ?', { data.p1 })
        local babyDexId = parentMon and parentMon.pokedex_id or 25 -- default to Pikachu / Pichu

        local eggPokemon = {
            owner = cid,
            pokedex_id = babyDexId,
            name = "Mystery Egg",
            level = 1,
            is_egg = true,
            egg_steps = 1500,
            is_shiny = (math.random(1, 512) == 1), -- Masuda boosted shiny rate
            storage_type = "party",
            storage_index = #party + 1
        }

        MySQL.insert([[
            INSERT INTO pokefivem_pokemon (owner, pokedex_id, nickname, level, current_hp, max_hp, ivs, evs, moves, is_shiny, storage_type, storage_index)
            VALUES (?, ?, ?, 1, 20, 20, '{"hp":31,"attack":31,"defense":31,"speed":31,"spatk":31,"spdef":31}', '{"hp":0,"attack":0,"defense":0,"speed":0,"spatk":0,"spdef":0}', '["tackle"]', ?, 'party', ?)
        ]], { cid, babyDexId, "Mystery Egg", eggPokemon.is_shiny and 1 or 0, eggPokemon.storage_index }, function(eggId)
            PokeCore.Functions.Log('Daycare', string.format('Trainer %s received a Pokémon Egg (Species #%d%s) from Daycare.', player.PlayerData.name, babyDexId, eggPokemon.is_shiny and ' ★SHINY★' or ''), 'info')
        end)

        data.egg_ready = false
        data.deposit_time = os.time()

        PokeCore.Functions.Notify(src, 'The Daycare Lady found an Egg! It was placed in your Party. Walk to hatch it!', 'success')
    else
        local remaining = math.max(0, 300 - elapsed)
        PokeCore.Functions.Notify(src, string.format('The Pokémon are getting along well! Check back in %d seconds.', remaining), 'info')
    end
end)

