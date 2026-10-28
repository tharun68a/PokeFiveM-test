PokeNatures = {
    Hardy   = { name = "Hardy",   up = nil,       down = nil },
    Lonely  = { name = "Lonely",  up = "attack",  down = "defense" },
    Brave   = { name = "Brave",   up = "attack",  down = "speed" },
    Adamant = { name = "Adamant", up = "attack",  down = "sp_attack" },
    Naughty = { name = "Naughty", up = "attack",  down = "sp_defense" },
    Bold    = { name = "Bold",    up = "defense", down = "attack" },
    Docile  = { name = "Docile",  up = nil,       down = nil },
    Relaxed = { name = "Relaxed", up = "defense", down = "speed" },
    Impish  = { name = "Impish",  up = "defense", down = "sp_attack" },
    Lax     = { name = "Lax",     up = "defense", down = "sp_defense" },
    Timid   = { name = "Timid",   up = "speed",   down = "attack" },
    Hasty   = { name = "Hasty",   up = "speed",   down = "defense" },
    Serious = { name = "Serious", up = nil,       down = nil },
    Jolly   = { name = "Jolly",   up = "speed",   down = "sp_attack" },
    Naive   = { name = "Naive",   up = "speed",   down = "sp_defense" },
    Modest  = { name = "Modest",  up = "sp_attack", down = "attack" },
    Mild    = { name = "Mild",    up = "sp_attack", down = "defense" },
    Quiet   = { name = "Quiet",   up = "sp_attack", down = "speed" },
    Bashful = { name = "Bashful", up = nil,       down = nil },
    Rash    = { name = "Rash",    up = "sp_attack", down = "sp_defense" },
    Calm    = { name = "Calm",    up = "sp_defense", down = "attack" },
    Gentle  = { name = "Gentle",  up = "sp_defense", down = "defense" },
    Sassy   = { name = "Sassy",   up = "sp_defense", down = "speed" },
    Careful = { name = "Careful", up = "sp_defense", down = "sp_attack" },
    Quirky  = { name = "Quirky",  up = nil,       down = nil }
}

NatureList = {
    "Hardy", "Lonely", "Brave", "Adamant", "Naughty",
    "Bold", "Docile", "Relaxed", "Impish", "Lax",
    "Timid", "Hasty", "Serious", "Jolly", "Naive",
    "Modest", "Mild", "Quiet", "Bashful", "Rash",
    "Calm", "Gentle", "Sassy", "Careful", "Quirky"
}

function GetRandomNature()
    return NatureList[math.random(1, #NatureList)]
end

function GetNatureMultiplier(natureName, statName)
    local nature = PokeNatures[natureName]
    if not nature then return 1.0 end
    if nature.up == statName then return 1.1 end
    if nature.down == statName then return 0.9 end
    return 1.0
end

