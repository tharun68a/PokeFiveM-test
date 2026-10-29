PokeMoves = {
    -- Normal
    Tackle = { name = "Tackle", type = "normal", category = "physical", power = 40, accuracy = 100, pp = 35, priority = 0 },
    Scratch = { name = "Scratch", type = "normal", category = "physical", power = 40, accuracy = 100, pp = 35, priority = 0 },
    QuickAttack = { name = "Quick Attack", type = "normal", category = "physical", power = 40, accuracy = 100, pp = 30, priority = 1 },
    BodySlam = { name = "Body Slam", type = "normal", category = "physical", power = 85, accuracy = 100, pp = 15, priority = 0, effect = { status = "paralysis", chance = 30 } },
    HyperBeam = { name = "Hyper Beam", type = "normal", category = "special", power = 150, accuracy = 90, pp = 5, priority = 0 },
    Growl = { name = "Growl", type = "normal", category = "status", power = 0, accuracy = 100, pp = 40, priority = 0, effect = { stat = "attack", stages = -1 } },
    TailWhip = { name = "Tail Whip", type = "normal", category = "status", power = 0, accuracy = 100, pp = 30, priority = 0, effect = { stat = "defense", stages = -1 } },
    SwordsDance = { name = "Swords Dance", type = "normal", category = "status", power = 0, accuracy = 100, pp = 20, priority = 0, effect = { stat = "attack", stages = 2, target = "self" } },

    -- Fire
    Ember = { name = "Ember", type = "fire", category = "special", power = 40, accuracy = 100, pp = 25, priority = 0, effect = { status = "burn", chance = 10 } },
    Flamethrower = { name = "Flamethrower", type = "fire", category = "special", power = 90, accuracy = 100, pp = 15, priority = 0, effect = { status = "burn", chance = 10 } },
    FireBlast = { name = "Fire Blast", type = "fire", category = "special", power = 110, accuracy = 85, pp = 5, priority = 0, effect = { status = "burn", chance = 10 } },
    FirePunch = { name = "Fire Punch", type = "fire", category = "physical", power = 75, accuracy = 100, pp = 15, priority = 0, effect = { status = "burn", chance = 10 } },

    -- Water
    WaterGun = { name = "Water Gun", type = "water", category = "special", power = 40, accuracy = 100, pp = 25, priority = 0 },
    Bubble = { name = "Bubble", type = "water", category = "special", power = 40, accuracy = 100, pp = 30, priority = 0, effect = { stat = "speed", stages = -1, chance = 10 } },
    Surf = { name = "Surf", type = "water", category = "special", power = 90, accuracy = 100, pp = 15, priority = 0 },
    HydroPump = { name = "Hydro Pump", type = "water", category = "special", power = 110, accuracy = 80, pp = 5, priority = 0 },
    Waterfall = { name = "Waterfall", type = "water", category = "physical", power = 80, accuracy = 100, pp = 15, priority = 0, effect = { flinch = 20 } },

    -- Grass
    VineWhip = { name = "Vine Whip", type = "grass", category = "physical", power = 45, accuracy = 100, pp = 25, priority = 0 },
    RazorLeaf = { name = "Razor Leaf", type = "grass", category = "physical", power = 55, accuracy = 95, pp = 25, priority = 0, critRatio = 2 },
    EnergyBall = { name = "Energy Ball", type = "grass", category = "special", power = 90, accuracy = 100, pp = 10, priority = 0, effect = { stat = "sp_defense", stages = -1, chance = 10 } },
    SolarBeam = { name = "Solar Beam", type = "grass", category = "special", power = 120, accuracy = 100, pp = 10, priority = 0 },
    SleepPowder = { name = "Sleep Powder", type = "grass", category = "status", power = 0, accuracy = 75, pp = 15, priority = 0, effect = { status = "sleep", chance = 100 } },

    -- Electric
    ThunderShock = { name = "Thunder Shock", type = "electric", category = "special", power = 40, accuracy = 100, pp = 30, priority = 0, effect = { status = "paralysis", chance = 10 } },
    Thunderbolt = { name = "Thunderbolt", type = "electric", category = "special", power = 90, accuracy = 100, pp = 15, priority = 0, effect = { status = "paralysis", chance = 10 } },
    Thunder = { name = "Thunder", type = "electric", category = "special", power = 110, accuracy = 70, pp = 10, priority = 0, effect = { status = "paralysis", chance = 30 } },
    ThunderWave = { name = "Thunder Wave", type = "electric", category = "status", power = 0, accuracy = 90, pp = 20, priority = 0, effect = { status = "paralysis", chance = 100 } },

    -- Ice
    IceBeam = { name = "Ice Beam", type = "ice", category = "special", power = 90, accuracy = 100, pp = 10, priority = 0, effect = { status = "freeze", chance = 10 } },
    Blizzard = { name = "Blizzard", type = "ice", category = "special", power = 110, accuracy = 70, pp = 5, priority = 0, effect = { status = "freeze", chance = 10 } },
    IcePunch = { name = "Ice Punch", type = "ice", category = "physical", power = 75, accuracy = 100, pp = 15, priority = 0, effect = { status = "freeze", chance = 10 } },

    -- Fighting
    KarateChop = { name = "Karate Chop", type = "fighting", category = "physical", power = 50, accuracy = 100, pp = 25, priority = 0, critRatio = 2 },
    CloseCombat = { name = "Close Combat", type = "fighting", category = "physical", power = 120, accuracy = 100, pp = 5, priority = 0, effect = { stat = "defense", stages = -1, target = "self" } },
    CrossChop = { name = "Cross Chop", type = "fighting", category = "physical", power = 100, accuracy = 80, pp = 5, priority = 0, critRatio = 2 },

    -- Poison
    PoisonSting = { name = "Poison Sting", type = "poison", category = "physical", power = 15, accuracy = 100, pp = 35, priority = 0, effect = { status = "poison", chance = 30 } },
    SludgeBomb = { name = "Sludge Bomb", type = "poison", category = "special", power = 90, accuracy = 100, pp = 10, priority = 0, effect = { status = "poison", chance = 30 } },
    Toxic = { name = "Toxic", type = "poison", category = "status", power = 0, accuracy = 90, pp = 10, priority = 0, effect = { status = "toxic", chance = 100 } },

    -- Ground
    MudSlap = { name = "Mud-Slap", type = "ground", category = "special", power = 20, accuracy = 100, pp = 10, priority = 0, effect = { stat = "accuracy", stages = -1, chance = 100 } },
    Earthquake = { name = "Earthquake", type = "ground", category = "physical", power = 100, accuracy = 100, pp = 10, priority = 0 },
    EarthPower = { name = "Earth Power", type = "ground", category = "special", power = 90, accuracy = 100, pp = 10, priority = 0, effect = { stat = "sp_defense", stages = -1, chance = 10 } },

    -- Flying
    Gust = { name = "Gust", type = "flying", category = "special", power = 40, accuracy = 100, pp = 35, priority = 0 },
    WingAttack = { name = "Wing Attack", type = "flying", category = "physical", power = 60, accuracy = 100, pp = 35, priority = 0 },
    AirSlash = { name = "Air Slash", type = "flying", category = "special", power = 75, accuracy = 95, pp = 15, priority = 0, effect = { flinch = 30 } },
    BraveBird = { name = "Brave Bird", type = "flying", category = "physical", power = 120, accuracy = 100, pp = 15, priority = 0, recoil = 33 },

    -- Psychic
    Confusion = { name = "Confusion", type = "psychic", category = "special", power = 50, accuracy = 100, pp = 25, priority = 0, effect = { confuse = 10 } },
    Psychic = { name = "Psychic", type = "psychic", category = "special", power = 90, accuracy = 100, pp = 10, priority = 0, effect = { stat = "sp_defense", stages = -1, chance = 10 } },
    Psybeam = { name = "Psybeam", type = "psychic", category = "special", power = 65, accuracy = 100, pp = 20, priority = 0, effect = { confuse = 10 } },

    -- Bug
    BugBite = { name = "Bug Bite", type = "bug", category = "physical", power = 60, accuracy = 100, pp = 20, priority = 0 },
    XScissor = { name = "X-Scissor", type = "bug", category = "physical", power = 80, accuracy = 100, pp = 15, priority = 0 },
    BugBuzz = { name = "Bug Buzz", type = "bug", category = "special", power = 90, accuracy = 100, pp = 10, priority = 0, effect = { stat = "sp_defense", stages = -1, chance = 10 } },

    -- Rock
    RockThrow = { name = "Rock Throw", type = "rock", category = "physical", power = 50, accuracy = 90, pp = 15, priority = 0 },
    RockSlide = { name = "Rock Slide", type = "rock", category = "physical", power = 75, accuracy = 90, pp = 10, priority = 0, effect = { flinch = 30 } },
    StoneEdge = { name = "Stone Edge", type = "rock", category = "physical", power = 100, accuracy = 80, pp = 5, priority = 0, critRatio = 2 },

    -- Ghost
    ShadowBall = { name = "Shadow Ball", type = "ghost", category = "special", power = 80, accuracy = 100, pp = 15, priority = 0, effect = { stat = "sp_defense", stages = -1, chance = 20 } },
    ShadowClaw = { name = "Shadow Claw", type = "ghost", category = "physical", power = 70, accuracy = 100, pp = 15, priority = 0, critRatio = 2 },

    -- Dragon
    DragonClaw = { name = "Dragon Claw", type = "dragon", category = "physical", power = 80, accuracy = 100, pp = 15, priority = 0 },
    DragonPulse = { name = "Dragon Pulse", type = "dragon", category = "special", power = 85, accuracy = 100, pp = 10, priority = 0 },
    Outrage = { name = "Outrage", type = "dragon", category = "physical", power = 120, accuracy = 100, pp = 10, priority = 0 },

    -- Steel
    IronHead = { name = "Iron Head", type = "steel", category = "physical", power = 80, accuracy = 100, pp = 15, priority = 0, effect = { flinch = 30 } },
    FlashCannon = { name = "Flash Cannon", type = "steel", category = "special", power = 80, accuracy = 100, pp = 10, priority = 0, effect = { stat = "sp_defense", stages = -1, chance = 10 } },

    -- Dark
    Bite = { name = "Bite", type = "dark", category = "physical", power = 60, accuracy = 100, pp = 25, priority = 0, effect = { flinch = 30 } },
    Crunch = { name = "Crunch", type = "dark", category = "physical", power = 80, accuracy = 100, pp = 15, priority = 0, effect = { stat = "defense", stages = -1, chance = 20 } },
    DarkPulse = { name = "Dark Pulse", type = "dark", category = "special", power = 80, accuracy = 100, pp = 15, priority = 0, effect = { flinch = 20 } },

    -- Fairy
    DazzlingGleam = { name = "Dazzling Gleam", type = "fairy", category = "special", power = 80, accuracy = 100, pp = 10, priority = 0 },
    Moonblast = { name = "Moonblast", type = "fairy", category = "special", power = 95, accuracy = 100, pp = 15, priority = 0, effect = { stat = "sp_attack", stages = -1, chance = 30 } },
    PlayRough = { name = "Play Rough", type = "fairy", category = "physical", power = 90, accuracy = 90, pp = 10, priority = 0, effect = { stat = "attack", stages = -1, chance = 10 } }
}

function GetMove(moveKey)
    if not moveKey then return nil end
    -- Support normalized key search
    if PokeMoves[moveKey] then return PokeMoves[moveKey] end
    local clean = string.gsub(string.lower(moveKey), "%s+", "")
    for k, v in pairs(PokeMoves) do
        if string.lower(string.gsub(k, "%s+", "")) == clean or string.lower(string.gsub(v.name, "%s+", "")) == clean then
            return v
        end
    end
    return PokeMoves["Tackle"] -- Fallback
end

