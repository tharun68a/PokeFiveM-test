-- ====================================================================
-- PokeFiveM Wild Spawner Controller
-- Author: Pika Studio
-- ====================================================================

ActiveWildPokemon = {}
local wildIdCounter = 1000
local playerLastSpawnRequest = {}

AddEventHandler('playerDropped', function()
    local src = source
    playerLastSpawnRequest[src] = nil
end)

-- Request Spawning in a given biome / area
RegisterNetEvent('pokefivem:server:requestSpawns', function(coords, biome)
    local src = source
    if not Config.WildSpawning.Enabled then return end

    local now = os.time()
    if playerLastSpawnRequest[src] and (now - playerLastSpawnRequest[src] < 8) then
        return
    end
    playerLastSpawnRequest[src] = now

    -- Count active wild pokemons near this player
    local nearbyCount = 0
    for _, wild in pairs(ActiveWildPokemon) do
        local dist = #(wild.coords - coords)
        if dist < (Config.WildSpawning.MaxDistance or 60.0) then
            nearbyCount = nearbyCount + 1
        end
    end

    if nearbyCount >= (Config.WildSpawning.MaxWildNearby or 6) then
        return
    end

    -- Pick species from biome
    local biomeData = Config.Biomes[biome] or Config.Biomes['grass']
    local speciesList = biomeData.names
    local chosenName = speciesList[math.random(1, #speciesList)]
    local pData = GetPokedexEntry(chosenName)
    if not pData then return end

    local minLvl = biomeData.levels.min or 3
    local maxLvl = biomeData.levels.max or 25
    local level = math.random(minLvl, maxLvl)

    -- Random position offset within radius
    local angle = math.random() * 2 * math.pi
    local radius = math.random(Config.WildSpawning.MinDistance or 18, Config.WildSpawning.MaxDistance or 50)
    local spawnCoords = vector3(
        coords.x + math.cos(angle) * radius,
        coords.y + math.sin(angle) * radius,
        coords.z
    )

    wildIdCounter = wildIdCounter + 1
    local wildId = "wild_" .. tostring(wildIdCounter)

    local ivs = PokeUtils.GenerateRandomIVs()
    local nature = GetRandomNature()
    local isShiny = PokeUtils.RollShiny(false)
    local maxHp = PokeUtils.CalculateMaxHP(pData.baseStats.hp, ivs.hp, 0, level)

    -- Moves
    local moves = {}
    for _, m in ipairs(pData.moves or {}) do
        if m.level <= level then
            local moveData = GetMove(m.move)
            if moveData then
                table.insert(moves, {
                    key = m.move,
                    name = moveData.name,
                    type = moveData.type,
                    power = moveData.power,
                    accuracy = moveData.accuracy,
                    pp = moveData.pp,
                    max_pp = moveData.pp
                })
            end
        end
    end
    while #moves > 4 do table.remove(moves, 1) end
    if #moves == 0 then
        local tackle = GetMove("Tackle")
        table.insert(moves, { key = "Tackle", name = tackle.name, type = tackle.type, power = tackle.power, accuracy = tackle.accuracy, pp = tackle.pp, max_pp = tackle.pp })
    end

    ActiveWildPokemon[wildId] = {
        wildId = wildId,
        pokedex_id = pData.id,
        name = pData.name,
        level = level,
        nature = nature,
        is_shiny = isShiny,
        ivs = ivs,
        evs = PokeUtils.GenerateZeroEVs(),
        moves = moves,
        max_hp = maxHp,
        current_hp = maxHp,
        status = 'none',
        coords = spawnCoords,
        model = pData.model,
        spawnTime = os.time(),
        inBattle = false
    }

    -- Broadcast new wild pokemon to nearby players
    TriggerClientEvent('pokefivem:client:spawnWildPokemon', -1, ActiveWildPokemon[wildId])
end)

-- Periodically purge old or abandoned wild Pokémon
CreateThread(function()
    while true do
        Wait(30000)
        local now = os.time()
        for wildId, wild in pairs(ActiveWildPokemon) do
            if not wild.inBattle and (now - wild.spawnTime > (Config.WildSpawning.DespawnTimer or 300)) then
                TriggerClientEvent('pokefivem:client:despawnWildPokemon', -1, wildId)
                ActiveWildPokemon[wildId] = nil
            end
        end
    end
end)

-- Despawn request from client (e.g. out of distance)
RegisterNetEvent('pokefivem:server:despawnWild', function(wildId)
    if ActiveWildPokemon[wildId] and not ActiveWildPokemon[wildId].inBattle then
        TriggerClientEvent('pokefivem:client:despawnWildPokemon', -1, wildId)
        ActiveWildPokemon[wildId] = nil
    end
end)

