PokeUtils = {}

-- HP Stat Formula (Gen 3+)
function PokeUtils.CalculateMaxHP(base, iv, ev, level)
    if base == 1 then return 1 end -- Shedinja rule
    iv = iv or 0
    ev = ev or 0
    level = level or 1
    local hp = math.floor(((2 * base + iv + math.floor(ev / 4)) * level) / 100) + level + 10
    return math.max(1, hp)
end

-- Other Stats Formula (Attack, Defense, Sp. Atk, Sp. Def, Speed)
function PokeUtils.CalculateStat(base, iv, ev, level, natureMultiplier)
    iv = iv or 0
    ev = ev or 0
    level = level or 1
    natureMultiplier = natureMultiplier or 1.0
    local raw = math.floor(((2 * base + iv + math.floor(ev / 4)) * level) / 100) + 5
    return math.max(1, math.floor(raw * natureMultiplier))
end

-- Calculate Total Stats table for a Pokemon object
function PokeUtils.CalculateAllStats(pokemon)
    local pData = GetPokedexEntry(pokemon.pokedex_id)
    if not pData then return nil end

    local nature = pokemon.nature or "Hardy"
    local ivs = pokemon.ivs or { hp = 0, attack = 0, defense = 0, sp_attack = 0, sp_defense = 0, speed = 0 }
    local evs = pokemon.evs or { hp = 0, attack = 0, defense = 0, sp_attack = 0, sp_defense = 0, speed = 0 }
    local lvl = pokemon.level or 1

    local maxHp = PokeUtils.CalculateMaxHP(pData.baseStats.hp, ivs.hp, evs.hp, lvl)
    local atk = PokeUtils.CalculateStat(pData.baseStats.attack, ivs.attack, evs.attack, lvl, GetNatureMultiplier(nature, "attack"))
    local def = PokeUtils.CalculateStat(pData.baseStats.defense, ivs.defense, evs.defense, lvl, GetNatureMultiplier(nature, "defense"))
    local spa = PokeUtils.CalculateStat(pData.baseStats.sp_attack, ivs.sp_attack, evs.sp_attack, lvl, GetNatureMultiplier(nature, "sp_attack"))
    local spd = PokeUtils.CalculateStat(pData.baseStats.sp_defense, ivs.sp_defense, evs.sp_defense, lvl, GetNatureMultiplier(nature, "sp_defense"))
    local spe = PokeUtils.CalculateStat(pData.baseStats.speed, ivs.speed, evs.speed, lvl, GetNatureMultiplier(nature, "speed"))

    return {
        max_hp = maxHp,
        attack = atk,
        defense = def,
        sp_attack = spa,
        sp_defense = spd,
        speed = spe
    }
end

-- Experience Curve Calculations
function PokeUtils.GetExpForLevel(level, growthRate)
    level = math.max(1, math.min(100, level))
    growthRate = growthRate or "medium_fast"

    if growthRate == "medium_fast" then
        return math.floor(level ^ 3)
    elseif growthRate == "medium_slow" then
        if level == 1 then return 0 end
        return math.floor(1.2 * (level ^ 3) - 15 * (level ^ 2) + 100 * level - 140)
    elseif growthRate == "fast" then
        return math.floor(0.8 * (level ^ 3))
    elseif growthRate == "slow" then
        return math.floor(1.25 * (level ^ 3))
    end
    return math.floor(level ^ 3)
end

-- Determine Level from total EXP
function PokeUtils.GetLevelFromExp(exp, growthRate)
    growthRate = growthRate or "medium_fast"
    for lvl = 100, 1, -1 do
        if exp >= PokeUtils.GetExpForLevel(lvl, growthRate) then
            return lvl
        end
    end
    return 1
end

-- Official Pokémon Damage Calculation
function PokeUtils.CalculateDamage(attacker, defender, moveKey)
    local move = GetMove(moveKey)
    if not move or move.power <= 0 or move.category == "status" then
        return 0, 1.0, false, "status"
    end

    local attackerStats = PokeUtils.CalculateAllStats(attacker)
    local defenderStats = PokeUtils.CalculateAllStats(defender)
    if not attackerStats or not defenderStats then
        return 1, 1.0, false, "normal"
    end

    local aData = GetPokedexEntry(attacker.pokedex_id)
    local dData = GetPokedexEntry(defender.pokedex_id)

    -- Physical or Special Attack & Defense
    local attackValue = (move.category == "special") and attackerStats.sp_attack or attackerStats.attack
    local defenseValue = (move.category == "special") and defenderStats.sp_defense or defenderStats.defense

    -- Critical hit roll (1/16 base, or 1/8 with high crit move)
    local critRatio = move.critRatio or 1
    local isCrit = (math.random(1, (critRatio > 1 and 8 or 16)) == 1)
    local critMultiplier = isCrit and 1.5 or 1.0

    -- Random variance (0.85 to 1.00)
    local randomMultiplier = (math.random(85, 100)) / 100.0

    -- STAB (Same-Type Attack Bonus) = 1.5x
    local stab = 1.0
    if aData and (string.lower(aData.type1 or '') == string.lower(move.type) or string.lower(aData.type2 or '') == string.lower(move.type)) then
        stab = 1.5
    end

    -- Type Effectiveness
    local typeMultiplier = GetTypeEffectiveness(move.type, dData.type1, dData.type2)

    -- If immune, 0 damage immediately
    if typeMultiplier == 0 then
        return 0, 0.0, false, "immune"
    end

    -- Core Formula: ((2 * Level / 5 + 2) * Power * A / D) / 50 + 2
    local levelFactor = math.floor((2 * attacker.level) / 5) + 2
    local baseDamage = math.floor((levelFactor * move.power * (attackValue / math.max(1, defenseValue))) / 50) + 2

    local totalDamage = math.floor(baseDamage * critMultiplier * randomMultiplier * stab * typeMultiplier)
    totalDamage = math.max(1, totalDamage)

    local effectiveness = "normal"
    if typeMultiplier > 1.0 then
        effectiveness = "super_effective"
    elseif typeMultiplier < 1.0 then
        effectiveness = "not_very_effective"
    end

    return totalDamage, typeMultiplier, isCrit, effectiveness
end

-- Capture Formula (Gen 8 Core Engine)
function PokeUtils.CalculateCatch(pokemon, ballKey)
    local item = PokeItems[ballKey] or PokeItems["pokeball"]
    local ballMultiplier = item.catchMultiplier or 1.0

    -- Master Ball 100% guarantee
    if ballMultiplier >= 255.0 then
        return true, 4
    end

    local pData = GetPokedexEntry(pokemon.pokedex_id)
    local baseCatchRate = (pData and pData.catchRate) or 45
    baseCatchRate = baseCatchRate * (Config.CatchRateMultiplier or 1.0)

    local maxHp = pokemon.max_hp or 20
    local curHp = math.max(1, pokemon.current_hp or 20)

    -- Status condition modifier
    local statusMod = 1.0
    if pokemon.status == "sleep" or pokemon.status == "freeze" then
        statusMod = 2.5
    elseif pokemon.status == "paralysis" or pokemon.status == "poison" or pokemon.status == "burn" then
        statusMod = 1.5
    end

    -- Capture rate 'a' formula
    local a = math.floor(((3 * maxHp - 2 * curHp) / (3 * maxHp)) * baseCatchRate * ballMultiplier * statusMod)
    
    if a >= 255 then
        return true, 4
    end

    -- Shake probability 'b' = floor(65536 * (a / 255)^0.75)
    local b = math.floor(65536 * ((a / 255) ^ 0.75))

    local shakes = 0
    for i = 1, 4 do
        local roll = math.random(0, 65535)
        if roll < b then
            shakes = shakes + 1
        else
            break
        end
    end

    local caught = (shakes >= 4)
    return caught, shakes
end

-- Shiny Check
function PokeUtils.RollShiny(hasCharm)
    local baseRate = Config.ShinyRate or 4096
    local rolls = hasCharm and (Config.ShinyCharmMultiplier or 3) or 1
    for i = 1, rolls do
        if math.random(1, baseRate) == 1 then
            return true
        end
    end
    return false
end

-- Generate Random IVs (0 - 31)
function PokeUtils.GenerateRandomIVs()
    return {
        hp = math.random(0, 31),
        attack = math.random(0, 31),
        defense = math.random(0, 31),
        sp_attack = math.random(0, 31),
        sp_defense = math.random(0, 31),
        speed = math.random(0, 31)
    }
end

-- Zeroed EVs
function PokeUtils.GenerateZeroEVs()
    return {
        hp = 0,
        attack = 0,
        defense = 0,
        sp_attack = 0,
        sp_defense = 0,
        speed = 0
    }
end

-- Exp Yield from defeated wild Pokemon
function PokeUtils.CalculateExpReward(pokedexId, level)
    local pData = GetPokedexEntry(pokedexId)
    local baseExp = (pData and pData.baseExp) or 64
    local exp = math.floor((baseExp * level) / 7) * (Config.ExpMultiplier or 1.0)
    return math.max(1, math.floor(exp))
end

