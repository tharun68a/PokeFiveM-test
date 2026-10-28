PokedexData = {
    [1] = {
        id = 1, name = "Bulbasaur", type1 = "grass", type2 = "poison",
        baseStats = { hp = 45, attack = 49, defense = 49, sp_attack = 65, sp_defense = 65, speed = 45 },
        catchRate = 45, baseExp = 64, growthRate = "medium_slow",
        abilities = { "Overgrow", "Chlorophyll" },
        evolution = { level = 16, to = 2, toName = "Ivysaur" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 3, move = "Growl" },
            { level = 7, move = "VineWhip" },
            { level = 13, move = "SleepPowder" },
            { level = 20, move = "RazorLeaf" },
            { level = 32, move = "SolarBeam" }
        },
        model = `a_c_pug`, height = 0.7, weight = 6.9
    },
    [2] = {
        id = 2, name = "Ivysaur", type1 = "grass", type2 = "poison",
        baseStats = { hp = 60, attack = 62, defense = 63, sp_attack = 80, sp_defense = 80, speed = 60 },
        catchRate = 45, baseExp = 142, growthRate = "medium_slow",
        abilities = { "Overgrow", "Chlorophyll" },
        evolution = { level = 32, to = 3, toName = "Venusaur" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 7, move = "VineWhip" },
            { level = 15, move = "SleepPowder" },
            { level = 22, move = "RazorLeaf" },
            { level = 38, move = "SolarBeam" }
        },
        model = `a_c_retriever`, height = 1.0, weight = 13.0
    },
    [3] = {
        id = 3, name = "Venusaur", type1 = "grass", type2 = "poison",
        baseStats = { hp = 80, attack = 82, defense = 83, sp_attack = 100, sp_defense = 100, speed = 80 },
        catchRate = 45, baseExp = 236, growthRate = "medium_slow",
        abilities = { "Overgrow", "Chlorophyll" },
        moves = {
            { level = 1, move = "VineWhip" },
            { level = 22, move = "RazorLeaf" },
            { level = 32, move = "SolarBeam" },
            { level = 45, move = "Earthquake" }
        },
        model = `a_c_boar`, height = 2.0, weight = 100.0
    },
    [4] = {
        id = 4, name = "Charmander", type1 = "fire",
        baseStats = { hp = 39, attack = 52, defense = 43, sp_attack = 60, sp_defense = 50, speed = 65 },
        catchRate = 45, baseExp = 62, growthRate = "medium_slow",
        abilities = { "Blaze", "Solar Power" },
        evolution = { level = 16, to = 5, toName = "Charmeleon" },
        moves = {
            { level = 1, move = "Scratch" },
            { level = 1, move = "Growl" },
            { level = 4, move = "Ember" },
            { level = 18, move = "FirePunch" },
            { level = 25, move = "Flamethrower" },
            { level = 36, move = "FireBlast" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 8.5
    },
    [5] = {
        id = 5, name = "Charmeleon", type1 = "fire",
        baseStats = { hp = 58, attack = 64, defense = 58, sp_attack = 80, sp_defense = 65, speed = 80 },
        catchRate = 45, baseExp = 142, growthRate = "medium_slow",
        abilities = { "Blaze", "Solar Power" },
        evolution = { level = 36, to = 6, toName = "Charizard" },
        moves = {
            { level = 1, move = "Scratch" },
            { level = 7, move = "Ember" },
            { level = 19, move = "FirePunch" },
            { level = 28, move = "Flamethrower" },
            { level = 40, move = "FireBlast" }
        },
        model = `a_c_coyote`, height = 1.1, weight = 19.0
    },
    [6] = {
        id = 6, name = "Charizard", type1 = "fire", type2 = "flying",
        baseStats = { hp = 78, attack = 84, defense = 78, sp_attack = 109, sp_defense = 85, speed = 100 },
        catchRate = 45, baseExp = 240, growthRate = "medium_slow",
        abilities = { "Blaze", "Solar Power" },
        moves = {
            { level = 1, move = "Flamethrower" },
            { level = 36, move = "WingAttack" },
            { level = 46, move = "AirSlash" },
            { level = 55, move = "FireBlast" },
            { level = 62, move = "DragonClaw" }
        },
        model = `a_c_cormorant`, height = 1.7, weight = 90.5
    },
    [7] = {
        id = 7, name = "Squirtle", type1 = "water",
        baseStats = { hp = 44, attack = 48, defense = 65, sp_attack = 50, sp_defense = 64, speed = 43 },
        catchRate = 45, baseExp = 63, growthRate = "medium_slow",
        abilities = { "Torrent", "Rain Dish" },
        evolution = { level = 16, to = 8, toName = "Wartortle" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 1, move = "TailWhip" },
            { level = 3, move = "WaterGun" },
            { level = 8, move = "Bubble" },
            { level = 22, move = "Surf" },
            { level = 35, move = "HydroPump" }
        },
        model = `a_c_pug`, height = 0.5, weight = 9.0
    },
    [8] = {
        id = 8, name = "Wartortle", type1 = "water",
        baseStats = { hp = 59, attack = 63, defense = 80, sp_attack = 65, sp_defense = 80, speed = 58 },
        catchRate = 45, baseExp = 142, growthRate = "medium_slow",
        abilities = { "Torrent", "Rain Dish" },
        evolution = { level = 36, to = 9, toName = "Blastoise" },
        moves = {
            { level = 1, move = "WaterGun" },
            { level = 15, move = "Bubble" },
            { level = 25, move = "Surf" },
            { level = 40, move = "HydroPump" }
        },
        model = `a_c_retriever`, height = 1.0, weight = 22.5
    },
    [9] = {
        id = 9, name = "Blastoise", type1 = "water",
        baseStats = { hp = 79, attack = 83, defense = 100, sp_attack = 85, sp_defense = 105, speed = 78 },
        catchRate = 45, baseExp = 239, growthRate = "medium_slow",
        abilities = { "Torrent", "Rain Dish" },
        moves = {
            { level = 1, move = "WaterGun" },
            { level = 28, move = "Surf" },
            { level = 39, move = "HydroPump" },
            { level = 50, move = "IceBeam" },
            { level = 60, move = "FlashCannon" }
        },
        model = `a_c_boar`, height = 1.6, weight = 85.5
    },
    [10] = {
        id = 10, name = "Caterpie", type1 = "bug",
        baseStats = { hp = 45, attack = 30, defense = 35, sp_attack = 20, sp_defense = 20, speed = 45 },
        catchRate = 255, baseExp = 39, growthRate = "medium_fast",
        abilities = { "Shield Dust", "Run Away" },
        evolution = { level = 7, to = 11, toName = "Metapod" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 1, move = "BugBite" }
        },
        model = `a_c_rat`, height = 0.3, weight = 2.9
    },
    [11] = {
        id = 11, name = "Metapod", type1 = "bug",
        baseStats = { hp = 50, attack = 20, defense = 55, sp_attack = 25, sp_defense = 25, speed = 30 },
        catchRate = 120, baseExp = 72, growthRate = "medium_fast",
        abilities = { "Shed Skin" },
        evolution = { level = 10, to = 12, toName = "Butterfree" },
        moves = {
            { level = 1, move = "Tackle" }
        },
        model = `a_c_rat`, height = 0.7, weight = 9.9
    },
    [12] = {
        id = 12, name = "Butterfree", type1 = "bug", type2 = "flying",
        baseStats = { hp = 60, attack = 45, defense = 50, sp_attack = 90, sp_defense = 80, speed = 70 },
        catchRate = 45, baseExp = 178, growthRate = "medium_fast",
        abilities = { "Compound Eyes", "Tinted Lens" },
        moves = {
            { level = 10, move = "Confusion" },
            { level = 12, move = "SleepPowder" },
            { level = 18, move = "Psybeam" },
            { level = 28, move = "AirSlash" },
            { level = 34, move = "BugBuzz" }
        },
        model = `a_c_pigeon`, height = 1.1, weight = 32.0
    },
    [16] = {
        id = 16, name = "Pidgey", type1 = "normal", type2 = "flying",
        baseStats = { hp = 40, attack = 45, defense = 40, sp_attack = 35, sp_defense = 35, speed = 56 },
        catchRate = 255, baseExp = 50, growthRate = "medium_slow",
        abilities = { "Keen Eye", "Tangled Feet" },
        evolution = { level = 18, to = 17, toName = "Pidgeotto" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Gust" },
            { level = 9, move = "QuickAttack" },
            { level = 17, move = "WingAttack" }
        },
        model = `a_c_pigeon`, height = 0.3, weight = 1.8
    },
    [17] = {
        id = 17, name = "Pidgeotto", type1 = "normal", type2 = "flying",
        baseStats = { hp = 63, attack = 60, defense = 55, sp_attack = 50, sp_defense = 50, speed = 71 },
        catchRate = 120, baseExp = 122, growthRate = "medium_slow",
        abilities = { "Keen Eye", "Tangled Feet" },
        evolution = { level = 36, to = 18, toName = "Pidgeot" },
        moves = {
            { level = 1, move = "Gust" },
            { level = 12, move = "QuickAttack" },
            { level = 20, move = "WingAttack" },
            { level = 32, move = "AirSlash" }
        },
        model = `a_c_seagull`, height = 1.1, weight = 30.0
    },
    [18] = {
        id = 18, name = "Pidgeot", type1 = "normal", type2 = "flying",
        baseStats = { hp = 83, attack = 80, defense = 75, sp_attack = 70, sp_defense = 70, speed = 101 },
        catchRate = 45, baseExp = 216, growthRate = "medium_slow",
        abilities = { "Keen Eye", "Tangled Feet" },
        moves = {
            { level = 1, move = "WingAttack" },
            { level = 36, move = "AirSlash" },
            { level = 45, move = "BraveBird" },
            { level = 52, move = "HyperBeam" }
        },
        model = `a_c_cormorant`, height = 1.5, weight = 39.5
    },
    [19] = {
        id = 19, name = "Rattata", type1 = "normal",
        baseStats = { hp = 30, attack = 56, defense = 35, sp_attack = 25, sp_defense = 35, speed = 72 },
        catchRate = 255, baseExp = 51, growthRate = "medium_fast",
        abilities = { "Run Away", "Guts" },
        evolution = { level = 20, to = 20, toName = "Raticate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 4, move = "QuickAttack" },
            { level = 7, move = "Bite" },
            { level = 16, move = "Crunch" }
        },
        model = `a_c_rat`, height = 0.3, weight = 3.5
    },
    [25] = {
        id = 25, name = "Pikachu", type1 = "electric",
        baseStats = { hp = 35, attack = 55, defense = 40, sp_attack = 50, sp_defense = 50, speed = 90 },
        catchRate = 190, baseExp = 112, growthRate = "medium_fast",
        abilities = { "Static", "Lightning Rod" },
        evolution = { item = "thunderstone", to = 26, toName = "Raichu" },
        moves = {
            { level = 1, move = "ThunderShock" },
            { level = 1, move = "Growl" },
            { level = 5, move = "TailWhip" },
            { level = 7, move = "QuickAttack" },
            { level = 15, move = "ThunderWave" },
            { level = 26, move = "Thunderbolt" },
            { level = 42, move = "Thunder" }
        },
        model = `a_c_pug`, height = 0.4, weight = 6.0
    },
    [26] = {
        id = 26, name = "Raichu", type1 = "electric",
        baseStats = { hp = 60, attack = 90, defense = 55, sp_attack = 90, sp_defense = 80, speed = 110 },
        catchRate = 75, baseExp = 218, growthRate = "medium_fast",
        abilities = { "Static", "Lightning Rod" },
        moves = {
            { level = 1, move = "ThunderShock" },
            { level = 1, move = "QuickAttack" },
            { level = 26, move = "Thunderbolt" },
            { level = 40, move = "Thunder" },
            { level = 50, move = "IronHead" }
        },
        model = `a_c_retriever`, height = 0.8, weight = 30.0
    },
    [58] = {
        id = 58, name = "Growlithe", type1 = "fire",
        baseStats = { hp = 55, attack = 70, defense = 45, sp_attack = 70, sp_defense = 50, speed = 60 },
        catchRate = 190, baseExp = 70, growthRate = "slow",
        abilities = { "Intimidate", "Flash Fire" },
        evolution = { item = "firestone", to = 59, toName = "Arcanine" },
        moves = {
            { level = 1, move = "Bite" },
            { level = 6, move = "Ember" },
            { level = 19, move = "FirePunch" },
            { level = 30, move = "Flamethrower" },
            { level = 42, move = "Crunch" }
        },
        model = `a_c_shepherd`, height = 0.7, weight = 19.0
    },
    [59] = {
        id = 59, name = "Arcanine", type1 = "fire",
        baseStats = { hp = 90, attack = 110, defense = 80, sp_attack = 100, sp_defense = 80, speed = 95 },
        catchRate = 75, baseExp = 194, growthRate = "slow",
        abilities = { "Intimidate", "Flash Fire" },
        moves = {
            { level = 1, move = "Flamethrower" },
            { level = 1, move = "Crunch" },
            { level = 34, move = "CloseCombat" },
            { level = 45, move = "FireBlast" },
            { level = 56, move = "Outrage" }
        },
        model = `a_c_shepherd`, height = 1.9, weight = 155.0
    },
    [63] = {
        id = 63, name = "Abra", type1 = "psychic",
        baseStats = { hp = 25, attack = 20, defense = 15, sp_attack = 105, sp_defense = 55, speed = 90 },
        catchRate = 200, baseExp = 62, growthRate = "medium_slow",
        abilities = { "Synchronize", "Inner Focus" },
        evolution = { level = 16, to = 64, toName = "Kadabra" },
        moves = {
            { level = 1, move = "Confusion" },
            { level = 8, move = "Psybeam" }
        },
        model = `a_c_cat_01`, height = 0.9, weight = 19.5
    },
    [65] = {
        id = 65, name = "Alakazam", type1 = "psychic",
        baseStats = { hp = 55, attack = 50, defense = 45, sp_attack = 135, sp_defense = 95, speed = 120 },
        catchRate = 50, baseExp = 225, growthRate = "medium_slow",
        abilities = { "Synchronize", "Magic Guard" },
        moves = {
            { level = 16, move = "Psybeam" },
            { level = 30, move = "Psychic" },
            { level = 40, move = "ShadowBall" },
            { level = 52, move = "DazzlingGleam" }
        },
        model = `a_c_cat_01`, height = 1.5, weight = 48.0
    },
    [66] = {
        id = 66, name = "Machop", type1 = "fighting",
        baseStats = { hp = 70, attack = 80, defense = 50, sp_attack = 35, sp_defense = 35, speed = 35 },
        catchRate = 180, baseExp = 61, growthRate = "medium_slow",
        abilities = { "Guts", "No Guard" },
        evolution = { level = 28, to = 67, toName = "Machoke" },
        moves = {
            { level = 1, move = "KarateChop" },
            { level = 15, move = "RockSlide" },
            { level = 25, move = "CrossChop" }
        },
        model = `a_c_chimp`, height = 0.8, weight = 19.5
    },
    [68] = {
        id = 68, name = "Machamp", type1 = "fighting",
        baseStats = { hp = 90, attack = 130, defense = 80, sp_attack = 65, sp_defense = 85, speed = 55 },
        catchRate = 45, baseExp = 227, growthRate = "medium_slow",
        abilities = { "Guts", "No Guard" },
        moves = {
            { level = 1, move = "CrossChop" },
            { level = 36, move = "Earthquake" },
            { level = 45, move = "StoneEdge" },
            { level = 54, move = "CloseCombat" }
        },
        model = `a_c_chimp`, height = 1.6, weight = 130.0
    },
    [74] = {
        id = 74, name = "Geodude", type1 = "rock", type2 = "ground",
        baseStats = { hp = 40, attack = 80, defense = 100, sp_attack = 30, sp_defense = 30, speed = 20 },
        catchRate = 255, baseExp = 60, growthRate = "medium_slow",
        abilities = { "Rock Head", "Sturdy" },
        evolution = { level = 25, to = 75, toName = "Graveler" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 6, move = "MudSlap" },
            { level = 11, move = "RockThrow" },
            { level = 22, move = "RockSlide" },
            { level = 32, move = "Earthquake" }
        },
        model = `a_c_rat`, height = 0.4, weight = 20.0
    },
    [92] = {
        id = 92, name = "Gastly", type1 = "ghost", type2 = "poison",
        baseStats = { hp = 30, attack = 35, defense = 30, sp_attack = 100, sp_defense = 35, speed = 80 },
        catchRate = 190, baseExp = 62, growthRate = "medium_slow",
        abilities = { "Levitate" },
        evolution = { level = 25, to = 93, toName = "Haunter" },
        moves = {
            { level = 1, move = "PoisonSting" },
            { level = 10, move = "NightShade" },
            { level = 20, move = "ShadowBall" },
            { level = 28, move = "SludgeBomb" }
        },
        model = `a_c_crow`, height = 1.3, weight = 0.1
    },
    [94] = {
        id = 94, name = "Gengar", type1 = "ghost", type2 = "poison",
        baseStats = { hp = 60, attack = 65, defense = 60, sp_attack = 130, sp_defense = 75, speed = 110 },
        catchRate = 45, baseExp = 225, growthRate = "medium_slow",
        abilities = { "Cursed Body" },
        moves = {
            { level = 1, move = "ShadowBall" },
            { level = 28, move = "SludgeBomb" },
            { level = 36, move = "DarkPulse" },
            { level = 50, move = "DazzlingGleam" }
        },
        model = `a_c_crow`, height = 1.5, weight = 40.5
    },
    [95] = {
        id = 95, name = "Onix", type1 = "rock", type2 = "ground",
        baseStats = { hp = 35, attack = 45, defense = 160, sp_attack = 30, sp_defense = 45, speed = 70 },
        catchRate = 45, baseExp = 77, growthRate = "medium_fast",
        abilities = { "Rock Head", "Sturdy" },
        moves = {
            { level = 1, move = "RockThrow" },
            { level = 15, move = "RockSlide" },
            { level = 30, move = "IronHead" },
            { level = 45, move = "Earthquake" }
        },
        model = `a_c_coyote`, height = 8.8, weight = 210.0
    },
    [129] = {
        id = 129, name = "Magikarp", type1 = "water",
        baseStats = { hp = 20, attack = 10, defense = 55, sp_attack = 15, sp_defense = 20, speed = 80 },
        catchRate = 255, baseExp = 40, growthRate = "slow",
        abilities = { "Swift Swim", "Rattled" },
        evolution = { level = 20, to = 130, toName = "Gyarados" },
        moves = {
            { level = 1, move = "Tackle" }
        },
        model = `a_c_fish`, height = 0.9, weight = 10.0
    },
    [130] = {
        id = 130, name = "Gyarados", type1 = "water", type2 = "flying",
        baseStats = { hp = 95, attack = 125, defense = 79, sp_attack = 60, sp_defense = 100, speed = 81 },
        catchRate = 45, baseExp = 189, growthRate = "slow",
        abilities = { "Intimidate", "Moxie" },
        moves = {
            { level = 20, move = "Bite" },
            { level = 25, move = "Waterfall" },
            { level = 35, move = "IceFang" },
            { level = 45, move = "HydroPump" },
            { level = 55, move = "Outrage" }
        },
        model = `a_c_killerwhale`, height = 6.5, weight = 235.0
    },
    [131] = {
        id = 131, name = "Lapras", type1 = "water", type2 = "ice",
        baseStats = { hp = 130, attack = 85, defense = 80, sp_attack = 85, sp_defense = 95, speed = 60 },
        catchRate = 45, baseExp = 187, growthRate = "slow",
        abilities = { "Water Absorb", "Shell Armor" },
        moves = {
            { level = 1, move = "WaterGun" },
            { level = 15, move = "IceBeam" },
            { level = 28, move = "Surf" },
            { level = 40, move = "Blizzard" },
            { level = 55, move = "HydroPump" }
        },
        model = `a_c_dolphin`, height = 2.5, weight = 220.0
    },
    [133] = {
        id = 133, name = "Eevee", type1 = "normal",
        baseStats = { hp = 55, attack = 55, defense = 50, sp_attack = 45, sp_defense = 65, speed = 55 },
        catchRate = 45, baseExp = 65, growthRate = "medium_fast",
        abilities = { "Run Away", "Adaptability" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 1, move = "TailWhip" },
            { level = 5, move = "QuickAttack" },
            { level = 15, move = "Bite" }
        },
        model = `a_c_pug`, height = 0.3, weight = 6.5
    },
    [134] = {
        id = 134, name = "Vaporeon", type1 = "water",
        baseStats = { hp = 130, attack = 65, defense = 60, sp_attack = 110, sp_defense = 95, speed = 65 },
        catchRate = 45, baseExp = 184, growthRate = "medium_fast",
        abilities = { "Water Absorb", "Hydration" },
        moves = {
            { level = 1, move = "WaterGun" },
            { level = 20, move = "Surf" },
            { level = 35, move = "IceBeam" },
            { level = 45, move = "HydroPump" }
        },
        model = `a_c_cat_01`, height = 1.0, weight = 29.0
    },
    [135] = {
        id = 135, name = "Jolteon", type1 = "electric",
        baseStats = { hp = 65, attack = 65, defense = 60, sp_attack = 110, sp_defense = 95, speed = 130 },
        catchRate = 45, baseExp = 184, growthRate = "medium_fast",
        abilities = { "Volt Absorb", "Quick Feet" },
        moves = {
            { level = 1, move = "ThunderShock" },
            { level = 20, move = "ThunderWave" },
            { level = 30, move = "Thunderbolt" },
            { level = 45, move = "Thunder" }
        },
        model = `a_c_coyote`, height = 0.8, weight = 24.5
    },
    [136] = {
        id = 136, name = "Flareon", type1 = "fire",
        baseStats = { hp = 65, attack = 130, defense = 60, sp_attack = 95, sp_defense = 110, speed = 65 },
        catchRate = 45, baseExp = 184, growthRate = "medium_fast",
        abilities = { "Flash Fire", "Guts" },
        moves = {
            { level = 1, move = "Ember" },
            { level = 20, move = "Bite" },
            { level = 30, move = "Flamethrower" },
            { level = 45, move = "FireBlast" }
        },
        model = `a_c_retriever`, height = 0.9, weight = 25.0
    },
    [143] = {
        id = 143, name = "Snorlax", type1 = "normal",
        baseStats = { hp = 160, attack = 110, defense = 65, sp_attack = 65, sp_defense = 110, speed = 30 },
        catchRate = 25, baseExp = 189, growthRate = "slow",
        abilities = { "Immunity", "Thick Fat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 15, move = "Bite" },
            { level = 25, move = "BodySlam" },
            { level = 40, move = "Earthquake" },
            { level = 55, move = "HyperBeam" }
        },
        model = `a_c_boar`, height = 2.1, weight = 460.0
    },
    [149] = {
        id = 149, name = "Dragonite", type1 = "dragon", type2 = "flying",
        baseStats = { hp = 91, attack = 134, defense = 95, sp_attack = 100, sp_defense = 100, speed = 80 },
        catchRate = 45, baseExp = 270, growthRate = "slow",
        abilities = { "Inner Focus", "Multiscale" },
        moves = {
            { level = 1, move = "WingAttack" },
            { level = 35, move = "DragonClaw" },
            { level = 45, move = "Thunderbolt" },
            { level = 55, move = "Outrage" },
            { level = 65, move = "HyperBeam" }
        },
        model = `a_c_cormorant`, height = 2.2, weight = 210.0
    },
    [150] = {
        id = 150, name = "Mewtwo", type1 = "psychic",
        baseStats = { hp = 106, attack = 110, defense = 90, sp_attack = 154, sp_defense = 90, speed = 130 },
        catchRate = 3, baseExp = 306, growthRate = "slow",
        abilities = { "Pressure", "Unnerve" },
        moves = {
            { level = 1, move = "Confusion" },
            { level = 30, move = "Psybeam" },
            { level = 50, move = "Psychic" },
            { level = 65, move = "ShadowBall" },
            { level = 75, move = "HyperBeam" }
        },
        model = `a_c_cat_01`, height = 2.0, weight = 122.0
    }
}

function GetPokedexEntry(id)
    if not id then return nil end
    local num = tonumber(id)
    if num and PokedexData[num] then return PokedexData[num] end
    local clean = string.lower(string.gsub(tostring(id), "%s+", ""))
    for _, v in pairs(PokedexData) do
        if string.lower(string.gsub(v.name, "%s+", "")) == clean then
            return v
        end
    end
    return nil
end

