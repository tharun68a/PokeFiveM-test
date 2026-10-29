-- ====================================================================
-- PokeFiveM Framework - Comprehensive Evolution Registry
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

PokeEvolution = {}

-- Evolution Item & Stone Mappings
PokeEvolution.Stones = {
    -- Fire Stone
    ['fire_stone'] = {
        [37]  = { to = 38, name = "Ninetales" },      -- Vulpix -> Ninetales
        [58]  = { to = 59, name = "Arcanine" },       -- Growlithe -> Arcanine
        [133] = { to = 136, name = "Flareon" },       -- Eevee -> Flareon
        [513] = { to = 514, name = "Simisear" },      -- Pansear -> Simisear
    },

    -- Water Stone
    ['water_stone'] = {
        [61]  = { to = 62, name = "Poliwrath" },      -- Poliwhirl -> Poliwrath
        [90]  = { to = 91, name = "Cloyster" },       -- Shellder -> Cloyster
        [120] = { to = 121, name = "Starmie" },       -- Staryu -> Starmie
        [133] = { to = 134, name = "Vaporeon" },      -- Eevee -> Vaporeon
        [271] = { to = 272, name = "Ludicolo" },      -- Lombre -> Ludicolo
        [515] = { to = 516, name = "Simipour" },      -- Panpour -> Simipour
    },

    -- Thunder Stone
    ['thunder_stone'] = {
        [25]  = { to = 26, name = "Raichu" },         -- Pikachu -> Raichu
        [133] = { to = 135, name = "Jolteon" },       -- Eevee -> Jolteon
        [603] = { to = 604, name = "Eelektross" },    -- Eelektrik -> Eelektross
        [938] = { to = 939, name = "Bellibolt" },     -- Tadbulb -> Bellibolt
    },

    -- Leaf Stone
    ['leaf_stone'] = {
        [44]  = { to = 45, name = "Vileplume" },      -- Gloom -> Vileplume
        [70]  = { to = 71, name = "Victreebel" },     -- Weepinbell -> Victreebel
        [102] = { to = 103, name = "Exeggutor" },     -- Exeggcute -> Exeggutor
        [133] = { to = 470, name = "Leafeon" },       -- Eevee -> Leafeon
        [274] = { to = 275, name = "Shiftry" },       -- Nuzleaf -> Shiftry
        [511] = { to = 512, name = "Simisage" },      -- Pansage -> Simisage
    },

    -- Moon Stone
    ['moon_stone'] = {
        [30]  = { to = 31, name = "Nidoqueen" },      -- Nidorina -> Nidoqueen
        [33]  = { to = 34, name = "Nidoking" },       -- Nidorino -> Nidoking
        [35]  = { to = 36, name = "Clefable" },       -- Clefairy -> Clefable
        [39]  = { to = 40, name = "Wigglytuff" },     -- Jigglypuff -> Wigglytuff
        [300] = { to = 301, name = "Delcatty" },      -- Skitty -> Delcatty
        [517] = { to = 518, name = "Musharna" },      -- Munna -> Musharna
    },

    -- Sun Stone
    ['sun_stone'] = {
        [44]  = { to = 182, name = "Bellossom" },     -- Gloom -> Bellossom
        [191] = { to = 192, name = "Sunflora" },      -- Sunkern -> Sunflora
        [546] = { to = 547, name = "Whimsicott" },    -- Cottonee -> Whimsicott
        [548] = { to = 549, name = "Lilligant" },     -- Petilil -> Lilligant
        [694] = { to = 695, name = "Heliolisk" },     -- Helioptile -> Heliolisk
    },

    -- Shiny Stone
    ['shiny_stone'] = {
        [176] = { to = 468, name = "Togekiss" },      -- Togetic -> Togekiss
        [315] = { to = 407, name = "Roserade" },      -- Roselia -> Roserade
        [572] = { to = 573, name = "Cinccino" },      -- Minccino -> Cinccino
        [670] = { to = 671, name = "Florges" },       -- Floette -> Florges
    },

    -- Dusk Stone
    ['dusk_stone'] = {
        [198] = { to = 430, name = "Honchkrow" },     -- Murkrow -> Honchkrow
        [200] = { to = 429, name = "Mismagius" },     -- Misdreavus -> Mismagius
        [608] = { to = 609, name = "Chandelure" },    -- Lampent -> Chandelure
        [680] = { to = 681, name = "Aegislash" },     -- Doublade -> Aegislash
    },

    -- Dawn Stone
    ['dawn_stone'] = {
        [281] = { to = 475, name = "Gallade" },       -- Kirlia (Male) -> Gallade
        [361] = { to = 478, name = "Froslass" },      -- Snorunt (Female) -> Froslass
    },

    -- Ice Stone
    ['ice_stone'] = {
        [133] = { to = 471, name = "Glaceon" },       -- Eevee -> Glaceon
        [739] = { to = 740, name = "Crabominable" },  -- Crabrawler -> Crabominable
        [974] = { to = 975, name = "Cetitan" },       -- Cetoddle -> Cetitan
    },

    -- Link Cable (Trade Evolution Item)
    ['link_cable'] = {
        [64]  = { to = 65, name = "Alakazam" },       -- Kadabra -> Alakazam
        [67]  = { to = 68, name = "Machamp" },        -- Machoke -> Machamp
        [75]  = { to = 76, name = "Golem" },          -- Graveler -> Golem
        [93]  = { to = 94, name = "Gengar" },         -- Haunter -> Gengar
        [95]  = { to = 208, name = "Steelix" },       -- Onix -> Steelix
        [123] = { to = 212, name = "Scizor" },        -- Scyther -> Scizor
        [117] = { to = 230, name = "Kingdra" },       -- Seadra -> Kingdra
        [137] = { to = 233, name = "Porygon2" },      -- Porygon -> Porygon2
    }
}

-- Level-Up Evolutions
PokeEvolution.LevelUp = {
    [1]   = { to = 2, level = 16, name = "Ivysaur" },
    [2]   = { to = 3, level = 32, name = "Venusaur" },
    [4]   = { to = 5, level = 16, name = "Charmeleon" },
    [5]   = { to = 6, level = 36, name = "Charizard" },
    [7]   = { to = 8, level = 16, name = "Wartortle" },
    [8]   = { to = 9, level = 36, name = "Blastoise" },
    [10]  = { to = 11, level = 7,  name = "Metapod" },
    [11]  = { to = 12, level = 10, name = "Butterfree" },
    [13]  = { to = 14, level = 7,  name = "Kakuna" },
    [14]  = { to = 15, level = 10, name = "Beedrill" },
    [16]  = { to = 17, level = 18, name = "Pidgeotto" },
    [17]  = { to = 18, level = 36, name = "Pidgeot" },
    [19]  = { to = 20, level = 20, name = "Raticate" },
    [21]  = { to = 22, level = 20, name = "Fearow" },
    [23]  = { to = 24, level = 22, name = "Arbok" },
    [27]  = { to = 28, level = 22, name = "Sandslash" },
    [41]  = { to = 42, level = 22, name = "Golbat" },
    [43]  = { to = 44, level = 21, name = "Gloom" },
    [46]  = { to = 47, level = 24, name = "Parasect" },
    [48]  = { to = 49, level = 31, name = "Venomoth" },
    [50]  = { to = 51, level = 26, name = "Dugtrio" },
    [52]  = { to = 53, level = 28, name = "Persian" },
    [54]  = { to = 55, level = 33, name = "Golduck" },
    [56]  = { to = 57, level = 28, name = "Primeape" },
    [60]  = { to = 61, level = 25, name = "Poliwhirl" },
    [63]  = { to = 64, level = 16, name = "Kadabra" },
    [66]  = { to = 67, level = 28, name = "Machoke" },
    [69]  = { to = 70, level = 21, name = "Weepinbell" },
    [72]  = { to = 73, level = 30, name = "Tentacruel" },
    [74]  = { to = 75, level = 25, name = "Graveler" },
    [77]  = { to = 78, level = 40, name = "Rapidash" },
    [79]  = { to = 80, level = 37, name = "Slowbro" },
    [81]  = { to = 82, level = 30, name = "Magneton" },
    [84]  = { to = 85, level = 31, name = "Dodrio" },
    [86]  = { to = 87, level = 34, name = "Dewgong" },
    [88]  = { to = 89, level = 38, name = "Muk" },
    [92]  = { to = 93, level = 25, name = "Haunter" },
    [96]  = { to = 97, level = 26, name = "Hypno" },
    [98]  = { to = 99, level = 28, name = "Kingler" },
    [100] = { to = 101, level = 30, name = "Electrode" },
    [104] = { to = 105, level = 28, name = "Marowak" },
    [109] = { to = 110, level = 35, name = "Weezing" },
    [111] = { to = 112, level = 42, name = "Rhydon" },
    [116] = { to = 117, level = 32, name = "Seadra" },
    [118] = { to = 119, level = 33, name = "Seaking" },
    [129] = { to = 130, level = 20, name = "Gyarados" },
    [138] = { to = 139, level = 40, name = "Omastar" },
    [140] = { to = 141, level = 40, name = "Kabutops" },
    [147] = { to = 148, level = 30, name = "Dragonair" },
    [148] = { to = 149, level = 55, name = "Dragonite" },
    [152] = { to = 153, level = 16, name = "Bayleef" },
    [153] = { to = 154, level = 32, name = "Meganium" },
    [155] = { to = 156, level = 14, name = "Quilava" },
    [156] = { to = 157, level = 36, name = "Typhlosion" },
    [158] = { to = 159, level = 18, name = "Croconaw" },
    [159] = { to = 160, level = 30, name = "Feraligatr" },
    [246] = { to = 247, level = 30, name = "Pupitar" },
    [247] = { to = 248, level = 55, name = "Tyranitar" },
    [252] = { to = 253, level = 16, name = "Grovyle" },
    [253] = { to = 254, level = 36, name = "Sceptile" },
    [255] = { to = 256, level = 16, name = "Combusken" },
    [256] = { to = 257, level = 36, name = "Blaziken" },
    [258] = { to = 259, level = 16, name = "Marshtomp" },
    [259] = { to = 260, level = 36, name = "Swampert" },
    [371] = { to = 372, level = 30, name = "Shelgon" },
    [372] = { to = 373, level = 50, name = "Salamence" },
    [374] = { to = 375, level = 20, name = "Metang" },
    [375] = { to = 376, level = 45, name = "Metagross" },
    [387] = { to = 388, level = 18, name = "Grotle" },
    [388] = { to = 389, level = 32, name = "Torterra" },
    [390] = { to = 391, level = 14, name = "Monferno" },
    [391] = { to = 392, level = 36, name = "Infernape" },
    [393] = { to = 394, level = 16, name = "Prinplup" },
    [394] = { to = 395, level = 36, name = "Empoleon" },
    [443] = { to = 444, level = 24, name = "Gabite" },
    [444] = { to = 445, level = 48, name = "Garchomp" },
    [447] = { to = 448, level = 30, name = "Lucario" },
    [656] = { to = 657, level = 16, name = "Frogadier" },
    [657] = { to = 658, level = 36, name = "Greninja" },
    [810] = { to = 811, level = 16, name = "Thwackey" },
    [811] = { to = 812, level = 35, name = "Rillaboom" },
    [813] = { to = 814, level = 16, name = "Raboot" },
    [814] = { to = 815, level = 35, name = "Cinderace" },
    [816] = { to = 817, level = 16, name = "Drizzile" },
    [817] = { to = 818, level = 35, name = "Inteleon" },
    [906] = { to = 907, level = 16, name = "Floragato" },
    [907] = { to = 908, level = 36, name = "Meowscarada" },
    [909] = { to = 910, level = 16, name = "Crocalor" },
    [910] = { to = 911, level = 36, name = "Skeledirge" },
    [912] = { to = 913, level = 16, name = "Quaxwell" },
    [913] = { to = 914, level = 36, name = "Quaquaval" }
}

function PokeEvolution.GetStoneEvolution(stoneItem, pokedexId)
    if not stoneItem or not pokedexId then return nil end
    local group = PokeEvolution.Stones[string.lower(stoneItem)]
    if group and group[pokedexId] then
        return group[pokedexId]
    end
    return nil
end

function PokeEvolution.GetLevelEvolution(pokedexId, currentLevel)
    if not pokedexId or not currentLevel then return nil end
    local evo = PokeEvolution.LevelUp[pokedexId]
    if evo and currentLevel >= evo.level then
        return evo
    end
    return nil
end

