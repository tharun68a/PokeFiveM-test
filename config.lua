Config = {}

-- ====================================================================
-- PokeFiveM Framework Master Configuration
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

Config.ServerName = 'PokeFiveM'
Config.Locale = 'en'
Config.Debug = false

-- Core Economy & Account Defaults
Config.Money = {
    MoneyTypes = {
        ['cash'] = 1000,         -- Physical cash in trainer wallet
        ['bank'] = 5000,         -- Bank balance accessible via ATMs/Phones
        ['pokedollars'] = 2500   -- Official Pokédollars (₽) used at PokéMarts
    },
    PaycheckInterval = 10 * 60 * 1000, -- Paycheck every 10 minutes
    PaycheckToBank = true
}

-- Player Core Mechanics
Config.Player = {
    MaxWeight = 120000, -- Maximum trainer inventory carry weight in grams (120 kg)
    DefaultSpawn = vector4(298.54, -584.43, 43.26, 75.0), -- Legion Square Medical Center
    HungerRate = 4.2,  -- Decrease every minute
    ThirstRate = 3.8
}

-- Multicharacter Configuration (ox_lib native)
Config.Multicharacter = {
    Enabled = true,
    MaxSlots = 4,
    CameraCoords = vector4(-1392.21, -590.45, 30.32, 210.0),
    PedPreviewCoords = vector4(-1393.12, -592.34, 30.32, 35.0),
    DefaultSpawn = vector4(298.54, -584.43, 43.26, 75.0)
}

-- Admin Permissions & ACE Config
Config.Permissions = {
    ['god'] = { 'admin', 'god' },
    ['admin'] = { 'admin' },
    ['mod'] = { 'mod' }
}

-- Starter Pokémon System
Config.AllowStarterSelection = true
Config.StarterPokemon = {
    { id = 1, name = 'Bulbasaur', type1 = 'grass', type2 = 'poison', level = 5 },
    { id = 4, name = 'Charmander', type1 = 'fire', level = 5 },
    { id = 7, name = 'Squirtle', type1 = 'water', level = 5 },
    { id = 25, name = 'Pikachu', type1 = 'electric', level = 5 },
    { id = 133, name = 'Eevee', type1 = 'normal', level = 5 }
}

-- Party & PC Box Limits
Config.MaxPartySize = 6
Config.MaxPcBoxes = 30
Config.SlotsPerBox = 30 -- Total 900 storage slots in PC

-- Game Balance & Catch Mechanics
Config.ShinyRate = 4096 -- 1 in 4096 base shiny chance
Config.ShinyCharmMultiplier = 3
Config.ExpMultiplier = 1.25
Config.CatchRateMultiplier = 1.0
Config.WildMaxLevel = 60
Config.WildMinLevel = 2

-- Wild Spawning System
Config.WildSpawning = {
    Enabled = true,
    SpawnInterval = 15000,
    MaxWildNearby = 5,
    MinDistance = 15.0,
    MaxDistance = 45.0,
    DespawnDistance = 120.0,
    DespawnTimer = 300,
    AggressiveChance = 0.20,
    FleeChance = 0.25
}

-- Keybinds & Controls
Config.Controls = {
    OpenPartyKey = 'F6',
    OpenPartyKeyDesc = 'Open PokeFiveM Party Team',
    OpenPokedexKey = 'F7',
    OpenPokedexKeyDesc = 'Open Pokédex',
    ThrowBallKey = 'G',
    ThrowBallKeyDesc = 'Prepare Pokéball Throw',
    CompanionKey = 'K',
    CompanionKeyDesc = 'Send Out / Recall Buddy Pokémon'
}

-- Throwing Mechanics
Config.Throwing = {
    MaxThrowDistance = 35.0,
    ThrowArcHeight = 2.2,
    BallVelocity = 28.0,
    ShakeChecks = 4
}

-- Battle Settings
Config.Battle = {
    TurnTimeout = 30,
    CameraOffset = vector3(-3.5, 4.0, 1.8),
    EnemyOffset = vector3(3.5, 4.0, 1.8),
    BattleRadius = 15.0,
    AllowSpectators = true
}

-- Follower / Buddy System
Config.Companion = {
    Enabled = true,
    FollowDistance = 2.5,
    AutoRecallVehicle = true,
    AutoRecallCombat = true,
    FollowSpeed = 3.0
}

-- Mount System (Ride, Fly, Surf)
Config.Mounts = {
    Enabled = true,
    GroundRiders = {
        [59] = { name = 'Arcanine', speed = 1.35, jump = 1.2 },
        [78] = { name = 'Rapidash', speed = 1.4, jump = 1.3 },
        [128] = { name = 'Tauros', speed = 1.3, jump = 1.1 },
        [143] = { name = 'Snorlax', speed = 0.85, jump = 0.6 }
    },
    Surfers = {
        [131] = { name = 'Lapras', speed = 1.2 },
        [130] = { name = 'Gyarados', speed = 1.35 },
        [9] = { name = 'Blastoise', speed = 1.15 }
    },
    Flyers = {
        [6] = { name = 'Charizard', speed = 1.5, ceiling = 250.0 },
        [18] = { name = 'Pidgeot', speed = 1.45, ceiling = 200.0 },
        [149] = { name = 'Dragonite', speed = 1.55, ceiling = 300.0 },
        [144] = { name = 'Articuno', speed = 1.6, ceiling = 350.0 },
        [145] = { name = 'Zapdos', speed = 1.65, ceiling = 350.0 },
        [146] = { name = 'Moltres', speed = 1.6, ceiling = 350.0 }
    }
}

-- PokéCenter Locations
Config.PokeCenters = {
    {
        name = "Legion Square Medical PokéCenter",
        coords = vector3(298.54, -584.43, 43.26),
        heading = 75.0,
        pedModel = `s_m_m_doctor_01`,
        blip = { id = 478, color = 1, scale = 0.8, text = "PokéCenter - Legion" }
    },
    {
        name = "Sandy Shores Clinic PokéCenter",
        coords = vector3(1839.62, 3672.93, 34.28),
        heading = 210.0,
        pedModel = `s_f_y_scrubs_01`,
        blip = { id = 478, color = 1, scale = 0.8, text = "PokéCenter - Sandy Shores" }
    },
    {
        name = "Paleto Bay Care PokéCenter",
        coords = vector3(-247.12, 6331.45, 32.43),
        heading = 315.0,
        pedModel = `s_f_y_scrubs_01`,
        blip = { id = 478, color = 1, scale = 0.8, text = "PokéCenter - Paleto Bay" }
    },
    {
        name = "Vespucci Beach Oasis PokéCenter",
        coords = vector3(-1324.89, -1513.72, 4.45),
        heading = 120.0,
        pedModel = `s_f_y_scrubs_01`,
        blip = { id = 478, color = 1, scale = 0.8, text = "PokéCenter - Vespucci" }
    }
}

-- PokéMart Shops
Config.PokeMarts = {
    {
        name = "Los Santos Downtown PokéMart",
        coords = vector3(373.87, 325.85, 103.57),
        heading = 255.0,
        pedModel = `mp_m_shopkeep_01`,
        blip = { id = 52, color = 2, scale = 0.7, text = "PokéMart" },
        items = {
            { item = 'pokeball', label = 'Poké Ball', price = 200 },
            { item = 'greatball', label = 'Great Ball', price = 600 },
            { item = 'ultraball', label = 'Ultra Ball', price = 1200 },
            { item = 'potion', label = 'Potion (20 HP)', price = 300 },
            { item = 'superpotion', label = 'Super Potion (50 HP)', price = 700 },
            { item = 'hyperpotion', label = 'Hyper Potion (120 HP)', price = 1500 },
            { item = 'maxpotion', label = 'Max Potion (Full HP)', price = 2500 },
            { item = 'revive', label = 'Revive (50% HP)', price = 1500 },
            { item = 'antidote', label = 'Antidote (Cures Poison)', price = 250 },
            { item = 'paralyzeheal', label = 'Parlyz Heal', price = 250 },
            { item = 'awakening', label = 'Awakening', price = 250 },
            { item = 'firestone', label = 'Fire Stone', price = 5000 },
            { item = 'waterstone', label = 'Water Stone', price = 5000 },
            { item = 'thunderstone', label = 'Thunder Stone', price = 5000 },
            { item = 'leafstone', label = 'Leaf Stone', price = 5000 },
            { item = 'moonstone', label = 'Moon Stone', price = 5000 }
        }
    }
}

-- Biome Spawn Profiles
Config.Biomes = {
    grass = {
        names = { "Bulbasaur", "Oddish", "Bellsprout", "Caterpie", "Weedle", "Pidgey", "Rattata", "Pikachu", "Nidoran_m", "Nidoran_f", "Abra", "Eevee" },
        levels = { min = 3, max = 22 }
    },
    forest = {
        names = { "Caterpie", "Metapod", "Butterfree", "Weedle", "Kakuna", "Beedrill", "Pidgeotto", "Pinsir", "Scyther", "Tangela", "Pikachu" },
        levels = { min = 8, max = 32 }
    },
    water = {
        names = { "Squirtle", "Psyduck", "Poliwag", "Tentacool", "Slowpoke", "Magikarp", "Goldeen", "Staryu", "Lapras", "Krabby", "Shellder" },
        levels = { min = 5, max = 35 }
    },
    mountain = {
        names = { "Geodude", "Graveler", "Onix", "Machop", "Machoke", "Mankey", "Charmander", "Clefairy", "Zubat", "Golbat", "Rhyhorn" },
        levels = { min = 10, max = 45 }
    },
    urban = {
        names = { "Rattata", "Raticate", "Meowth", "Magnemite", "Voltorb", "Porygon", "Koffing", "Grimer", "Eevee", "Pikachu", "Abra" },
        levels = { min = 5, max = 28 }
    },
    cave = {
        names = { "Zubat", "Golbat", "Geodude", "Diglett", "Dugtrio", "Gastly", "Haunter", "Onix", "Cubone" },
        levels = { min = 12, max = 40 }
    }
}
