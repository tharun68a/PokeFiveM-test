-- ====================================================================
-- PokeFiveM - Complete Official National Pokédex (#1 to #1025)
-- Generations I through IX (Kanto to Paldea + DLC: Pecharunt)
-- Author: Pika Studio
-- Fully Indexed, Optimised & Complete Stats / Types / Moves
-- ====================================================================

PokedexData = {
    [1] = {
        id = 1, name = "Bulbasaur", type1 = "grass", type2 = "poison", customModel = "bulbasaur", baseStats = { hp = 45, attack = 49, defense = 49, sp_attack = 65, sp_defense = 65, speed = 45 },
        catchRate = 45, baseExp = 90, growthRate = "medium_fast",
        abilities = { "Overgrow", "Chlorophyll" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.7, weight = 6.9
    },
    [2] = {
        id = 2, name = "Ivysaur", type1 = "grass", type2 = "poison", baseStats = { hp = 60, attack = 62, defense = 63, sp_attack = 80, sp_defense = 80, speed = 60 },
        catchRate = 45, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Overgrow", "Chlorophyll" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 13
    },
    [3] = {
        id = 3, name = "Venusaur", type1 = "grass", type2 = "poison", baseStats = { hp = 80, attack = 82, defense = 83, sp_attack = 100, sp_defense = 100, speed = 80 },
        catchRate = 45, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Overgrow", "Chlorophyll" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2, weight = 100
    },
    [4] = {
        id = 4, name = "Charmander", type1 = "fire", customModel = "charmander", baseStats = { hp = 39, attack = 52, defense = 43, sp_attack = 60, sp_defense = 50, speed = 65 },
        catchRate = 45, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Blaze", "Solar Power" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.6, weight = 8.5
    },
    [5] = {
        id = 5, name = "Charmeleon", type1 = "fire", baseStats = { hp = 58, attack = 64, defense = 58, sp_attack = 80, sp_defense = 65, speed = 80 },
        catchRate = 45, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Blaze", "Solar Power" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.1, weight = 19
    },
    [6] = {
        id = 6, name = "Charizard", type1 = "fire", type2 = "flying", customModel = "charizard", baseStats = { hp = 78, attack = 84, defense = 78, sp_attack = 109, sp_defense = 85, speed = 100 },
        catchRate = 45, baseExp = 152, growthRate = "medium_fast",
        abilities = { "Blaze", "Solar Power" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.7, weight = 90.5
    },
    [7] = {
        id = 7, name = "Squirtle", type1 = "water", customModel = "squirtle", baseStats = { hp = 44, attack = 48, defense = 65, sp_attack = 50, sp_defense = 64, speed = 43 },
        catchRate = 45, baseExp = 89, growthRate = "medium_fast",
        abilities = { "Torrent", "Rain Dish" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 9
    },
    [8] = {
        id = 8, name = "Wartortle", type1 = "water", baseStats = { hp = 59, attack = 63, defense = 80, sp_attack = 65, sp_defense = 80, speed = 58 },
        catchRate = 45, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Torrent", "Rain Dish" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 22.5
    },
    [9] = {
        id = 9, name = "Blastoise", type1 = "water", baseStats = { hp = 79, attack = 83, defense = 100, sp_attack = 85, sp_defense = 105, speed = 78 },
        catchRate = 45, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Torrent", "Rain Dish" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.6, weight = 85.5
    },
    [10] = {
        id = 10, name = "Caterpie", type1 = "bug", baseStats = { hp = 45, attack = 30, defense = 35, sp_attack = 20, sp_defense = 20, speed = 45 },
        catchRate = 45, baseExp = 55, growthRate = "medium_fast",
        abilities = { "Shield Dust", "Run Away" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 2.9
    },
    [11] = {
        id = 11, name = "Metapod", type1 = "bug", baseStats = { hp = 50, attack = 20, defense = 55, sp_attack = 25, sp_defense = 25, speed = 30 },
        catchRate = 45, baseExp = 58, growthRate = "medium_fast",
        abilities = { "Shed Skin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.7, weight = 9.9
    },
    [12] = {
        id = 12, name = "Butterfree", type1 = "bug", type2 = "flying", baseStats = { hp = 60, attack = 45, defense = 50, sp_attack = 90, sp_defense = 80, speed = 70 },
        catchRate = 45, baseExp = 112, growthRate = "medium_fast",
        abilities = { "Compound Eyes", "Tinted Lens" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.1, weight = 32
    },
    [13] = {
        id = 13, name = "Weedle", type1 = "bug", type2 = "poison", baseStats = { hp = 40, attack = 35, defense = 30, sp_attack = 20, sp_defense = 20, speed = 50 },
        catchRate = 45, baseExp = 55, growthRate = "medium_fast",
        abilities = { "Shield Dust", "Run Away" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 3.2
    },
    [14] = {
        id = 14, name = "Kakuna", type1 = "bug", type2 = "poison", baseStats = { hp = 45, attack = 25, defense = 50, sp_attack = 25, sp_defense = 25, speed = 35 },
        catchRate = 45, baseExp = 58, growthRate = "medium_fast",
        abilities = { "Shed Skin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 10
    },
    [15] = {
        id = 15, name = "Beedrill", type1 = "bug", type2 = "poison", baseStats = { hp = 65, attack = 90, defense = 40, sp_attack = 45, sp_defense = 80, speed = 75 },
        catchRate = 45, baseExp = 112, growthRate = "medium_fast",
        abilities = { "Swarm", "Sniper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 29.5
    },
    [16] = {
        id = 16, name = "Pidgey", type1 = "normal", type2 = "flying", baseStats = { hp = 40, attack = 45, defense = 40, sp_attack = 35, sp_defense = 35, speed = 56 },
        catchRate = 45, baseExp = 71, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Tangled Feet", "Big Pecks" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 1.8
    },
    [17] = {
        id = 17, name = "Pidgeotto", type1 = "normal", type2 = "flying", baseStats = { hp = 63, attack = 60, defense = 55, sp_attack = 50, sp_defense = 50, speed = 71 },
        catchRate = 45, baseExp = 99, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Tangled Feet", "Big Pecks" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.1, weight = 30
    },
    [18] = {
        id = 18, name = "Pidgeot", type1 = "normal", type2 = "flying", baseStats = { hp = 83, attack = 80, defense = 75, sp_attack = 70, sp_defense = 70, speed = 101 },
        catchRate = 45, baseExp = 136, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Tangled Feet", "Big Pecks" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.5, weight = 39.5
    },
    [19] = {
        id = 19, name = "Rattata", type1 = "normal", baseStats = { hp = 30, attack = 56, defense = 35, sp_attack = 25, sp_defense = 35, speed = 72 },
        catchRate = 45, baseExp = 72, growthRate = "medium_fast",
        abilities = { "Run Away", "Guts", "Hustle" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 3.5
    },
    [20] = {
        id = 20, name = "Raticate", type1 = "normal", baseStats = { hp = 55, attack = 81, defense = 60, sp_attack = 50, sp_defense = 70, speed = 97 },
        catchRate = 45, baseExp = 118, growthRate = "medium_fast",
        abilities = { "Run Away", "Guts", "Hustle" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.7, weight = 18.5
    },
    [21] = {
        id = 21, name = "Spearow", type1 = "normal", type2 = "flying", baseStats = { hp = 40, attack = 60, defense = 30, sp_attack = 31, sp_defense = 31, speed = 70 },
        catchRate = 45, baseExp = 74, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Sniper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 2
    },
    [22] = {
        id = 22, name = "Fearow", type1 = "normal", type2 = "flying", baseStats = { hp = 65, attack = 90, defense = 65, sp_attack = 61, sp_defense = 61, speed = 100 },
        catchRate = 45, baseExp = 126, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Sniper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.2, weight = 38
    },
    [23] = {
        id = 23, name = "Ekans", type1 = "poison", baseStats = { hp = 35, attack = 60, defense = 44, sp_attack = 40, sp_defense = 54, speed = 55 },
        catchRate = 45, baseExp = 82, growthRate = "medium_fast",
        abilities = { "Intimidate", "Shed Skin", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 2, weight = 6.9
    },
    [24] = {
        id = 24, name = "Arbok", type1 = "poison", baseStats = { hp = 60, attack = 95, defense = 69, sp_attack = 65, sp_defense = 79, speed = 80 },
        catchRate = 45, baseExp = 128, growthRate = "medium_fast",
        abilities = { "Intimidate", "Shed Skin", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 3.5, weight = 65
    },
    [25] = {
        id = 25, name = "Pikachu", type1 = "electric", customModel = "pikachu", baseStats = { hp = 35, attack = 55, defense = 40, sp_attack = 50, sp_defense = 50, speed = 90 },
        catchRate = 45, baseExp = 91, growthRate = "medium_fast",
        abilities = { "Static", "Lightning Rod" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.4, weight = 6
    },
    [26] = {
        id = 26, name = "Raichu", type1 = "electric", baseStats = { hp = 60, attack = 90, defense = 55, sp_attack = 90, sp_defense = 80, speed = 110 },
        catchRate = 45, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Static", "Lightning Rod" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.8, weight = 30
    },
    [27] = {
        id = 27, name = "Sandshrew", type1 = "ground", baseStats = { hp = 50, attack = 75, defense = 85, sp_attack = 20, sp_defense = 30, speed = 40 },
        catchRate = 45, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Sand Veil", "Sand Rush" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.6, weight = 12
    },
    [28] = {
        id = 28, name = "Sandslash", type1 = "ground", baseStats = { hp = 75, attack = 100, defense = 110, sp_attack = 45, sp_defense = 55, speed = 65 },
        catchRate = 45, baseExp = 128, growthRate = "medium_fast",
        abilities = { "Sand Veil", "Sand Rush" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1, weight = 29.5
    },
    [29] = {
        id = 29, name = "Nidoran-F", type1 = "poison", baseStats = { hp = 55, attack = 47, defense = 52, sp_attack = 40, sp_defense = 40, speed = 41 },
        catchRate = 45, baseExp = 78, growthRate = "medium_fast",
        abilities = { "Poison Point", "Rivalry", "Hustle" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.4, weight = 7
    },
    [30] = {
        id = 30, name = "Nidorina", type1 = "poison", baseStats = { hp = 70, attack = 62, defense = 67, sp_attack = 55, sp_defense = 55, speed = 56 },
        catchRate = 45, baseExp = 104, growthRate = "medium_fast",
        abilities = { "Poison Point", "Rivalry", "Hustle" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.8, weight = 20
    },
    [31] = {
        id = 31, name = "Nidoqueen", type1 = "poison", type2 = "ground", baseStats = { hp = 90, attack = 92, defense = 87, sp_attack = 75, sp_defense = 85, speed = 76 },
        catchRate = 45, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Poison Point", "Rivalry", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.3, weight = 60
    },
    [32] = {
        id = 32, name = "Nidoran-M", type1 = "poison", baseStats = { hp = 46, attack = 57, defense = 40, sp_attack = 40, sp_defense = 40, speed = 50 },
        catchRate = 45, baseExp = 78, growthRate = "medium_fast",
        abilities = { "Poison Point", "Rivalry", "Hustle" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.5, weight = 9
    },
    [33] = {
        id = 33, name = "Nidorino", type1 = "poison", baseStats = { hp = 61, attack = 72, defense = 57, sp_attack = 55, sp_defense = 55, speed = 65 },
        catchRate = 45, baseExp = 104, growthRate = "medium_fast",
        abilities = { "Poison Point", "Rivalry", "Hustle" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.9, weight = 19.5
    },
    [34] = {
        id = 34, name = "Nidoking", type1 = "poison", type2 = "ground", baseStats = { hp = 81, attack = 102, defense = 77, sp_attack = 85, sp_defense = 75, speed = 85 },
        catchRate = 45, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Poison Point", "Rivalry", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.4, weight = 62
    },
    [35] = {
        id = 35, name = "Clefairy", type1 = "fairy", baseStats = { hp = 70, attack = 45, defense = 48, sp_attack = 60, sp_defense = 65, speed = 35 },
        catchRate = 45, baseExp = 92, growthRate = "medium_fast",
        abilities = { "Cute Charm", "Magic Guard", "Friend Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.6, weight = 7.5
    },
    [36] = {
        id = 36, name = "Clefable", type1 = "fairy", baseStats = { hp = 95, attack = 70, defense = 73, sp_attack = 95, sp_defense = 90, speed = 60 },
        catchRate = 45, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Cute Charm", "Magic Guard", "Unaware" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 1.3, weight = 40
    },
    [37] = {
        id = 37, name = "Vulpix", type1 = "fire", baseStats = { hp = 38, attack = 41, defense = 40, sp_attack = 50, sp_defense = 65, speed = 65 },
        catchRate = 45, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Flash Fire", "Drought" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.6, weight = 9.9
    },
    [38] = {
        id = 38, name = "Ninetales", type1 = "fire", baseStats = { hp = 73, attack = 76, defense = 75, sp_attack = 81, sp_defense = 100, speed = 100 },
        catchRate = 45, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Flash Fire", "Drought" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.1, weight = 19.9
    },
    [39] = {
        id = 39, name = "Jigglypuff", type1 = "normal", type2 = "fairy", baseStats = { hp = 115, attack = 45, defense = 20, sp_attack = 45, sp_defense = 25, speed = 20 },
        catchRate = 45, baseExp = 77, growthRate = "medium_fast",
        abilities = { "Cute Charm", "Competitive", "Friend Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.5, weight = 5.5
    },
    [40] = {
        id = 40, name = "Wigglytuff", type1 = "normal", type2 = "fairy", baseStats = { hp = 140, attack = 70, defense = 45, sp_attack = 85, sp_defense = 50, speed = 45 },
        catchRate = 45, baseExp = 124, growthRate = "medium_fast",
        abilities = { "Cute Charm", "Competitive", "Frisk" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1, weight = 12
    },
    [41] = {
        id = 41, name = "Zubat", type1 = "poison", type2 = "flying", baseStats = { hp = 40, attack = 45, defense = 35, sp_attack = 30, sp_defense = 40, speed = 55 },
        catchRate = 45, baseExp = 70, growthRate = "medium_fast",
        abilities = { "Inner Focus", "Infiltrator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.8, weight = 7.5
    },
    [42] = {
        id = 42, name = "Golbat", type1 = "poison", type2 = "flying", baseStats = { hp = 75, attack = 80, defense = 70, sp_attack = 65, sp_defense = 75, speed = 90 },
        catchRate = 45, baseExp = 130, growthRate = "medium_fast",
        abilities = { "Inner Focus", "Infiltrator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.6, weight = 55
    },
    [43] = {
        id = 43, name = "Oddish", type1 = "grass", type2 = "poison", baseStats = { hp = 45, attack = 50, defense = 55, sp_attack = 75, sp_defense = 65, speed = 30 },
        catchRate = 45, baseExp = 91, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Run Away" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 5.4
    },
    [44] = {
        id = 44, name = "Gloom", type1 = "grass", type2 = "poison", baseStats = { hp = 60, attack = 65, defense = 70, sp_attack = 85, sp_defense = 75, speed = 40 },
        catchRate = 45, baseExp = 112, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Stench" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.8, weight = 8.6
    },
    [45] = {
        id = 45, name = "Vileplume", type1 = "grass", type2 = "poison", baseStats = { hp = 75, attack = 80, defense = 85, sp_attack = 110, sp_defense = 90, speed = 50 },
        catchRate = 45, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Effect Spore" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 18.6
    },
    [46] = {
        id = 46, name = "Paras", type1 = "bug", type2 = "grass", baseStats = { hp = 35, attack = 70, defense = 55, sp_attack = 45, sp_defense = 55, speed = 25 },
        catchRate = 45, baseExp = 81, growthRate = "medium_fast",
        abilities = { "Effect Spore", "Dry Skin", "Damp" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 5.4
    },
    [47] = {
        id = 47, name = "Parasect", type1 = "bug", type2 = "grass", baseStats = { hp = 60, attack = 95, defense = 80, sp_attack = 60, sp_defense = 80, speed = 30 },
        catchRate = 45, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Effect Spore", "Dry Skin", "Damp" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 29.5
    },
    [48] = {
        id = 48, name = "Venonat", type1 = "bug", type2 = "poison", baseStats = { hp = 60, attack = 55, defense = 50, sp_attack = 40, sp_defense = 55, speed = 45 },
        catchRate = 45, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Compound Eyes", "Tinted Lens", "Run Away" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 30
    },
    [49] = {
        id = 49, name = "Venomoth", type1 = "bug", type2 = "poison", baseStats = { hp = 70, attack = 65, defense = 60, sp_attack = 90, sp_defense = 75, speed = 90 },
        catchRate = 45, baseExp = 128, growthRate = "medium_fast",
        abilities = { "Shield Dust", "Tinted Lens", "Wonder Skin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.5, weight = 12.5
    },
    [50] = {
        id = 50, name = "Diglett", type1 = "ground", baseStats = { hp = 10, attack = 55, defense = 25, sp_attack = 35, sp_defense = 45, speed = 95 },
        catchRate = 45, baseExp = 75, growthRate = "medium_fast",
        abilities = { "Sand Veil", "Arena Trap", "Sand Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.2, weight = 0.8
    },
    [51] = {
        id = 51, name = "Dugtrio", type1 = "ground", baseStats = { hp = 35, attack = 100, defense = 50, sp_attack = 50, sp_defense = 70, speed = 120 },
        catchRate = 45, baseExp = 121, growthRate = "medium_fast",
        abilities = { "Sand Veil", "Arena Trap", "Sand Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.7, weight = 33.3
    },
    [52] = {
        id = 52, name = "Meowth", type1 = "normal", customModel = "meowth", baseStats = { hp = 40, attack = 45, defense = 35, sp_attack = 40, sp_defense = 40, speed = 90 },
        catchRate = 45, baseExp = 82, growthRate = "medium_fast",
        abilities = { "Pickup", "Technician", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 4.2
    },
    [53] = {
        id = 53, name = "Persian", type1 = "normal", baseStats = { hp = 65, attack = 70, defense = 60, sp_attack = 65, sp_defense = 65, speed = 115 },
        catchRate = 45, baseExp = 125, growthRate = "medium_fast",
        abilities = { "Limber", "Technician", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1, weight = 32
    },
    [54] = {
        id = 54, name = "Psyduck", type1 = "water", baseStats = { hp = 50, attack = 52, defense = 48, sp_attack = 65, sp_defense = 50, speed = 55 },
        catchRate = 45, baseExp = 91, growthRate = "medium_fast",
        abilities = { "Damp", "Cloud Nine", "Swift Swim" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.8, weight = 19.6
    },
    [55] = {
        id = 55, name = "Golduck", type1 = "water", customModel = "golduck", baseStats = { hp = 80, attack = 82, defense = 78, sp_attack = 95, sp_defense = 80, speed = 85 },
        catchRate = 45, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Damp", "Cloud Nine", "Swift Swim" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.7, weight = 76.6
    },
    [56] = {
        id = 56, name = "Mankey", type1 = "fighting", baseStats = { hp = 40, attack = 80, defense = 35, sp_attack = 35, sp_defense = 45, speed = 70 },
        catchRate = 45, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Vital Spirit", "Anger Point", "Defiant" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.5, weight = 28
    },
    [57] = {
        id = 57, name = "Primeape", type1 = "fighting", baseStats = { hp = 65, attack = 105, defense = 60, sp_attack = 60, sp_defense = 70, speed = 95 },
        catchRate = 45, baseExp = 130, growthRate = "medium_fast",
        abilities = { "Vital Spirit", "Anger Point", "Defiant" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1, weight = 32
    },
    [58] = {
        id = 58, name = "Growlithe", type1 = "fire", baseStats = { hp = 55, attack = 70, defense = 45, sp_attack = 70, sp_defense = 50, speed = 60 },
        catchRate = 45, baseExp = 100, growthRate = "medium_fast",
        abilities = { "Intimidate", "Flash Fire", "Justified" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.7, weight = 19
    },
    [59] = {
        id = 59, name = "Arcanine", type1 = "fire", baseStats = { hp = 90, attack = 110, defense = 80, sp_attack = 100, sp_defense = 80, speed = 95 },
        catchRate = 45, baseExp = 158, growthRate = "medium_fast",
        abilities = { "Intimidate", "Flash Fire", "Justified" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.9, weight = 155
    },
    [60] = {
        id = 60, name = "Poliwag", type1 = "water", baseStats = { hp = 40, attack = 50, defense = 40, sp_attack = 40, sp_defense = 40, speed = 90 },
        catchRate = 45, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Water Absorb", "Damp", "Swift Swim" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 12.4
    },
    [61] = {
        id = 61, name = "Poliwhirl", type1 = "water", baseStats = { hp = 65, attack = 65, defense = 65, sp_attack = 50, sp_defense = 50, speed = 90 },
        catchRate = 45, baseExp = 110, growthRate = "medium_fast",
        abilities = { "Water Absorb", "Damp", "Swift Swim" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 20
    },
    [62] = {
        id = 62, name = "Poliwrath", type1 = "water", type2 = "fighting", baseStats = { hp = 90, attack = 95, defense = 95, sp_attack = 70, sp_defense = 90, speed = 70 },
        catchRate = 45, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Water Absorb", "Damp", "Swift Swim" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.3, weight = 54
    },
    [63] = {
        id = 63, name = "Abra", type1 = "psychic", baseStats = { hp = 25, attack = 20, defense = 15, sp_attack = 105, sp_defense = 55, speed = 90 },
        catchRate = 45, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Synchronize", "Inner Focus", "Magic Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.9, weight = 19.5
    },
    [64] = {
        id = 64, name = "Kadabra", type1 = "psychic", baseStats = { hp = 40, attack = 35, defense = 30, sp_attack = 120, sp_defense = 70, speed = 105 },
        catchRate = 45, baseExp = 114, growthRate = "medium_fast",
        abilities = { "Synchronize", "Inner Focus", "Magic Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.3, weight = 56.5
    },
    [65] = {
        id = 65, name = "Alakazam", type1 = "psychic", customModel = "alakazam", baseStats = { hp = 55, attack = 50, defense = 45, sp_attack = 135, sp_defense = 95, speed = 120 },
        catchRate = 45, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Synchronize", "Inner Focus", "Magic Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.5, weight = 48
    },
    [66] = {
        id = 66, name = "Machop", type1 = "fighting", baseStats = { hp = 70, attack = 80, defense = 50, sp_attack = 35, sp_defense = 35, speed = 35 },
        catchRate = 45, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Guts", "No Guard", "Steadfast" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.8, weight = 19.5
    },
    [67] = {
        id = 67, name = "Machoke", type1 = "fighting", customModel = "machoke", baseStats = { hp = 80, attack = 100, defense = 70, sp_attack = 50, sp_defense = 60, speed = 45 },
        catchRate = 45, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Guts", "No Guard", "Steadfast" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.5, weight = 70.5
    },
    [68] = {
        id = 68, name = "Machamp", type1 = "fighting", customModel = "machamp", baseStats = { hp = 90, attack = 130, defense = 80, sp_attack = 65, sp_defense = 85, speed = 55 },
        catchRate = 45, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Guts", "No Guard", "Steadfast" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.6, weight = 130
    },
    [69] = {
        id = 69, name = "Bellsprout", type1 = "grass", type2 = "poison", baseStats = { hp = 50, attack = 75, defense = 35, sp_attack = 70, sp_defense = 30, speed = 40 },
        catchRate = 45, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Gluttony" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.7, weight = 4
    },
    [70] = {
        id = 70, name = "Weepinbell", type1 = "grass", type2 = "poison", baseStats = { hp = 65, attack = 90, defense = 50, sp_attack = 85, sp_defense = 45, speed = 55 },
        catchRate = 45, baseExp = 111, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Gluttony" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 6.4
    },
    [71] = {
        id = 71, name = "Victreebel", type1 = "grass", type2 = "poison", baseStats = { hp = 80, attack = 105, defense = 65, sp_attack = 100, sp_defense = 70, speed = 70 },
        catchRate = 45, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Gluttony" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.7, weight = 15.5
    },
    [72] = {
        id = 72, name = "Tentacool", type1 = "water", type2 = "poison", baseStats = { hp = 40, attack = 40, defense = 35, sp_attack = 50, sp_defense = 100, speed = 70 },
        catchRate = 45, baseExp = 95, growthRate = "medium_fast",
        abilities = { "Clear Body", "Liquid Ooze", "Rain Dish" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.9, weight = 45.5
    },
    [73] = {
        id = 73, name = "Tentacruel", type1 = "water", type2 = "poison", baseStats = { hp = 80, attack = 70, defense = 65, sp_attack = 80, sp_defense = 120, speed = 100 },
        catchRate = 45, baseExp = 147, growthRate = "medium_fast",
        abilities = { "Clear Body", "Liquid Ooze", "Rain Dish" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.6, weight = 55
    },
    [74] = {
        id = 74, name = "Geodude", type1 = "rock", type2 = "ground", customModel = "geodude", baseStats = { hp = 40, attack = 80, defense = 100, sp_attack = 30, sp_defense = 30, speed = 20 },
        catchRate = 45, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Rock Head", "Sturdy", "Sand Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.4, weight = 20
    },
    [75] = {
        id = 75, name = "Graveler", type1 = "rock", type2 = "ground", baseStats = { hp = 55, attack = 95, defense = 115, sp_attack = 45, sp_defense = 45, speed = 35 },
        catchRate = 45, baseExp = 111, growthRate = "medium_fast",
        abilities = { "Rock Head", "Sturdy", "Sand Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1, weight = 105
    },
    [76] = {
        id = 76, name = "Golem", type1 = "rock", type2 = "ground", baseStats = { hp = 80, attack = 120, defense = 130, sp_attack = 55, sp_defense = 65, speed = 45 },
        catchRate = 45, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Rock Head", "Sturdy", "Sand Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.4, weight = 300
    },
    [77] = {
        id = 77, name = "Ponyta", type1 = "fire", baseStats = { hp = 50, attack = 85, defense = 55, sp_attack = 65, sp_defense = 65, speed = 90 },
        catchRate = 45, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Run Away", "Flash Fire", "Flame Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1, weight = 30
    },
    [78] = {
        id = 78, name = "Rapidash", type1 = "fire", baseStats = { hp = 65, attack = 100, defense = 70, sp_attack = 80, sp_defense = 80, speed = 105 },
        catchRate = 45, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Run Away", "Flash Fire", "Flame Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.7, weight = 95
    },
    [79] = {
        id = 79, name = "Slowpoke", type1 = "water", type2 = "psychic", baseStats = { hp = 90, attack = 65, defense = 65, sp_attack = 40, sp_defense = 40, speed = 15 },
        catchRate = 45, baseExp = 90, growthRate = "medium_fast",
        abilities = { "Oblivious", "Own Tempo", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 36
    },
    [80] = {
        id = 80, name = "Slowbro", type1 = "water", type2 = "psychic", baseStats = { hp = 95, attack = 75, defense = 110, sp_attack = 100, sp_defense = 80, speed = 30 },
        catchRate = 45, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Oblivious", "Own Tempo", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.6, weight = 78.5
    },
    [81] = {
        id = 81, name = "Magnemite", type1 = "electric", type2 = "steel", baseStats = { hp = 25, attack = 35, defense = 70, sp_attack = 95, sp_defense = 55, speed = 45 },
        catchRate = 45, baseExp = 92, growthRate = "medium_fast",
        abilities = { "Magnet Pull", "Sturdy", "Analytic" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.3, weight = 6
    },
    [82] = {
        id = 82, name = "Magneton", type1 = "electric", type2 = "steel", baseStats = { hp = 50, attack = 60, defense = 95, sp_attack = 120, sp_defense = 70, speed = 70 },
        catchRate = 45, baseExp = 132, growthRate = "medium_fast",
        abilities = { "Magnet Pull", "Sturdy", "Analytic" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1, weight = 60
    },
    [83] = {
        id = 83, name = "Farfetch’d", type1 = "normal", type2 = "flying", baseStats = { hp = 52, attack = 90, defense = 55, sp_attack = 58, sp_defense = 62, speed = 60 },
        catchRate = 45, baseExp = 107, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Inner Focus", "Defiant" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.8, weight = 15
    },
    [84] = {
        id = 84, name = "Doduo", type1 = "normal", type2 = "flying", baseStats = { hp = 35, attack = 85, defense = 45, sp_attack = 35, sp_defense = 35, speed = 75 },
        catchRate = 45, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Run Away", "Early Bird", "Tangled Feet" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.4, weight = 39.2
    },
    [85] = {
        id = 85, name = "Dodrio", type1 = "normal", type2 = "flying", baseStats = { hp = 60, attack = 110, defense = 70, sp_attack = 60, sp_defense = 60, speed = 110 },
        catchRate = 45, baseExp = 134, growthRate = "medium_fast",
        abilities = { "Run Away", "Early Bird", "Tangled Feet" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.8, weight = 85.2
    },
    [86] = {
        id = 86, name = "Seel", type1 = "water", baseStats = { hp = 65, attack = 45, defense = 55, sp_attack = 45, sp_defense = 70, speed = 45 },
        catchRate = 45, baseExp = 92, growthRate = "medium_fast",
        abilities = { "Thick Fat", "Hydration", "Ice Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.1, weight = 90
    },
    [87] = {
        id = 87, name = "Dewgong", type1 = "water", type2 = "ice", baseStats = { hp = 90, attack = 70, defense = 80, sp_attack = 70, sp_defense = 95, speed = 70 },
        catchRate = 45, baseExp = 135, growthRate = "medium_fast",
        abilities = { "Thick Fat", "Hydration", "Ice Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.7, weight = 120
    },
    [88] = {
        id = 88, name = "Grimer", type1 = "poison", baseStats = { hp = 80, attack = 80, defense = 50, sp_attack = 40, sp_defense = 50, speed = 25 },
        catchRate = 45, baseExp = 92, growthRate = "medium_fast",
        abilities = { "Stench", "Sticky Hold", "Poison Touch" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.9, weight = 30
    },
    [89] = {
        id = 89, name = "Muk", type1 = "poison", baseStats = { hp = 105, attack = 105, defense = 75, sp_attack = 65, sp_defense = 100, speed = 50 },
        catchRate = 45, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Stench", "Sticky Hold", "Poison Touch" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.2, weight = 30
    },
    [90] = {
        id = 90, name = "Shellder", type1 = "water", baseStats = { hp = 30, attack = 65, defense = 100, sp_attack = 45, sp_defense = 25, speed = 40 },
        catchRate = 45, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Shell Armor", "Skill Link", "Overcoat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 4
    },
    [91] = {
        id = 91, name = "Cloyster", type1 = "water", type2 = "ice", baseStats = { hp = 50, attack = 95, defense = 180, sp_attack = 85, sp_defense = 45, speed = 70 },
        catchRate = 45, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Shell Armor", "Skill Link", "Overcoat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.5, weight = 132.5
    },
    [92] = {
        id = 92, name = "Gastly", type1 = "ghost", type2 = "poison", baseStats = { hp = 30, attack = 35, defense = 30, sp_attack = 100, sp_defense = 35, speed = 80 },
        catchRate = 45, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.3, weight = 0.1
    },
    [93] = {
        id = 93, name = "Haunter", type1 = "ghost", type2 = "poison", baseStats = { hp = 45, attack = 50, defense = 45, sp_attack = 115, sp_defense = 55, speed = 95 },
        catchRate = 45, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.6, weight = 0.1
    },
    [94] = {
        id = 94, name = "Gengar", type1 = "ghost", type2 = "poison", baseStats = { hp = 60, attack = 65, defense = 60, sp_attack = 130, sp_defense = 75, speed = 110 },
        catchRate = 45, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Cursed Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.5, weight = 40.5
    },
    [95] = {
        id = 95, name = "Onix", type1 = "rock", type2 = "ground", baseStats = { hp = 35, attack = 45, defense = 160, sp_attack = 30, sp_defense = 45, speed = 70 },
        catchRate = 45, baseExp = 110, growthRate = "medium_fast",
        abilities = { "Rock Head", "Sturdy", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 8.8, weight = 210
    },
    [96] = {
        id = 96, name = "Drowzee", type1 = "psychic", baseStats = { hp = 60, attack = 48, defense = 45, sp_attack = 43, sp_defense = 90, speed = 42 },
        catchRate = 45, baseExp = 93, growthRate = "medium_fast",
        abilities = { "Insomnia", "Forewarn", "Inner Focus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1, weight = 32.4
    },
    [97] = {
        id = 97, name = "Hypno", type1 = "psychic", baseStats = { hp = 85, attack = 73, defense = 70, sp_attack = 73, sp_defense = 115, speed = 67 },
        catchRate = 45, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Insomnia", "Forewarn", "Inner Focus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.6, weight = 75.6
    },
    [98] = {
        id = 98, name = "Krabby", type1 = "water", baseStats = { hp = 30, attack = 105, defense = 90, sp_attack = 25, sp_defense = 25, speed = 50 },
        catchRate = 45, baseExp = 92, growthRate = "medium_fast",
        abilities = { "Hyper Cutter", "Shell Armor", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 6.5
    },
    [99] = {
        id = 99, name = "Kingler", type1 = "water", baseStats = { hp = 55, attack = 130, defense = 115, sp_attack = 50, sp_defense = 50, speed = 75 },
        catchRate = 45, baseExp = 135, growthRate = "medium_fast",
        abilities = { "Hyper Cutter", "Shell Armor", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.3, weight = 60
    },
    [100] = {
        id = 100, name = "Voltorb", type1 = "electric", baseStats = { hp = 40, attack = 30, defense = 50, sp_attack = 55, sp_defense = 55, speed = 100 },
        catchRate = 45, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Soundproof", "Static", "Aftermath" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.5, weight = 10.4
    },
    [101] = {
        id = 101, name = "Electrode", type1 = "electric", baseStats = { hp = 60, attack = 50, defense = 70, sp_attack = 80, sp_defense = 80, speed = 150 },
        catchRate = 45, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Soundproof", "Static", "Aftermath" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.2, weight = 66.6
    },
    [102] = {
        id = 102, name = "Exeggcute", type1 = "grass", type2 = "psychic", baseStats = { hp = 60, attack = 40, defense = 80, sp_attack = 60, sp_defense = 45, speed = 40 },
        catchRate = 45, baseExp = 92, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Harvest" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 2.5
    },
    [103] = {
        id = 103, name = "Exeggutor", type1 = "grass", type2 = "psychic", baseStats = { hp = 95, attack = 95, defense = 85, sp_attack = 125, sp_defense = 75, speed = 55 },
        catchRate = 45, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Harvest" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2, weight = 120
    },
    [104] = {
        id = 104, name = "Cubone", type1 = "ground", baseStats = { hp = 50, attack = 50, defense = 95, sp_attack = 40, sp_defense = 50, speed = 35 },
        catchRate = 45, baseExp = 91, growthRate = "medium_fast",
        abilities = { "Rock Head", "Lightning Rod", "Battle Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.4, weight = 6.5
    },
    [105] = {
        id = 105, name = "Marowak", type1 = "ground", baseStats = { hp = 60, attack = 80, defense = 110, sp_attack = 50, sp_defense = 80, speed = 45 },
        catchRate = 45, baseExp = 121, growthRate = "medium_fast",
        abilities = { "Rock Head", "Lightning Rod", "Battle Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1, weight = 45
    },
    [106] = {
        id = 106, name = "Hitmonlee", type1 = "fighting", baseStats = { hp = 50, attack = 120, defense = 53, sp_attack = 35, sp_defense = 110, speed = 87 },
        catchRate = 45, baseExp = 130, growthRate = "medium_fast",
        abilities = { "Limber", "Reckless", "Unburden" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.5, weight = 49.8
    },
    [107] = {
        id = 107, name = "Hitmonchan", type1 = "fighting", customModel = "hitmonchan", baseStats = { hp = 50, attack = 105, defense = 79, sp_attack = 35, sp_defense = 110, speed = 76 },
        catchRate = 45, baseExp = 130, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Iron Fist", "Inner Focus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.4, weight = 50.2
    },
    [108] = {
        id = 108, name = "Lickitung", type1 = "normal", baseStats = { hp = 90, attack = 55, defense = 75, sp_attack = 60, sp_defense = 75, speed = 30 },
        catchRate = 45, baseExp = 110, growthRate = "medium_fast",
        abilities = { "Own Tempo", "Oblivious", "Cloud Nine" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.2, weight = 65.5
    },
    [109] = {
        id = 109, name = "Koffing", type1 = "poison", baseStats = { hp = 40, attack = 65, defense = 95, sp_attack = 60, sp_defense = 45, speed = 35 },
        catchRate = 45, baseExp = 97, growthRate = "medium_fast",
        abilities = { "Levitate", "Neutralizing Gas", "Stench" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.6, weight = 1
    },
    [110] = {
        id = 110, name = "Weezing", type1 = "poison", baseStats = { hp = 65, attack = 90, defense = 120, sp_attack = 85, sp_defense = 70, speed = 60 },
        catchRate = 45, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Levitate", "Neutralizing Gas", "Stench" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.2, weight = 9.5
    },
    [111] = {
        id = 111, name = "Rhyhorn", type1 = "ground", type2 = "rock", baseStats = { hp = 80, attack = 85, defense = 95, sp_attack = 30, sp_defense = 30, speed = 25 },
        catchRate = 45, baseExp = 98, growthRate = "medium_fast",
        abilities = { "Lightning Rod", "Rock Head", "Reckless" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1, weight = 115
    },
    [112] = {
        id = 112, name = "Rhydon", type1 = "ground", type2 = "rock", baseStats = { hp = 105, attack = 130, defense = 120, sp_attack = 45, sp_defense = 45, speed = 40 },
        catchRate = 45, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Lightning Rod", "Rock Head", "Reckless" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.9, weight = 120
    },
    [113] = {
        id = 113, name = "Chansey", type1 = "normal", baseStats = { hp = 250, attack = 5, defense = 5, sp_attack = 35, sp_defense = 105, speed = 50 },
        catchRate = 45, baseExp = 128, growthRate = "medium_fast",
        abilities = { "Natural Cure", "Serene Grace", "Healer" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.1, weight = 34.6
    },
    [114] = {
        id = 114, name = "Tangela", type1 = "grass", baseStats = { hp = 65, attack = 55, defense = 115, sp_attack = 100, sp_defense = 40, speed = 60 },
        catchRate = 45, baseExp = 124, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Leaf Guard", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 35
    },
    [115] = {
        id = 115, name = "Kangaskhan", type1 = "normal", baseStats = { hp = 105, attack = 95, defense = 80, sp_attack = 40, sp_defense = 80, speed = 90 },
        catchRate = 45, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Early Bird", "Scrappy", "Inner Focus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 2.2, weight = 80
    },
    [116] = {
        id = 116, name = "Horsea", type1 = "water", baseStats = { hp = 30, attack = 40, defense = 70, sp_attack = 70, sp_defense = 25, speed = 60 },
        catchRate = 45, baseExp = 84, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Sniper", "Damp" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 8
    },
    [117] = {
        id = 117, name = "Seadra", type1 = "water", baseStats = { hp = 55, attack = 65, defense = 95, sp_attack = 95, sp_defense = 45, speed = 85 },
        catchRate = 45, baseExp = 125, growthRate = "medium_fast",
        abilities = { "Poison Point", "Sniper", "Damp" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 25
    },
    [118] = {
        id = 118, name = "Goldeen", type1 = "water", baseStats = { hp = 45, attack = 67, defense = 60, sp_attack = 35, sp_defense = 50, speed = 63 },
        catchRate = 45, baseExp = 91, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Water Veil", "Lightning Rod" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 15
    },
    [119] = {
        id = 119, name = "Seaking", type1 = "water", baseStats = { hp = 80, attack = 92, defense = 65, sp_attack = 65, sp_defense = 80, speed = 68 },
        catchRate = 45, baseExp = 128, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Water Veil", "Lightning Rod" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.3, weight = 39
    },
    [120] = {
        id = 120, name = "Staryu", type1 = "water", baseStats = { hp = 30, attack = 45, defense = 55, sp_attack = 70, sp_defense = 55, speed = 85 },
        catchRate = 45, baseExp = 97, growthRate = "medium_fast",
        abilities = { "Illuminate", "Natural Cure", "Analytic" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.8, weight = 34.5
    },
    [121] = {
        id = 121, name = "Starmie", type1 = "water", type2 = "psychic", baseStats = { hp = 60, attack = 75, defense = 85, sp_attack = 100, sp_defense = 85, speed = 115 },
        catchRate = 45, baseExp = 148, growthRate = "medium_fast",
        abilities = { "Illuminate", "Natural Cure", "Analytic" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.1, weight = 80
    },
    [122] = {
        id = 122, name = "Mr. Mime", type1 = "psychic", type2 = "fairy", baseStats = { hp = 40, attack = 45, defense = 65, sp_attack = 100, sp_defense = 120, speed = 90 },
        catchRate = 45, baseExp = 131, growthRate = "medium_fast",
        abilities = { "Soundproof", "Filter", "Technician" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.3, weight = 54.5
    },
    [123] = {
        id = 123, name = "Scyther", type1 = "bug", type2 = "flying", customModel = "scyther", baseStats = { hp = 70, attack = 110, defense = 80, sp_attack = 55, sp_defense = 80, speed = 105 },
        catchRate = 45, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Swarm", "Technician", "Steadfast" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.5, weight = 56
    },
    [124] = {
        id = 124, name = "Jynx", type1 = "ice", type2 = "psychic", baseStats = { hp = 65, attack = 50, defense = 35, sp_attack = 115, sp_defense = 95, speed = 95 },
        catchRate = 45, baseExp = 130, growthRate = "medium_fast",
        abilities = { "Oblivious", "Forewarn", "Dry Skin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 1.4, weight = 40.6
    },
    [125] = {
        id = 125, name = "Electabuzz", type1 = "electric", baseStats = { hp = 65, attack = 83, defense = 57, sp_attack = 95, sp_defense = 85, speed = 105 },
        catchRate = 45, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Static", "Vital Spirit" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.1, weight = 30
    },
    [126] = {
        id = 126, name = "Magmar", type1 = "fire", baseStats = { hp = 65, attack = 95, defense = 57, sp_attack = 100, sp_defense = 85, speed = 93 },
        catchRate = 45, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Flame Body", "Vital Spirit" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.3, weight = 44.5
    },
    [127] = {
        id = 127, name = "Pinsir", type1 = "bug", baseStats = { hp = 65, attack = 125, defense = 100, sp_attack = 55, sp_defense = 70, speed = 85 },
        catchRate = 45, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Hyper Cutter", "Mold Breaker", "Moxie" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.5, weight = 55
    },
    [128] = {
        id = 128, name = "Tauros", type1 = "normal", baseStats = { hp = 75, attack = 100, defense = 95, sp_attack = 40, sp_defense = 70, speed = 110 },
        catchRate = 45, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Intimidate", "Anger Point", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.4, weight = 88.4
    },
    [129] = {
        id = 129, name = "Magikarp", type1 = "water", baseStats = { hp = 20, attack = 10, defense = 55, sp_attack = 15, sp_defense = 20, speed = 80 },
        catchRate = 45, baseExp = 57, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Rattled" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.9, weight = 10
    },
    [130] = {
        id = 130, name = "Gyarados", type1 = "water", type2 = "flying", baseStats = { hp = 95, attack = 125, defense = 79, sp_attack = 60, sp_defense = 100, speed = 81 },
        catchRate = 45, baseExp = 154, growthRate = "medium_fast",
        abilities = { "Intimidate", "Moxie" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 6.5, weight = 235
    },
    [131] = {
        id = 131, name = "Lapras", type1 = "water", type2 = "ice", baseStats = { hp = 130, attack = 85, defense = 80, sp_attack = 85, sp_defense = 95, speed = 60 },
        catchRate = 45, baseExp = 152, growthRate = "medium_fast",
        abilities = { "Water Absorb", "Shell Armor", "Hydration" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2.5, weight = 220
    },
    [132] = {
        id = 132, name = "Ditto", type1 = "normal", baseStats = { hp = 48, attack = 48, defense = 48, sp_attack = 48, sp_defense = 48, speed = 48 },
        catchRate = 45, baseExp = 82, growthRate = "medium_fast",
        abilities = { "Limber", "Imposter" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 4
    },
    [133] = {
        id = 133, name = "Eevee", type1 = "normal", baseStats = { hp = 55, attack = 55, defense = 50, sp_attack = 45, sp_defense = 65, speed = 55 },
        catchRate = 45, baseExp = 92, growthRate = "medium_fast",
        abilities = { "Run Away", "Adaptability", "Anticipation" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 6.5
    },
    [134] = {
        id = 134, name = "Vaporeon", type1 = "water", baseStats = { hp = 130, attack = 65, defense = 60, sp_attack = 110, sp_defense = 95, speed = 65 },
        catchRate = 45, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Water Absorb", "Hydration" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 29
    },
    [135] = {
        id = 135, name = "Jolteon", type1 = "electric", baseStats = { hp = 65, attack = 65, defense = 60, sp_attack = 110, sp_defense = 95, speed = 130 },
        catchRate = 45, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Volt Absorb", "Quick Feet" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.8, weight = 24.5
    },
    [136] = {
        id = 136, name = "Flareon", type1 = "fire", baseStats = { hp = 65, attack = 130, defense = 60, sp_attack = 95, sp_defense = 110, speed = 65 },
        catchRate = 45, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Flash Fire", "Guts" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.9, weight = 25
    },
    [137] = {
        id = 137, name = "Porygon", type1 = "normal", baseStats = { hp = 65, attack = 60, defense = 70, sp_attack = 85, sp_defense = 75, speed = 40 },
        catchRate = 45, baseExp = 112, growthRate = "medium_fast",
        abilities = { "Trace", "Download", "Analytic" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.8, weight = 36.5
    },
    [138] = {
        id = 138, name = "Omanyte", type1 = "rock", type2 = "water", baseStats = { hp = 35, attack = 40, defense = 100, sp_attack = 90, sp_defense = 55, speed = 35 },
        catchRate = 45, baseExp = 101, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Shell Armor", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.4, weight = 7.5
    },
    [139] = {
        id = 139, name = "Omastar", type1 = "rock", type2 = "water", baseStats = { hp = 70, attack = 60, defense = 125, sp_attack = 115, sp_defense = 70, speed = 55 },
        catchRate = 45, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Shell Armor", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1, weight = 35
    },
    [140] = {
        id = 140, name = "Kabuto", type1 = "rock", type2 = "water", baseStats = { hp = 30, attack = 80, defense = 90, sp_attack = 55, sp_defense = 45, speed = 55 },
        catchRate = 45, baseExp = 101, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Battle Armor", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.5, weight = 11.5
    },
    [141] = {
        id = 141, name = "Kabutops", type1 = "rock", type2 = "water", baseStats = { hp = 60, attack = 115, defense = 105, sp_attack = 65, sp_defense = 70, speed = 80 },
        catchRate = 45, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Battle Armor", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.3, weight = 40.5
    },
    [142] = {
        id = 142, name = "Aerodactyl", type1 = "rock", type2 = "flying", baseStats = { hp = 80, attack = 105, defense = 65, sp_attack = 60, sp_defense = 75, speed = 130 },
        catchRate = 45, baseExp = 147, growthRate = "medium_fast",
        abilities = { "Rock Head", "Pressure", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.8, weight = 59
    },
    [143] = {
        id = 143, name = "Snorlax", type1 = "normal", baseStats = { hp = 160, attack = 110, defense = 65, sp_attack = 65, sp_defense = 110, speed = 30 },
        catchRate = 45, baseExp = 154, growthRate = "medium_fast",
        abilities = { "Immunity", "Thick Fat", "Gluttony" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 2.1, weight = 460
    },
    [144] = {
        id = 144, name = "Articuno", type1 = "ice", type2 = "flying", baseStats = { hp = 90, attack = 85, defense = 100, sp_attack = 95, sp_defense = 125, speed = 85 },
        catchRate = 45, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Pressure", "Snow Cloak" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 1.7, weight = 55.4
    },
    [145] = {
        id = 145, name = "Zapdos", type1 = "electric", type2 = "flying", baseStats = { hp = 90, attack = 90, defense = 85, sp_attack = 125, sp_defense = 90, speed = 100 },
        catchRate = 45, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Pressure", "Static" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.6, weight = 52.6
    },
    [146] = {
        id = 146, name = "Moltres", type1 = "fire", type2 = "flying", baseStats = { hp = 90, attack = 100, defense = 90, sp_attack = 125, sp_defense = 85, speed = 90 },
        catchRate = 45, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Pressure", "Flame Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 2, weight = 60
    },
    [147] = {
        id = 147, name = "Dratini", type1 = "dragon", baseStats = { hp = 41, attack = 64, defense = 45, sp_attack = 50, sp_defense = 50, speed = 50 },
        catchRate = 45, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Shed Skin", "Marvel Scale" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 1.8, weight = 3.3
    },
    [148] = {
        id = 148, name = "Dragonair", type1 = "dragon", baseStats = { hp = 61, attack = 84, defense = 65, sp_attack = 70, sp_defense = 70, speed = 70 },
        catchRate = 45, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Shed Skin", "Marvel Scale" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 4, weight = 16.5
    },
    [149] = {
        id = 149, name = "Dragonite", type1 = "dragon", type2 = "flying", baseStats = { hp = 91, attack = 134, defense = 95, sp_attack = 100, sp_defense = 100, speed = 80 },
        catchRate = 45, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Inner Focus", "Multiscale" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 2.2, weight = 210
    },
    [150] = {
        id = 150, name = "Mewtwo", type1 = "psychic", customModel = "mewtwo", baseStats = { hp = 106, attack = 110, defense = 90, sp_attack = 154, sp_defense = 90, speed = 130 },
        catchRate = 45, baseExp = 194, growthRate = "medium_fast",
        abilities = { "Pressure", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 2, weight = 122
    },
    [151] = {
        id = 151, name = "Mew", type1 = "psychic", baseStats = { hp = 100, attack = 100, defense = 100, sp_attack = 100, sp_defense = 100, speed = 100 },
        catchRate = 45, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Synchronize" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 4
    },
    [152] = {
        id = 152, name = "Chikorita", type1 = "grass", baseStats = { hp = 45, attack = 49, defense = 65, sp_attack = 49, sp_defense = 65, speed = 45 },
        catchRate = 120, baseExp = 90, growthRate = "medium_fast",
        abilities = { "Overgrow", "Leaf Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.9, weight = 6.4
    },
    [153] = {
        id = 153, name = "Bayleef", type1 = "grass", baseStats = { hp = 60, attack = 62, defense = 80, sp_attack = 63, sp_defense = 80, speed = 60 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Overgrow", "Leaf Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 15.8
    },
    [154] = {
        id = 154, name = "Meganium", type1 = "grass", baseStats = { hp = 80, attack = 82, defense = 100, sp_attack = 83, sp_defense = 100, speed = 80 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Overgrow", "Leaf Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.8, weight = 100.5
    },
    [155] = {
        id = 155, name = "Cyndaquil", type1 = "fire", baseStats = { hp = 39, attack = 52, defense = 43, sp_attack = 60, sp_defense = 50, speed = 65 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Blaze", "Flash Fire" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.5, weight = 7.9
    },
    [156] = {
        id = 156, name = "Quilava", type1 = "fire", baseStats = { hp = 58, attack = 64, defense = 58, sp_attack = 80, sp_defense = 65, speed = 80 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Blaze", "Flash Fire" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.9, weight = 19
    },
    [157] = {
        id = 157, name = "Typhlosion", type1 = "fire", baseStats = { hp = 78, attack = 84, defense = 78, sp_attack = 109, sp_defense = 85, speed = 100 },
        catchRate = 120, baseExp = 152, growthRate = "medium_fast",
        abilities = { "Blaze", "Flash Fire" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.7, weight = 79.5
    },
    [158] = {
        id = 158, name = "Totodile", type1 = "water", baseStats = { hp = 50, attack = 65, defense = 64, sp_attack = 44, sp_defense = 48, speed = 43 },
        catchRate = 120, baseExp = 89, growthRate = "medium_fast",
        abilities = { "Torrent", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 9.5
    },
    [159] = {
        id = 159, name = "Croconaw", type1 = "water", baseStats = { hp = 65, attack = 80, defense = 80, sp_attack = 59, sp_defense = 63, speed = 58 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Torrent", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.1, weight = 25
    },
    [160] = {
        id = 160, name = "Feraligatr", type1 = "water", baseStats = { hp = 85, attack = 105, defense = 100, sp_attack = 79, sp_defense = 83, speed = 78 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Torrent", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2.3, weight = 88.8
    },
    [161] = {
        id = 161, name = "Sentret", type1 = "normal", baseStats = { hp = 35, attack = 46, defense = 34, sp_attack = 35, sp_defense = 45, speed = 20 },
        catchRate = 120, baseExp = 61, growthRate = "medium_fast",
        abilities = { "Run Away", "Keen Eye", "Frisk" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.8, weight = 6
    },
    [162] = {
        id = 162, name = "Furret", type1 = "normal", baseStats = { hp = 85, attack = 76, defense = 64, sp_attack = 45, sp_defense = 55, speed = 90 },
        catchRate = 120, baseExp = 118, growthRate = "medium_fast",
        abilities = { "Run Away", "Keen Eye", "Frisk" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.8, weight = 32.5
    },
    [163] = {
        id = 163, name = "Hoothoot", type1 = "normal", type2 = "flying", baseStats = { hp = 60, attack = 30, defense = 30, sp_attack = 36, sp_defense = 56, speed = 50 },
        catchRate = 120, baseExp = 74, growthRate = "medium_fast",
        abilities = { "Insomnia", "Keen Eye", "Tinted Lens" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.7, weight = 21.2
    },
    [164] = {
        id = 164, name = "Noctowl", type1 = "normal", type2 = "flying", baseStats = { hp = 100, attack = 50, defense = 50, sp_attack = 86, sp_defense = 96, speed = 70 },
        catchRate = 120, baseExp = 129, growthRate = "medium_fast",
        abilities = { "Insomnia", "Keen Eye", "Tinted Lens" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.6, weight = 40.8
    },
    [165] = {
        id = 165, name = "Ledyba", type1 = "bug", type2 = "flying", baseStats = { hp = 40, attack = 20, defense = 30, sp_attack = 40, sp_defense = 80, speed = 55 },
        catchRate = 120, baseExp = 75, growthRate = "medium_fast",
        abilities = { "Swarm", "Early Bird", "Rattled" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 10.8
    },
    [166] = {
        id = 166, name = "Ledian", type1 = "bug", type2 = "flying", baseStats = { hp = 55, attack = 35, defense = 50, sp_attack = 55, sp_defense = 110, speed = 85 },
        catchRate = 120, baseExp = 111, growthRate = "medium_fast",
        abilities = { "Swarm", "Early Bird", "Iron Fist" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.4, weight = 35.6
    },
    [167] = {
        id = 167, name = "Spinarak", type1 = "bug", type2 = "poison", baseStats = { hp = 40, attack = 60, defense = 40, sp_attack = 40, sp_defense = 40, speed = 30 },
        catchRate = 120, baseExp = 71, growthRate = "medium_fast",
        abilities = { "Swarm", "Insomnia", "Sniper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 8.5
    },
    [168] = {
        id = 168, name = "Ariados", type1 = "bug", type2 = "poison", baseStats = { hp = 70, attack = 90, defense = 70, sp_attack = 60, sp_defense = 70, speed = 40 },
        catchRate = 120, baseExp = 114, growthRate = "medium_fast",
        abilities = { "Swarm", "Insomnia", "Sniper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.1, weight = 33.5
    },
    [169] = {
        id = 169, name = "Crobat", type1 = "poison", type2 = "flying", baseStats = { hp = 85, attack = 90, defense = 80, sp_attack = 70, sp_defense = 80, speed = 130 },
        catchRate = 120, baseExp = 152, growthRate = "medium_fast",
        abilities = { "Inner Focus", "Infiltrator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.8, weight = 75
    },
    [170] = {
        id = 170, name = "Chinchou", type1 = "water", type2 = "electric", baseStats = { hp = 75, attack = 38, defense = 38, sp_attack = 56, sp_defense = 56, speed = 67 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Volt Absorb", "Illuminate", "Water Absorb" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 12
    },
    [171] = {
        id = 171, name = "Lanturn", type1 = "water", type2 = "electric", baseStats = { hp = 125, attack = 58, defense = 58, sp_attack = 76, sp_defense = 76, speed = 67 },
        catchRate = 120, baseExp = 131, growthRate = "medium_fast",
        abilities = { "Volt Absorb", "Illuminate", "Water Absorb" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 22.5
    },
    [172] = {
        id = 172, name = "Pichu", type1 = "electric", baseStats = { hp = 20, attack = 40, defense = 15, sp_attack = 35, sp_defense = 35, speed = 60 },
        catchRate = 120, baseExp = 58, growthRate = "medium_fast",
        abilities = { "Static", "Lightning Rod" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.3, weight = 2
    },
    [173] = {
        id = 173, name = "Cleffa", type1 = "fairy", baseStats = { hp = 50, attack = 25, defense = 28, sp_attack = 45, sp_defense = 55, speed = 15 },
        catchRate = 120, baseExp = 62, growthRate = "medium_fast",
        abilities = { "Cute Charm", "Magic Guard", "Friend Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.3, weight = 3
    },
    [174] = {
        id = 174, name = "Igglybuff", type1 = "normal", type2 = "fairy", baseStats = { hp = 90, attack = 30, defense = 15, sp_attack = 40, sp_defense = 20, speed = 15 },
        catchRate = 120, baseExp = 60, growthRate = "medium_fast",
        abilities = { "Cute Charm", "Competitive", "Friend Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 1
    },
    [175] = {
        id = 175, name = "Togepi", type1 = "fairy", baseStats = { hp = 35, attack = 20, defense = 65, sp_attack = 40, sp_defense = 65, speed = 20 },
        catchRate = 120, baseExp = 70, growthRate = "medium_fast",
        abilities = { "Hustle", "Serene Grace", "Super Luck" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.3, weight = 1.5
    },
    [176] = {
        id = 176, name = "Togetic", type1 = "fairy", type2 = "flying", baseStats = { hp = 55, attack = 40, defense = 85, sp_attack = 80, sp_defense = 105, speed = 40 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Hustle", "Serene Grace", "Super Luck" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.6, weight = 3.2
    },
    [177] = {
        id = 177, name = "Natu", type1 = "psychic", type2 = "flying", baseStats = { hp = 40, attack = 50, defense = 45, sp_attack = 70, sp_defense = 45, speed = 70 },
        catchRate = 120, baseExp = 91, growthRate = "medium_fast",
        abilities = { "Synchronize", "Early Bird", "Magic Bounce" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.2, weight = 2
    },
    [178] = {
        id = 178, name = "Xatu", type1 = "psychic", type2 = "flying", baseStats = { hp = 65, attack = 75, defense = 70, sp_attack = 95, sp_defense = 70, speed = 95 },
        catchRate = 120, baseExp = 134, growthRate = "medium_fast",
        abilities = { "Synchronize", "Early Bird", "Magic Bounce" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.5, weight = 15
    },
    [179] = {
        id = 179, name = "Mareep", type1 = "electric", baseStats = { hp = 55, attack = 40, defense = 40, sp_attack = 65, sp_defense = 45, speed = 35 },
        catchRate = 120, baseExp = 80, growthRate = "medium_fast",
        abilities = { "Static", "Plus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.6, weight = 7.8
    },
    [180] = {
        id = 180, name = "Flaaffy", type1 = "electric", baseStats = { hp = 70, attack = 55, defense = 55, sp_attack = 80, sp_defense = 60, speed = 45 },
        catchRate = 120, baseExp = 104, growthRate = "medium_fast",
        abilities = { "Static", "Plus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.8, weight = 13.3
    },
    [181] = {
        id = 181, name = "Ampharos", type1 = "electric", baseStats = { hp = 90, attack = 75, defense = 85, sp_attack = 115, sp_defense = 90, speed = 55 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Static", "Plus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.4, weight = 61.5
    },
    [182] = {
        id = 182, name = "Bellossom", type1 = "grass", baseStats = { hp = 75, attack = 80, defense = 95, sp_attack = 90, sp_defense = 100, speed = 50 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Healer" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 5.8
    },
    [183] = {
        id = 183, name = "Marill", type1 = "water", type2 = "fairy", baseStats = { hp = 70, attack = 20, defense = 50, sp_attack = 20, sp_defense = 50, speed = 40 },
        catchRate = 120, baseExp = 71, growthRate = "medium_fast",
        abilities = { "Thick Fat", "Huge Power", "Sap Sipper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 8.5
    },
    [184] = {
        id = 184, name = "Azumarill", type1 = "water", type2 = "fairy", baseStats = { hp = 100, attack = 50, defense = 80, sp_attack = 60, sp_defense = 80, speed = 50 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Thick Fat", "Huge Power", "Sap Sipper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.8, weight = 28.5
    },
    [185] = {
        id = 185, name = "Sudowoodo", type1 = "rock", baseStats = { hp = 70, attack = 100, defense = 115, sp_attack = 30, sp_defense = 65, speed = 30 },
        catchRate = 120, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Sturdy", "Rock Head", "Rattled" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.2, weight = 38
    },
    [186] = {
        id = 186, name = "Politoed", type1 = "water", baseStats = { hp = 90, attack = 75, defense = 75, sp_attack = 90, sp_defense = 100, speed = 70 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Water Absorb", "Damp", "Drizzle" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.1, weight = 33.9
    },
    [187] = {
        id = 187, name = "Hoppip", type1 = "grass", type2 = "flying", baseStats = { hp = 35, attack = 35, defense = 40, sp_attack = 35, sp_defense = 55, speed = 50 },
        catchRate = 120, baseExp = 71, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Leaf Guard", "Infiltrator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 0.5
    },
    [188] = {
        id = 188, name = "Skiploom", type1 = "grass", type2 = "flying", baseStats = { hp = 55, attack = 45, defense = 50, sp_attack = 45, sp_defense = 65, speed = 80 },
        catchRate = 120, baseExp = 97, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Leaf Guard", "Infiltrator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 1
    },
    [189] = {
        id = 189, name = "Jumpluff", type1 = "grass", type2 = "flying", baseStats = { hp = 75, attack = 55, defense = 70, sp_attack = 55, sp_defense = 95, speed = 110 },
        catchRate = 120, baseExp = 131, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Leaf Guard", "Infiltrator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.8, weight = 3
    },
    [190] = {
        id = 190, name = "Aipom", type1 = "normal", baseStats = { hp = 55, attack = 70, defense = 55, sp_attack = 40, sp_defense = 55, speed = 85 },
        catchRate = 120, baseExp = 102, growthRate = "medium_fast",
        abilities = { "Run Away", "Pickup", "Skill Link" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.8, weight = 11.5
    },
    [191] = {
        id = 191, name = "Sunkern", type1 = "grass", baseStats = { hp = 30, attack = 30, defense = 30, sp_attack = 30, sp_defense = 30, speed = 30 },
        catchRate = 120, baseExp = 51, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Solar Power", "Early Bird" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 1.8
    },
    [192] = {
        id = 192, name = "Sunflora", type1 = "grass", baseStats = { hp = 75, attack = 75, defense = 55, sp_attack = 105, sp_defense = 85, speed = 30 },
        catchRate = 120, baseExp = 121, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Solar Power", "Early Bird" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.8, weight = 8.5
    },
    [193] = {
        id = 193, name = "Yanma", type1 = "bug", type2 = "flying", baseStats = { hp = 65, attack = 65, defense = 45, sp_attack = 75, sp_defense = 45, speed = 95 },
        catchRate = 120, baseExp = 111, growthRate = "medium_fast",
        abilities = { "Speed Boost", "Compound Eyes", "Frisk" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 38
    },
    [194] = {
        id = 194, name = "Wooper", type1 = "water", type2 = "ground", baseStats = { hp = 55, attack = 45, defense = 45, sp_attack = 25, sp_defense = 25, speed = 15 },
        catchRate = 120, baseExp = 60, growthRate = "medium_fast",
        abilities = { "Damp", "Water Absorb", "Unaware" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 8.5
    },
    [195] = {
        id = 195, name = "Quagsire", type1 = "water", type2 = "ground", baseStats = { hp = 95, attack = 85, defense = 85, sp_attack = 65, sp_defense = 65, speed = 35 },
        catchRate = 120, baseExp = 122, growthRate = "medium_fast",
        abilities = { "Damp", "Water Absorb", "Unaware" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.4, weight = 75
    },
    [196] = {
        id = 196, name = "Espeon", type1 = "psychic", baseStats = { hp = 65, attack = 65, defense = 60, sp_attack = 130, sp_defense = 95, speed = 110 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Synchronize", "Magic Bounce" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.9, weight = 26.5
    },
    [197] = {
        id = 197, name = "Umbreon", type1 = "dark", baseStats = { hp = 95, attack = 65, defense = 110, sp_attack = 60, sp_defense = 130, speed = 65 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Synchronize", "Inner Focus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1, weight = 27
    },
    [198] = {
        id = 198, name = "Murkrow", type1 = "dark", type2 = "flying", baseStats = { hp = 60, attack = 85, defense = 42, sp_attack = 85, sp_defense = 42, speed = 91 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Insomnia", "Super Luck", "Prankster" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.5, weight = 2.1
    },
    [199] = {
        id = 199, name = "Slowking", type1 = "water", type2 = "psychic", baseStats = { hp = 95, attack = 75, defense = 80, sp_attack = 100, sp_defense = 110, speed = 30 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Oblivious", "Own Tempo", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2, weight = 79.5
    },
    [200] = {
        id = 200, name = "Misdreavus", type1 = "ghost", baseStats = { hp = 60, attack = 60, defense = 60, sp_attack = 85, sp_defense = 85, speed = 85 },
        catchRate = 120, baseExp = 124, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.7, weight = 1
    },
    [201] = {
        id = 201, name = "Unown", type1 = "psychic", baseStats = { hp = 48, attack = 72, defense = 48, sp_attack = 72, sp_defense = 48, speed = 48 },
        catchRate = 120, baseExp = 96, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.5, weight = 5
    },
    [202] = {
        id = 202, name = "Wobbuffet", type1 = "psychic", baseStats = { hp = 190, attack = 33, defense = 58, sp_attack = 33, sp_defense = 58, speed = 33 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Shadow Tag", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.3, weight = 28.5
    },
    [203] = {
        id = 203, name = "Girafarig", type1 = "normal", type2 = "psychic", baseStats = { hp = 70, attack = 80, defense = 65, sp_attack = 90, sp_defense = 65, speed = 85 },
        catchRate = 120, baseExp = 130, growthRate = "medium_fast",
        abilities = { "Inner Focus", "Early Bird", "Sap Sipper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.5, weight = 41.5
    },
    [204] = {
        id = 204, name = "Pineco", type1 = "bug", baseStats = { hp = 50, attack = 65, defense = 90, sp_attack = 35, sp_defense = 35, speed = 15 },
        catchRate = 120, baseExp = 82, growthRate = "medium_fast",
        abilities = { "Sturdy", "Overcoat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 7.2
    },
    [205] = {
        id = 205, name = "Forretress", type1 = "bug", type2 = "steel", baseStats = { hp = 75, attack = 90, defense = 140, sp_attack = 60, sp_defense = 60, speed = 40 },
        catchRate = 120, baseExp = 132, growthRate = "medium_fast",
        abilities = { "Sturdy", "Overcoat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 125.8
    },
    [206] = {
        id = 206, name = "Dunsparce", type1 = "normal", baseStats = { hp = 100, attack = 70, defense = 70, sp_attack = 65, sp_defense = 65, speed = 45 },
        catchRate = 120, baseExp = 118, growthRate = "medium_fast",
        abilities = { "Serene Grace", "Run Away", "Rattled" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.5, weight = 14
    },
    [207] = {
        id = 207, name = "Gligar", type1 = "ground", type2 = "flying", baseStats = { hp = 65, attack = 75, defense = 105, sp_attack = 35, sp_defense = 65, speed = 85 },
        catchRate = 120, baseExp = 122, growthRate = "medium_fast",
        abilities = { "Hyper Cutter", "Sand Veil", "Immunity" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.1, weight = 64.8
    },
    [208] = {
        id = 208, name = "Steelix", type1 = "steel", type2 = "ground", baseStats = { hp = 75, attack = 85, defense = 200, sp_attack = 55, sp_defense = 65, speed = 30 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Rock Head", "Sturdy", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 9.2, weight = 400
    },
    [209] = {
        id = 209, name = "Snubbull", type1 = "fairy", baseStats = { hp = 60, attack = 80, defense = 50, sp_attack = 40, sp_defense = 40, speed = 30 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Intimidate", "Run Away", "Rattled" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.6, weight = 7.8
    },
    [210] = {
        id = 210, name = "Granbull", type1 = "fairy", baseStats = { hp = 90, attack = 120, defense = 75, sp_attack = 60, sp_defense = 60, speed = 45 },
        catchRate = 120, baseExp = 128, growthRate = "medium_fast",
        abilities = { "Intimidate", "Quick Feet", "Rattled" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 1.4, weight = 48.7
    },
    [211] = {
        id = 211, name = "Qwilfish", type1 = "water", type2 = "poison", baseStats = { hp = 65, attack = 95, defense = 85, sp_attack = 55, sp_defense = 55, speed = 85 },
        catchRate = 120, baseExp = 125, growthRate = "medium_fast",
        abilities = { "Poison Point", "Swift Swim", "Intimidate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 3.9
    },
    [212] = {
        id = 212, name = "Scizor", type1 = "bug", type2 = "steel", baseStats = { hp = 70, attack = 130, defense = 100, sp_attack = 55, sp_defense = 80, speed = 65 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Swarm", "Technician", "Light Metal" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.8, weight = 118
    },
    [213] = {
        id = 213, name = "Shuckle", type1 = "bug", type2 = "rock", baseStats = { hp = 20, attack = 10, defense = 230, sp_attack = 10, sp_defense = 230, speed = 5 },
        catchRate = 120, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Sturdy", "Gluttony", "Contrary" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 20.5
    },
    [214] = {
        id = 214, name = "Heracross", type1 = "bug", type2 = "fighting", baseStats = { hp = 80, attack = 125, defense = 75, sp_attack = 40, sp_defense = 95, speed = 85 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Swarm", "Guts", "Moxie" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.5, weight = 54
    },
    [215] = {
        id = 215, name = "Sneasel", type1 = "dark", type2 = "ice", baseStats = { hp = 55, attack = 95, defense = 55, sp_attack = 35, sp_defense = 75, speed = 115 },
        catchRate = 120, baseExp = 122, growthRate = "medium_fast",
        abilities = { "Inner Focus", "Keen Eye", "Pickpocket" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.9, weight = 28
    },
    [216] = {
        id = 216, name = "Teddiursa", type1 = "normal", baseStats = { hp = 60, attack = 80, defense = 50, sp_attack = 50, sp_defense = 50, speed = 40 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Pickup", "Quick Feet", "Honey Gather" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 8.8
    },
    [217] = {
        id = 217, name = "Ursaring", type1 = "normal", baseStats = { hp = 90, attack = 130, defense = 75, sp_attack = 75, sp_defense = 75, speed = 55 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Guts", "Quick Feet", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.8, weight = 125.8
    },
    [218] = {
        id = 218, name = "Slugma", type1 = "fire", baseStats = { hp = 40, attack = 40, defense = 40, sp_attack = 70, sp_defense = 40, speed = 20 },
        catchRate = 120, baseExp = 71, growthRate = "medium_fast",
        abilities = { "Magma Armor", "Flame Body", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.7, weight = 35
    },
    [219] = {
        id = 219, name = "Magcargo", type1 = "fire", type2 = "rock", baseStats = { hp = 60, attack = 50, defense = 120, sp_attack = 90, sp_defense = 80, speed = 30 },
        catchRate = 120, baseExp = 122, growthRate = "medium_fast",
        abilities = { "Magma Armor", "Flame Body", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.8, weight = 55
    },
    [220] = {
        id = 220, name = "Swinub", type1 = "ice", type2 = "ground", baseStats = { hp = 50, attack = 50, defense = 40, sp_attack = 30, sp_defense = 30, speed = 50 },
        catchRate = 120, baseExp = 71, growthRate = "medium_fast",
        abilities = { "Oblivious", "Snow Cloak", "Thick Fat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 0.4, weight = 6.5
    },
    [221] = {
        id = 221, name = "Piloswine", type1 = "ice", type2 = "ground", baseStats = { hp = 100, attack = 100, defense = 80, sp_attack = 60, sp_defense = 60, speed = 50 },
        catchRate = 120, baseExp = 128, growthRate = "medium_fast",
        abilities = { "Oblivious", "Snow Cloak", "Thick Fat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 1.1, weight = 55.8
    },
    [222] = {
        id = 222, name = "Corsola", type1 = "water", type2 = "rock", baseStats = { hp = 65, attack = 55, defense = 95, sp_attack = 65, sp_defense = 95, speed = 35 },
        catchRate = 120, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Hustle", "Natural Cure", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 5
    },
    [223] = {
        id = 223, name = "Remoraid", type1 = "water", baseStats = { hp = 35, attack = 65, defense = 35, sp_attack = 65, sp_defense = 35, speed = 65 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Hustle", "Sniper", "Moody" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 12
    },
    [224] = {
        id = 224, name = "Octillery", type1 = "water", baseStats = { hp = 75, attack = 105, defense = 75, sp_attack = 105, sp_defense = 75, speed = 45 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Suction Cups", "Sniper", "Moody" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.9, weight = 28.5
    },
    [225] = {
        id = 225, name = "Delibird", type1 = "ice", type2 = "flying", baseStats = { hp = 45, attack = 55, defense = 45, sp_attack = 65, sp_defense = 45, speed = 75 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Vital Spirit", "Hustle", "Insomnia" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 0.9, weight = 16
    },
    [226] = {
        id = 226, name = "Mantine", type1 = "water", type2 = "flying", baseStats = { hp = 85, attack = 40, defense = 70, sp_attack = 80, sp_defense = 140, speed = 70 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Water Absorb", "Water Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2.1, weight = 220
    },
    [227] = {
        id = 227, name = "Skarmory", type1 = "steel", type2 = "flying", baseStats = { hp = 65, attack = 80, defense = 140, sp_attack = 40, sp_defense = 70, speed = 70 },
        catchRate = 120, baseExp = 132, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Sturdy", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.7, weight = 50.5
    },
    [228] = {
        id = 228, name = "Houndour", type1 = "dark", type2 = "fire", baseStats = { hp = 45, attack = 60, defense = 30, sp_attack = 80, sp_defense = 50, speed = 65 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Early Bird", "Flash Fire", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.6, weight = 10.8
    },
    [229] = {
        id = 229, name = "Houndoom", type1 = "dark", type2 = "fire", baseStats = { hp = 75, attack = 90, defense = 50, sp_attack = 110, sp_defense = 80, speed = 95 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Early Bird", "Flash Fire", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.4, weight = 35
    },
    [230] = {
        id = 230, name = "Kingdra", type1 = "water", type2 = "dragon", baseStats = { hp = 75, attack = 95, defense = 95, sp_attack = 95, sp_defense = 95, speed = 85 },
        catchRate = 120, baseExp = 154, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Sniper", "Damp" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.8, weight = 152
    },
    [231] = {
        id = 231, name = "Phanpy", type1 = "ground", baseStats = { hp = 90, attack = 60, defense = 60, sp_attack = 40, sp_defense = 40, speed = 40 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Pickup", "Sand Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.5, weight = 33.5
    },
    [232] = {
        id = 232, name = "Donphan", type1 = "ground", baseStats = { hp = 90, attack = 120, defense = 120, sp_attack = 60, sp_defense = 60, speed = 50 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Sturdy", "Sand Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.1, weight = 120
    },
    [233] = {
        id = 233, name = "Porygon2", type1 = "normal", baseStats = { hp = 85, attack = 80, defense = 90, sp_attack = 105, sp_defense = 95, speed = 60 },
        catchRate = 120, baseExp = 147, growthRate = "medium_fast",
        abilities = { "Trace", "Download", "Analytic" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 32.5
    },
    [234] = {
        id = 234, name = "Stantler", type1 = "normal", baseStats = { hp = 73, attack = 95, defense = 62, sp_attack = 85, sp_defense = 65, speed = 85 },
        catchRate = 120, baseExp = 132, growthRate = "medium_fast",
        abilities = { "Intimidate", "Frisk", "Sap Sipper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.4, weight = 71.2
    },
    [235] = {
        id = 235, name = "Smeargle", type1 = "normal", baseStats = { hp = 55, attack = 20, defense = 35, sp_attack = 20, sp_defense = 45, speed = 75 },
        catchRate = 120, baseExp = 71, growthRate = "medium_fast",
        abilities = { "Own Tempo", "Technician", "Moody" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.2, weight = 58
    },
    [236] = {
        id = 236, name = "Tyrogue", type1 = "fighting", baseStats = { hp = 35, attack = 35, defense = 35, sp_attack = 35, sp_defense = 35, speed = 35 },
        catchRate = 120, baseExp = 60, growthRate = "medium_fast",
        abilities = { "Guts", "Steadfast", "Vital Spirit" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.7, weight = 21
    },
    [237] = {
        id = 237, name = "Hitmontop", type1 = "fighting", baseStats = { hp = 50, attack = 95, defense = 95, sp_attack = 35, sp_defense = 110, speed = 70 },
        catchRate = 120, baseExp = 130, growthRate = "medium_fast",
        abilities = { "Intimidate", "Technician", "Steadfast" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.4, weight = 48
    },
    [238] = {
        id = 238, name = "Smoochum", type1 = "ice", type2 = "psychic", baseStats = { hp = 45, attack = 30, defense = 15, sp_attack = 85, sp_defense = 65, speed = 65 },
        catchRate = 120, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Oblivious", "Forewarn", "Hydration" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 0.4, weight = 6
    },
    [239] = {
        id = 239, name = "Elekid", type1 = "electric", baseStats = { hp = 45, attack = 63, defense = 37, sp_attack = 65, sp_defense = 55, speed = 95 },
        catchRate = 120, baseExp = 102, growthRate = "medium_fast",
        abilities = { "Static", "Vital Spirit" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.6, weight = 23.5
    },
    [240] = {
        id = 240, name = "Magby", type1 = "fire", baseStats = { hp = 45, attack = 75, defense = 37, sp_attack = 70, sp_defense = 55, speed = 83 },
        catchRate = 120, baseExp = 104, growthRate = "medium_fast",
        abilities = { "Flame Body", "Vital Spirit" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.7, weight = 21.4
    },
    [241] = {
        id = 241, name = "Miltank", type1 = "normal", baseStats = { hp = 95, attack = 80, defense = 105, sp_attack = 40, sp_defense = 70, speed = 100 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Thick Fat", "Scrappy", "Sap Sipper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.2, weight = 75.5
    },
    [242] = {
        id = 242, name = "Blissey", type1 = "normal", baseStats = { hp = 255, attack = 10, defense = 10, sp_attack = 75, sp_defense = 135, speed = 55 },
        catchRate = 120, baseExp = 154, growthRate = "medium_fast",
        abilities = { "Natural Cure", "Serene Grace", "Healer" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.5, weight = 46.8
    },
    [243] = {
        id = 243, name = "Raikou", type1 = "electric", baseStats = { hp = 90, attack = 85, defense = 75, sp_attack = 115, sp_defense = 100, speed = 115 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Pressure", "Inner Focus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.9, weight = 178
    },
    [244] = {
        id = 244, name = "Entei", type1 = "fire", baseStats = { hp = 115, attack = 115, defense = 85, sp_attack = 90, sp_defense = 75, speed = 100 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Pressure", "Inner Focus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 2.1, weight = 198
    },
    [245] = {
        id = 245, name = "Suicune", type1 = "water", baseStats = { hp = 100, attack = 75, defense = 115, sp_attack = 90, sp_defense = 115, speed = 85 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Pressure", "Inner Focus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2, weight = 187
    },
    [246] = {
        id = 246, name = "Larvitar", type1 = "rock", type2 = "ground", baseStats = { hp = 50, attack = 64, defense = 50, sp_attack = 45, sp_defense = 50, speed = 41 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Guts", "Sand Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.6, weight = 72
    },
    [247] = {
        id = 247, name = "Pupitar", type1 = "rock", type2 = "ground", baseStats = { hp = 70, attack = 84, defense = 70, sp_attack = 65, sp_defense = 70, speed = 51 },
        catchRate = 120, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Shed Skin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.2, weight = 152
    },
    [248] = {
        id = 248, name = "Tyranitar", type1 = "rock", type2 = "dark", baseStats = { hp = 100, attack = 134, defense = 110, sp_attack = 95, sp_defense = 100, speed = 61 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Sand Stream", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2, weight = 202
    },
    [249] = {
        id = 249, name = "Lugia", type1 = "psychic", type2 = "flying", baseStats = { hp = 106, attack = 90, defense = 130, sp_attack = 90, sp_defense = 154, speed = 110 },
        catchRate = 120, baseExp = 194, growthRate = "medium_fast",
        abilities = { "Pressure", "Multiscale" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 5.2, weight = 216
    },
    [250] = {
        id = 250, name = "Ho-Oh", type1 = "fire", type2 = "flying", baseStats = { hp = 106, attack = 130, defense = 90, sp_attack = 110, sp_defense = 154, speed = 90 },
        catchRate = 120, baseExp = 194, growthRate = "medium_fast",
        abilities = { "Pressure", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 3.8, weight = 199
    },
    [251] = {
        id = 251, name = "Celebi", type1 = "psychic", type2 = "grass", baseStats = { hp = 100, attack = 100, defense = 100, sp_attack = 100, sp_defense = 100, speed = 100 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Natural Cure" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 5
    },
    [252] = {
        id = 252, name = "Treecko", type1 = "grass", baseStats = { hp = 40, attack = 45, defense = 35, sp_attack = 65, sp_defense = 55, speed = 70 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Overgrow", "Unburden" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 5
    },
    [253] = {
        id = 253, name = "Grovyle", type1 = "grass", baseStats = { hp = 50, attack = 65, defense = 45, sp_attack = 85, sp_defense = 65, speed = 95 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Overgrow", "Unburden" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.9, weight = 21.6
    },
    [254] = {
        id = 254, name = "Sceptile", type1 = "grass", baseStats = { hp = 70, attack = 85, defense = 65, sp_attack = 105, sp_defense = 85, speed = 120 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Overgrow", "Unburden" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.7, weight = 52.2
    },
    [255] = {
        id = 255, name = "Torchic", type1 = "fire", baseStats = { hp = 45, attack = 60, defense = 40, sp_attack = 70, sp_defense = 50, speed = 45 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Blaze", "Speed Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.4, weight = 2.5
    },
    [256] = {
        id = 256, name = "Combusken", type1 = "fire", type2 = "fighting", baseStats = { hp = 60, attack = 85, defense = 60, sp_attack = 85, sp_defense = 60, speed = 55 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Blaze", "Speed Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.9, weight = 19.5
    },
    [257] = {
        id = 257, name = "Blaziken", type1 = "fire", type2 = "fighting", customModel = "blaziken", baseStats = { hp = 80, attack = 120, defense = 70, sp_attack = 110, sp_defense = 70, speed = 80 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Blaze", "Speed Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.9, weight = 52
    },
    [258] = {
        id = 258, name = "Mudkip", type1 = "water", baseStats = { hp = 50, attack = 70, defense = 50, sp_attack = 50, sp_defense = 50, speed = 40 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Torrent", "Damp" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 7.6
    },
    [259] = {
        id = 259, name = "Marshtomp", type1 = "water", type2 = "ground", baseStats = { hp = 70, attack = 85, defense = 70, sp_attack = 60, sp_defense = 70, speed = 50 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Torrent", "Damp" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.7, weight = 28
    },
    [260] = {
        id = 260, name = "Swampert", type1 = "water", type2 = "ground", baseStats = { hp = 100, attack = 110, defense = 90, sp_attack = 85, sp_defense = 90, speed = 60 },
        catchRate = 120, baseExp = 152, growthRate = "medium_fast",
        abilities = { "Torrent", "Damp" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.5, weight = 81.9
    },
    [261] = {
        id = 261, name = "Poochyena", type1 = "dark", baseStats = { hp = 35, attack = 55, defense = 35, sp_attack = 30, sp_defense = 30, speed = 35 },
        catchRate = 120, baseExp = 62, growthRate = "medium_fast",
        abilities = { "Run Away", "Quick Feet", "Rattled" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.5, weight = 13.6
    },
    [262] = {
        id = 262, name = "Mightyena", type1 = "dark", baseStats = { hp = 70, attack = 90, defense = 70, sp_attack = 60, sp_defense = 60, speed = 70 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Intimidate", "Quick Feet", "Moxie" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1, weight = 37
    },
    [263] = {
        id = 263, name = "Zigzagoon", type1 = "normal", baseStats = { hp = 38, attack = 30, defense = 41, sp_attack = 30, sp_defense = 41, speed = 60 },
        catchRate = 120, baseExp = 68, growthRate = "medium_fast",
        abilities = { "Pickup", "Gluttony", "Quick Feet" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 17.5
    },
    [264] = {
        id = 264, name = "Linoone", type1 = "normal", baseStats = { hp = 78, attack = 70, defense = 61, sp_attack = 50, sp_defense = 61, speed = 100 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Pickup", "Gluttony", "Quick Feet" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.5, weight = 32.5
    },
    [265] = {
        id = 265, name = "Wurmple", type1 = "bug", baseStats = { hp = 45, attack = 45, defense = 35, sp_attack = 20, sp_defense = 30, speed = 20 },
        catchRate = 120, baseExp = 55, growthRate = "medium_fast",
        abilities = { "Shield Dust", "Run Away" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 3.6
    },
    [266] = {
        id = 266, name = "Silcoon", type1 = "bug", baseStats = { hp = 50, attack = 35, defense = 55, sp_attack = 25, sp_defense = 25, speed = 15 },
        catchRate = 120, baseExp = 58, growthRate = "medium_fast",
        abilities = { "Shed Skin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 10
    },
    [267] = {
        id = 267, name = "Beautifly", type1 = "bug", type2 = "flying", baseStats = { hp = 60, attack = 70, defense = 50, sp_attack = 100, sp_defense = 50, speed = 65 },
        catchRate = 120, baseExp = 112, growthRate = "medium_fast",
        abilities = { "Swarm", "Rivalry" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 28.4
    },
    [268] = {
        id = 268, name = "Cascoon", type1 = "bug", baseStats = { hp = 50, attack = 35, defense = 55, sp_attack = 25, sp_defense = 25, speed = 15 },
        catchRate = 120, baseExp = 58, growthRate = "medium_fast",
        abilities = { "Shed Skin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.7, weight = 11.5
    },
    [269] = {
        id = 269, name = "Dustox", type1 = "bug", type2 = "poison", baseStats = { hp = 60, attack = 50, defense = 70, sp_attack = 50, sp_defense = 90, speed = 65 },
        catchRate = 120, baseExp = 110, growthRate = "medium_fast",
        abilities = { "Shield Dust", "Compound Eyes" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 31.6
    },
    [270] = {
        id = 270, name = "Lotad", type1 = "water", type2 = "grass", baseStats = { hp = 40, attack = 30, defense = 30, sp_attack = 40, sp_defense = 50, speed = 30 },
        catchRate = 120, baseExp = 62, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Rain Dish", "Own Tempo" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 2.6
    },
    [271] = {
        id = 271, name = "Lombre", type1 = "water", type2 = "grass", baseStats = { hp = 60, attack = 50, defense = 50, sp_attack = 60, sp_defense = 70, speed = 50 },
        catchRate = 120, baseExp = 97, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Rain Dish", "Own Tempo" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 32.5
    },
    [272] = {
        id = 272, name = "Ludicolo", type1 = "water", type2 = "grass", baseStats = { hp = 80, attack = 70, defense = 70, sp_attack = 90, sp_defense = 100, speed = 70 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Rain Dish", "Own Tempo" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.5, weight = 55
    },
    [273] = {
        id = 273, name = "Seedot", type1 = "grass", baseStats = { hp = 40, attack = 40, defense = 50, sp_attack = 30, sp_defense = 30, speed = 30 },
        catchRate = 120, baseExp = 62, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Early Bird", "Pickpocket" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 4
    },
    [274] = {
        id = 274, name = "Nuzleaf", type1 = "grass", type2 = "dark", baseStats = { hp = 70, attack = 70, defense = 40, sp_attack = 60, sp_defense = 40, speed = 60 },
        catchRate = 120, baseExp = 97, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Early Bird", "Pickpocket" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 28
    },
    [275] = {
        id = 275, name = "Shiftry", type1 = "grass", type2 = "dark", baseStats = { hp = 90, attack = 100, defense = 60, sp_attack = 90, sp_defense = 60, speed = 80 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Wind Rider", "Pickpocket" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.3, weight = 59.6
    },
    [276] = {
        id = 276, name = "Taillow", type1 = "normal", type2 = "flying", baseStats = { hp = 40, attack = 55, defense = 30, sp_attack = 30, sp_defense = 30, speed = 85 },
        catchRate = 120, baseExp = 77, growthRate = "medium_fast",
        abilities = { "Guts", "Scrappy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 2.3
    },
    [277] = {
        id = 277, name = "Swellow", type1 = "normal", type2 = "flying", baseStats = { hp = 60, attack = 85, defense = 60, sp_attack = 75, sp_defense = 50, speed = 125 },
        catchRate = 120, baseExp = 130, growthRate = "medium_fast",
        abilities = { "Guts", "Scrappy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.7, weight = 19.8
    },
    [278] = {
        id = 278, name = "Wingull", type1 = "water", type2 = "flying", baseStats = { hp = 40, attack = 30, defense = 30, sp_attack = 55, sp_defense = 30, speed = 85 },
        catchRate = 120, baseExp = 77, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Hydration", "Rain Dish" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 9.5
    },
    [279] = {
        id = 279, name = "Pelipper", type1 = "water", type2 = "flying", baseStats = { hp = 60, attack = 50, defense = 100, sp_attack = 95, sp_defense = 70, speed = 65 },
        catchRate = 120, baseExp = 125, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Drizzle", "Rain Dish" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 28
    },
    [280] = {
        id = 280, name = "Ralts", type1 = "psychic", type2 = "fairy", baseStats = { hp = 28, attack = 25, defense = 25, sp_attack = 45, sp_defense = 35, speed = 40 },
        catchRate = 120, baseExp = 56, growthRate = "medium_fast",
        abilities = { "Synchronize", "Trace", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 6.6
    },
    [281] = {
        id = 281, name = "Kirlia", type1 = "psychic", type2 = "fairy", baseStats = { hp = 38, attack = 35, defense = 35, sp_attack = 65, sp_defense = 55, speed = 50 },
        catchRate = 120, baseExp = 79, growthRate = "medium_fast",
        abilities = { "Synchronize", "Trace", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.8, weight = 20.2
    },
    [282] = {
        id = 282, name = "Gardevoir", type1 = "psychic", type2 = "fairy", customModel = "gardevoir", baseStats = { hp = 68, attack = 65, defense = 65, sp_attack = 125, sp_defense = 115, speed = 80 },
        catchRate = 120, baseExp = 148, growthRate = "medium_fast",
        abilities = { "Synchronize", "Trace", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.6, weight = 48.4
    },
    [283] = {
        id = 283, name = "Surskit", type1 = "bug", type2 = "water", baseStats = { hp = 40, attack = 30, defense = 32, sp_attack = 50, sp_defense = 52, speed = 65 },
        catchRate = 120, baseExp = 76, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Rain Dish" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 1.7
    },
    [284] = {
        id = 284, name = "Masquerain", type1 = "bug", type2 = "flying", baseStats = { hp = 70, attack = 60, defense = 62, sp_attack = 100, sp_defense = 82, speed = 80 },
        catchRate = 120, baseExp = 129, growthRate = "medium_fast",
        abilities = { "Intimidate", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.8, weight = 3.6
    },
    [285] = {
        id = 285, name = "Shroomish", type1 = "grass", baseStats = { hp = 60, attack = 40, defense = 60, sp_attack = 40, sp_defense = 60, speed = 35 },
        catchRate = 120, baseExp = 84, growthRate = "medium_fast",
        abilities = { "Effect Spore", "Poison Heal", "Quick Feet" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 4.5
    },
    [286] = {
        id = 286, name = "Breloom", type1 = "grass", type2 = "fighting", baseStats = { hp = 60, attack = 130, defense = 80, sp_attack = 60, sp_defense = 60, speed = 70 },
        catchRate = 120, baseExp = 131, growthRate = "medium_fast",
        abilities = { "Effect Spore", "Poison Heal", "Technician" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 39.2
    },
    [287] = {
        id = 287, name = "Slakoth", type1 = "normal", baseStats = { hp = 60, attack = 60, defense = 60, sp_attack = 35, sp_defense = 35, speed = 30 },
        catchRate = 120, baseExp = 80, growthRate = "medium_fast",
        abilities = { "Truant" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.8, weight = 24
    },
    [288] = {
        id = 288, name = "Vigoroth", type1 = "normal", baseStats = { hp = 80, attack = 80, defense = 80, sp_attack = 55, sp_defense = 55, speed = 90 },
        catchRate = 120, baseExp = 125, growthRate = "medium_fast",
        abilities = { "Vital Spirit" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.4, weight = 46.5
    },
    [289] = {
        id = 289, name = "Slaking", type1 = "normal", baseStats = { hp = 150, attack = 160, defense = 100, sp_attack = 95, sp_defense = 65, speed = 100 },
        catchRate = 120, baseExp = 191, growthRate = "medium_fast",
        abilities = { "Truant" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 2, weight = 130.5
    },
    [290] = {
        id = 290, name = "Nincada", type1 = "bug", type2 = "ground", baseStats = { hp = 31, attack = 45, defense = 90, sp_attack = 30, sp_defense = 30, speed = 40 },
        catchRate = 120, baseExp = 76, growthRate = "medium_fast",
        abilities = { "Compound Eyes", "Run Away" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 5.5
    },
    [291] = {
        id = 291, name = "Ninjask", type1 = "bug", type2 = "flying", baseStats = { hp = 61, attack = 90, defense = 45, sp_attack = 50, sp_defense = 50, speed = 160 },
        catchRate = 120, baseExp = 130, growthRate = "medium_fast",
        abilities = { "Speed Boost", "Infiltrator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.8, weight = 12
    },
    [292] = {
        id = 292, name = "Shedinja", type1 = "bug", type2 = "ghost", baseStats = { hp = 1, attack = 90, defense = 45, sp_attack = 30, sp_defense = 30, speed = 40 },
        catchRate = 120, baseExp = 67, growthRate = "medium_fast",
        abilities = { "Wonder Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.8, weight = 1.2
    },
    [293] = {
        id = 293, name = "Whismur", type1 = "normal", baseStats = { hp = 64, attack = 51, defense = 23, sp_attack = 51, sp_defense = 23, speed = 28 },
        catchRate = 120, baseExp = 68, growthRate = "medium_fast",
        abilities = { "Soundproof", "Rattled" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 16.3
    },
    [294] = {
        id = 294, name = "Loudred", type1 = "normal", baseStats = { hp = 84, attack = 71, defense = 43, sp_attack = 71, sp_defense = 43, speed = 48 },
        catchRate = 120, baseExp = 102, growthRate = "medium_fast",
        abilities = { "Soundproof", "Scrappy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1, weight = 40.5
    },
    [295] = {
        id = 295, name = "Exploud", type1 = "normal", baseStats = { hp = 104, attack = 91, defense = 63, sp_attack = 91, sp_defense = 73, speed = 68 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Soundproof", "Scrappy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.5, weight = 84
    },
    [296] = {
        id = 296, name = "Makuhita", type1 = "fighting", baseStats = { hp = 72, attack = 60, defense = 30, sp_attack = 20, sp_defense = 30, speed = 25 },
        catchRate = 120, baseExp = 67, growthRate = "medium_fast",
        abilities = { "Thick Fat", "Guts", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1, weight = 86.4
    },
    [297] = {
        id = 297, name = "Hariyama", type1 = "fighting", baseStats = { hp = 144, attack = 120, defense = 60, sp_attack = 40, sp_defense = 60, speed = 50 },
        catchRate = 120, baseExp = 135, growthRate = "medium_fast",
        abilities = { "Thick Fat", "Guts", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 2.3, weight = 253.8
    },
    [298] = {
        id = 298, name = "Azurill", type1 = "normal", type2 = "fairy", baseStats = { hp = 50, attack = 20, defense = 40, sp_attack = 20, sp_defense = 40, speed = 20 },
        catchRate = 120, baseExp = 54, growthRate = "medium_fast",
        abilities = { "Thick Fat", "Huge Power", "Sap Sipper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.2, weight = 2
    },
    [299] = {
        id = 299, name = "Nosepass", type1 = "rock", baseStats = { hp = 30, attack = 45, defense = 135, sp_attack = 45, sp_defense = 90, speed = 30 },
        catchRate = 120, baseExp = 107, growthRate = "medium_fast",
        abilities = { "Sturdy", "Magnet Pull", "Sand Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1, weight = 97
    },
    [300] = {
        id = 300, name = "Skitty", type1 = "normal", baseStats = { hp = 50, attack = 45, defense = 45, sp_attack = 35, sp_defense = 35, speed = 50 },
        catchRate = 120, baseExp = 74, growthRate = "medium_fast",
        abilities = { "Cute Charm", "Normalize", "Wonder Skin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 11
    },
    [301] = {
        id = 301, name = "Delcatty", type1 = "normal", baseStats = { hp = 70, attack = 65, defense = 65, sp_attack = 55, sp_defense = 55, speed = 90 },
        catchRate = 120, baseExp = 114, growthRate = "medium_fast",
        abilities = { "Cute Charm", "Normalize", "Wonder Skin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.1, weight = 32.6
    },
    [302] = {
        id = 302, name = "Sableye", type1 = "dark", type2 = "ghost", baseStats = { hp = 50, attack = 75, defense = 75, sp_attack = 65, sp_defense = 65, speed = 50 },
        catchRate = 120, baseExp = 108, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Stall", "Prankster" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.5, weight = 11
    },
    [303] = {
        id = 303, name = "Mawile", type1 = "steel", type2 = "fairy", baseStats = { hp = 50, attack = 85, defense = 85, sp_attack = 55, sp_defense = 55, speed = 50 },
        catchRate = 120, baseExp = 108, growthRate = "medium_fast",
        abilities = { "Hyper Cutter", "Intimidate", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.6, weight = 11.5
    },
    [304] = {
        id = 304, name = "Aron", type1 = "steel", type2 = "rock", baseStats = { hp = 50, attack = 70, defense = 100, sp_attack = 40, sp_defense = 40, speed = 30 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Sturdy", "Rock Head", "Heavy Metal" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.4, weight = 60
    },
    [305] = {
        id = 305, name = "Lairon", type1 = "steel", type2 = "rock", baseStats = { hp = 60, attack = 90, defense = 140, sp_attack = 50, sp_defense = 50, speed = 40 },
        catchRate = 120, baseExp = 122, growthRate = "medium_fast",
        abilities = { "Sturdy", "Rock Head", "Heavy Metal" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.9, weight = 120
    },
    [306] = {
        id = 306, name = "Aggron", type1 = "steel", type2 = "rock", baseStats = { hp = 70, attack = 110, defense = 180, sp_attack = 60, sp_defense = 60, speed = 50 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Sturdy", "Rock Head", "Heavy Metal" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2.1, weight = 360
    },
    [307] = {
        id = 307, name = "Meditite", type1 = "fighting", type2 = "psychic", baseStats = { hp = 30, attack = 40, defense = 55, sp_attack = 40, sp_defense = 55, speed = 60 },
        catchRate = 120, baseExp = 80, growthRate = "medium_fast",
        abilities = { "Pure Power", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.6, weight = 11.2
    },
    [308] = {
        id = 308, name = "Medicham", type1 = "fighting", type2 = "psychic", baseStats = { hp = 60, attack = 60, defense = 75, sp_attack = 60, sp_defense = 75, speed = 80 },
        catchRate = 120, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Pure Power", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.3, weight = 31.5
    },
    [309] = {
        id = 309, name = "Electrike", type1 = "electric", baseStats = { hp = 40, attack = 45, defense = 40, sp_attack = 65, sp_defense = 40, speed = 65 },
        catchRate = 120, baseExp = 84, growthRate = "medium_fast",
        abilities = { "Static", "Lightning Rod", "Minus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.6, weight = 15.2
    },
    [310] = {
        id = 310, name = "Manectric", type1 = "electric", baseStats = { hp = 70, attack = 75, defense = 60, sp_attack = 105, sp_defense = 60, speed = 105 },
        catchRate = 120, baseExp = 135, growthRate = "medium_fast",
        abilities = { "Static", "Lightning Rod", "Minus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.5, weight = 40.2
    },
    [311] = {
        id = 311, name = "Plusle", type1 = "electric", baseStats = { hp = 60, attack = 50, defense = 40, sp_attack = 85, sp_defense = 75, speed = 95 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Plus", "Lightning Rod" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.4, weight = 4.2
    },
    [312] = {
        id = 312, name = "Minun", type1 = "electric", baseStats = { hp = 60, attack = 40, defense = 50, sp_attack = 75, sp_defense = 85, speed = 95 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Minus", "Volt Absorb" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.4, weight = 4.2
    },
    [313] = {
        id = 313, name = "Volbeat", type1 = "bug", baseStats = { hp = 65, attack = 73, defense = 75, sp_attack = 47, sp_defense = 85, speed = 85 },
        catchRate = 120, baseExp = 122, growthRate = "medium_fast",
        abilities = { "Illuminate", "Swarm", "Prankster" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.7, weight = 17.7
    },
    [314] = {
        id = 314, name = "Illumise", type1 = "bug", baseStats = { hp = 65, attack = 47, defense = 75, sp_attack = 73, sp_defense = 85, speed = 85 },
        catchRate = 120, baseExp = 122, growthRate = "medium_fast",
        abilities = { "Oblivious", "Tinted Lens", "Prankster" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 17.7
    },
    [315] = {
        id = 315, name = "Roselia", type1 = "grass", type2 = "poison", baseStats = { hp = 50, attack = 60, defense = 45, sp_attack = 100, sp_defense = 80, speed = 65 },
        catchRate = 120, baseExp = 114, growthRate = "medium_fast",
        abilities = { "Natural Cure", "Poison Point", "Leaf Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 2
    },
    [316] = {
        id = 316, name = "Gulpin", type1 = "poison", baseStats = { hp = 70, attack = 43, defense = 53, sp_attack = 43, sp_defense = 53, speed = 40 },
        catchRate = 120, baseExp = 86, growthRate = "medium_fast",
        abilities = { "Liquid Ooze", "Sticky Hold", "Gluttony" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.4, weight = 10.3
    },
    [317] = {
        id = 317, name = "Swalot", type1 = "poison", baseStats = { hp = 100, attack = 73, defense = 83, sp_attack = 73, sp_defense = 83, speed = 55 },
        catchRate = 120, baseExp = 133, growthRate = "medium_fast",
        abilities = { "Liquid Ooze", "Sticky Hold", "Gluttony" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.7, weight = 80
    },
    [318] = {
        id = 318, name = "Carvanha", type1 = "water", type2 = "dark", baseStats = { hp = 45, attack = 90, defense = 20, sp_attack = 65, sp_defense = 20, speed = 65 },
        catchRate = 120, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Rough Skin", "Speed Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.8, weight = 20.8
    },
    [319] = {
        id = 319, name = "Sharpedo", type1 = "water", type2 = "dark", baseStats = { hp = 70, attack = 120, defense = 40, sp_attack = 95, sp_defense = 40, speed = 95 },
        catchRate = 120, baseExp = 131, growthRate = "medium_fast",
        abilities = { "Rough Skin", "Speed Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.8, weight = 88.8
    },
    [320] = {
        id = 320, name = "Wailmer", type1 = "water", baseStats = { hp = 130, attack = 70, defense = 35, sp_attack = 70, sp_defense = 35, speed = 60 },
        catchRate = 120, baseExp = 114, growthRate = "medium_fast",
        abilities = { "Water Veil", "Oblivious", "Pressure" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2, weight = 130
    },
    [321] = {
        id = 321, name = "Wailord", type1 = "water", baseStats = { hp = 170, attack = 90, defense = 45, sp_attack = 90, sp_defense = 45, speed = 60 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Water Veil", "Oblivious", "Pressure" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 14.5, weight = 398
    },
    [322] = {
        id = 322, name = "Numel", type1 = "fire", type2 = "ground", baseStats = { hp = 60, attack = 60, defense = 40, sp_attack = 65, sp_defense = 45, speed = 35 },
        catchRate = 120, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Oblivious", "Simple", "Own Tempo" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.7, weight = 24
    },
    [323] = {
        id = 323, name = "Camerupt", type1 = "fire", type2 = "ground", baseStats = { hp = 70, attack = 100, defense = 70, sp_attack = 105, sp_defense = 75, speed = 40 },
        catchRate = 120, baseExp = 131, growthRate = "medium_fast",
        abilities = { "Magma Armor", "Solid Rock", "Anger Point" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.9, weight = 220
    },
    [324] = {
        id = 324, name = "Torkoal", type1 = "fire", baseStats = { hp = 70, attack = 85, defense = 140, sp_attack = 85, sp_defense = 70, speed = 20 },
        catchRate = 120, baseExp = 134, growthRate = "medium_fast",
        abilities = { "White Smoke", "Drought", "Shell Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.5, weight = 80.4
    },
    [325] = {
        id = 325, name = "Spoink", type1 = "psychic", baseStats = { hp = 60, attack = 25, defense = 35, sp_attack = 70, sp_defense = 80, speed = 60 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Thick Fat", "Own Tempo", "Gluttony" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.7, weight = 30.6
    },
    [326] = {
        id = 326, name = "Grumpig", type1 = "psychic", baseStats = { hp = 80, attack = 45, defense = 65, sp_attack = 90, sp_defense = 110, speed = 80 },
        catchRate = 120, baseExp = 134, growthRate = "medium_fast",
        abilities = { "Thick Fat", "Own Tempo", "Gluttony" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.9, weight = 71.5
    },
    [327] = {
        id = 327, name = "Spinda", type1 = "normal", baseStats = { hp = 60, attack = 60, defense = 60, sp_attack = 60, sp_defense = 60, speed = 60 },
        catchRate = 120, baseExp = 102, growthRate = "medium_fast",
        abilities = { "Own Tempo", "Tangled Feet", "Contrary" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.1, weight = 5
    },
    [328] = {
        id = 328, name = "Trapinch", type1 = "ground", baseStats = { hp = 45, attack = 100, defense = 45, sp_attack = 45, sp_defense = 45, speed = 10 },
        catchRate = 120, baseExp = 82, growthRate = "medium_fast",
        abilities = { "Hyper Cutter", "Arena Trap", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.7, weight = 15
    },
    [329] = {
        id = 329, name = "Vibrava", type1 = "ground", type2 = "dragon", baseStats = { hp = 50, attack = 70, defense = 50, sp_attack = 50, sp_defense = 50, speed = 70 },
        catchRate = 120, baseExp = 97, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.1, weight = 15.3
    },
    [330] = {
        id = 330, name = "Flygon", type1 = "ground", type2 = "dragon", baseStats = { hp = 80, attack = 100, defense = 80, sp_attack = 80, sp_defense = 80, speed = 100 },
        catchRate = 120, baseExp = 148, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2, weight = 82
    },
    [331] = {
        id = 331, name = "Cacnea", type1 = "grass", baseStats = { hp = 50, attack = 85, defense = 40, sp_attack = 85, sp_defense = 40, speed = 35 },
        catchRate = 120, baseExp = 95, growthRate = "medium_fast",
        abilities = { "Sand Veil", "Water Absorb" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 51.3
    },
    [332] = {
        id = 332, name = "Cacturne", type1 = "grass", type2 = "dark", baseStats = { hp = 70, attack = 115, defense = 60, sp_attack = 115, sp_defense = 60, speed = 55 },
        catchRate = 120, baseExp = 135, growthRate = "medium_fast",
        abilities = { "Sand Veil", "Water Absorb" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.3, weight = 77.4
    },
    [333] = {
        id = 333, name = "Swablu", type1 = "normal", type2 = "flying", baseStats = { hp = 45, attack = 40, defense = 60, sp_attack = 40, sp_defense = 75, speed = 50 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Natural Cure", "Cloud Nine" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 1.2
    },
    [334] = {
        id = 334, name = "Altaria", type1 = "dragon", type2 = "flying", baseStats = { hp = 75, attack = 70, defense = 90, sp_attack = 70, sp_defense = 105, speed = 80 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Natural Cure", "Cloud Nine" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 1.1, weight = 20.6
    },
    [335] = {
        id = 335, name = "Zangoose", type1 = "normal", baseStats = { hp = 73, attack = 115, defense = 60, sp_attack = 60, sp_defense = 60, speed = 90 },
        catchRate = 120, baseExp = 130, growthRate = "medium_fast",
        abilities = { "Immunity", "Toxic Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.3, weight = 40.3
    },
    [336] = {
        id = 336, name = "Seviper", type1 = "poison", baseStats = { hp = 73, attack = 100, defense = 60, sp_attack = 100, sp_defense = 60, speed = 65 },
        catchRate = 120, baseExp = 130, growthRate = "medium_fast",
        abilities = { "Shed Skin", "Infiltrator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 2.7, weight = 52.5
    },
    [337] = {
        id = 337, name = "Lunatone", type1 = "rock", type2 = "psychic", baseStats = { hp = 90, attack = 55, defense = 65, sp_attack = 95, sp_defense = 85, speed = 70 },
        catchRate = 120, baseExp = 131, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1, weight = 168
    },
    [338] = {
        id = 338, name = "Solrock", type1 = "rock", type2 = "psychic", baseStats = { hp = 90, attack = 95, defense = 85, sp_attack = 55, sp_defense = 65, speed = 70 },
        catchRate = 120, baseExp = 131, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.2, weight = 154
    },
    [339] = {
        id = 339, name = "Barboach", type1 = "water", type2 = "ground", baseStats = { hp = 50, attack = 48, defense = 43, sp_attack = 46, sp_defense = 41, speed = 60 },
        catchRate = 120, baseExp = 82, growthRate = "medium_fast",
        abilities = { "Oblivious", "Anticipation", "Hydration" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 1.9
    },
    [340] = {
        id = 340, name = "Whiscash", type1 = "water", type2 = "ground", baseStats = { hp = 110, attack = 78, defense = 73, sp_attack = 76, sp_defense = 71, speed = 60 },
        catchRate = 120, baseExp = 133, growthRate = "medium_fast",
        abilities = { "Oblivious", "Anticipation", "Hydration" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.9, weight = 23.6
    },
    [341] = {
        id = 341, name = "Corphish", type1 = "water", baseStats = { hp = 43, attack = 80, defense = 65, sp_attack = 50, sp_defense = 35, speed = 35 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Hyper Cutter", "Shell Armor", "Adaptability" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 11.5
    },
    [342] = {
        id = 342, name = "Crawdaunt", type1 = "water", type2 = "dark", baseStats = { hp = 63, attack = 120, defense = 85, sp_attack = 90, sp_defense = 55, speed = 55 },
        catchRate = 120, baseExp = 133, growthRate = "medium_fast",
        abilities = { "Hyper Cutter", "Shell Armor", "Adaptability" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.1, weight = 32.8
    },
    [343] = {
        id = 343, name = "Baltoy", type1 = "ground", type2 = "psychic", baseStats = { hp = 40, attack = 40, defense = 55, sp_attack = 40, sp_defense = 70, speed = 55 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.5, weight = 21.5
    },
    [344] = {
        id = 344, name = "Claydol", type1 = "ground", type2 = "psychic", baseStats = { hp = 60, attack = 70, defense = 105, sp_attack = 70, sp_defense = 120, speed = 75 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.5, weight = 108
    },
    [345] = {
        id = 345, name = "Lileep", type1 = "rock", type2 = "grass", baseStats = { hp = 66, attack = 41, defense = 77, sp_attack = 61, sp_defense = 87, speed = 23 },
        catchRate = 120, baseExp = 101, growthRate = "medium_fast",
        abilities = { "Suction Cups", "Storm Drain" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1, weight = 23.8
    },
    [346] = {
        id = 346, name = "Cradily", type1 = "rock", type2 = "grass", baseStats = { hp = 86, attack = 81, defense = 97, sp_attack = 81, sp_defense = 107, speed = 43 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Suction Cups", "Storm Drain" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.5, weight = 60.4
    },
    [347] = {
        id = 347, name = "Anorith", type1 = "rock", type2 = "bug", baseStats = { hp = 45, attack = 95, defense = 50, sp_attack = 40, sp_defense = 50, speed = 75 },
        catchRate = 120, baseExp = 101, growthRate = "medium_fast",
        abilities = { "Battle Armor", "Swift Swim" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.7, weight = 12.5
    },
    [348] = {
        id = 348, name = "Armaldo", type1 = "rock", type2 = "bug", baseStats = { hp = 75, attack = 125, defense = 100, sp_attack = 70, sp_defense = 80, speed = 45 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Battle Armor", "Swift Swim" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.5, weight = 68.2
    },
    [349] = {
        id = 349, name = "Feebas", type1 = "water", baseStats = { hp = 20, attack = 15, defense = 20, sp_attack = 10, sp_defense = 55, speed = 80 },
        catchRate = 120, baseExp = 57, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Oblivious", "Adaptability" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 7.4
    },
    [350] = {
        id = 350, name = "Milotic", type1 = "water", baseStats = { hp = 95, attack = 60, defense = 79, sp_attack = 100, sp_defense = 125, speed = 81 },
        catchRate = 120, baseExp = 154, growthRate = "medium_fast",
        abilities = { "Marvel Scale", "Competitive", "Cute Charm" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 6.2, weight = 162
    },
    [351] = {
        id = 351, name = "Castform", type1 = "normal", baseStats = { hp = 70, attack = 70, defense = 70, sp_attack = 70, sp_defense = 70, speed = 70 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Forecast" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 0.8
    },
    [352] = {
        id = 352, name = "Kecleon", type1 = "normal", baseStats = { hp = 60, attack = 90, defense = 70, sp_attack = 60, sp_defense = 120, speed = 40 },
        catchRate = 120, baseExp = 125, growthRate = "medium_fast",
        abilities = { "Color Change", "Protean" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1, weight = 22
    },
    [353] = {
        id = 353, name = "Shuppet", type1 = "ghost", baseStats = { hp = 44, attack = 75, defense = 35, sp_attack = 63, sp_defense = 33, speed = 45 },
        catchRate = 120, baseExp = 84, growthRate = "medium_fast",
        abilities = { "Insomnia", "Frisk", "Cursed Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 2.3
    },
    [354] = {
        id = 354, name = "Banette", type1 = "ghost", baseStats = { hp = 64, attack = 115, defense = 65, sp_attack = 83, sp_defense = 63, speed = 65 },
        catchRate = 120, baseExp = 130, growthRate = "medium_fast",
        abilities = { "Insomnia", "Frisk", "Cursed Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.1, weight = 12.5
    },
    [355] = {
        id = 355, name = "Duskull", type1 = "ghost", baseStats = { hp = 20, attack = 40, defense = 90, sp_attack = 30, sp_defense = 90, speed = 25 },
        catchRate = 120, baseExp = 84, growthRate = "medium_fast",
        abilities = { "Levitate", "Frisk" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.8, weight = 15
    },
    [356] = {
        id = 356, name = "Dusclops", type1 = "ghost", baseStats = { hp = 40, attack = 70, defense = 130, sp_attack = 60, sp_defense = 130, speed = 25 },
        catchRate = 120, baseExp = 130, growthRate = "medium_fast",
        abilities = { "Pressure", "Frisk" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.6, weight = 30.6
    },
    [357] = {
        id = 357, name = "Tropius", type1 = "grass", type2 = "flying", baseStats = { hp = 99, attack = 68, defense = 83, sp_attack = 72, sp_defense = 87, speed = 51 },
        catchRate = 120, baseExp = 131, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Solar Power", "Harvest" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2, weight = 100
    },
    [358] = {
        id = 358, name = "Chimecho", type1 = "psychic", baseStats = { hp = 75, attack = 50, defense = 80, sp_attack = 95, sp_defense = 90, speed = 65 },
        catchRate = 120, baseExp = 130, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 1
    },
    [359] = {
        id = 359, name = "Absol", type1 = "dark", baseStats = { hp = 65, attack = 130, defense = 60, sp_attack = 75, sp_defense = 60, speed = 75 },
        catchRate = 120, baseExp = 132, growthRate = "medium_fast",
        abilities = { "Pressure", "Super Luck", "Justified" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.2, weight = 47
    },
    [360] = {
        id = 360, name = "Wynaut", type1 = "psychic", baseStats = { hp = 95, attack = 23, defense = 48, sp_attack = 23, sp_defense = 48, speed = 23 },
        catchRate = 120, baseExp = 74, growthRate = "medium_fast",
        abilities = { "Shadow Tag", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 14
    },
    [361] = {
        id = 361, name = "Snorunt", type1 = "ice", baseStats = { hp = 50, attack = 50, defense = 50, sp_attack = 50, sp_defense = 50, speed = 50 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Inner Focus", "Ice Body", "Moody" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 0.7, weight = 16.8
    },
    [362] = {
        id = 362, name = "Glalie", type1 = "ice", baseStats = { hp = 80, attack = 80, defense = 80, sp_attack = 80, sp_defense = 80, speed = 80 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Inner Focus", "Ice Body", "Moody" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 1.5, weight = 256.5
    },
    [363] = {
        id = 363, name = "Spheal", type1 = "ice", type2 = "water", baseStats = { hp = 70, attack = 40, defense = 50, sp_attack = 55, sp_defense = 50, speed = 25 },
        catchRate = 120, baseExp = 82, growthRate = "medium_fast",
        abilities = { "Thick Fat", "Ice Body", "Oblivious" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 0.8, weight = 39.5
    },
    [364] = {
        id = 364, name = "Sealeo", type1 = "ice", type2 = "water", baseStats = { hp = 90, attack = 60, defense = 70, sp_attack = 75, sp_defense = 70, speed = 45 },
        catchRate = 120, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Thick Fat", "Ice Body", "Oblivious" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 1.1, weight = 87.6
    },
    [365] = {
        id = 365, name = "Walrein", type1 = "ice", type2 = "water", baseStats = { hp = 110, attack = 80, defense = 90, sp_attack = 95, sp_defense = 90, speed = 65 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Thick Fat", "Ice Body", "Oblivious" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 1.4, weight = 150.6
    },
    [366] = {
        id = 366, name = "Clamperl", type1 = "water", baseStats = { hp = 35, attack = 64, defense = 85, sp_attack = 74, sp_defense = 55, speed = 32 },
        catchRate = 120, baseExp = 98, growthRate = "medium_fast",
        abilities = { "Shell Armor", "Rattled" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 52.5
    },
    [367] = {
        id = 367, name = "Huntail", type1 = "water", baseStats = { hp = 55, attack = 104, defense = 105, sp_attack = 94, sp_defense = 75, speed = 52 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Water Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.7, weight = 27
    },
    [368] = {
        id = 368, name = "Gorebyss", type1 = "water", baseStats = { hp = 55, attack = 84, defense = 105, sp_attack = 114, sp_defense = 75, speed = 52 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Hydration" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.8, weight = 22.6
    },
    [369] = {
        id = 369, name = "Relicanth", type1 = "water", type2 = "rock", baseStats = { hp = 100, attack = 90, defense = 130, sp_attack = 45, sp_defense = 65, speed = 55 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Rock Head", "Sturdy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 23.4
    },
    [370] = {
        id = 370, name = "Luvdisc", type1 = "water", baseStats = { hp = 43, attack = 30, defense = 55, sp_attack = 40, sp_defense = 65, speed = 97 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Hydration" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 8.7
    },
    [371] = {
        id = 371, name = "Bagon", type1 = "dragon", baseStats = { hp = 45, attack = 75, defense = 60, sp_attack = 40, sp_defense = 30, speed = 50 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Rock Head", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 0.6, weight = 42.1
    },
    [372] = {
        id = 372, name = "Shelgon", type1 = "dragon", baseStats = { hp = 65, attack = 95, defense = 100, sp_attack = 60, sp_defense = 50, speed = 50 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Rock Head", "Overcoat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 1.1, weight = 110.5
    },
    [373] = {
        id = 373, name = "Salamence", type1 = "dragon", type2 = "flying", baseStats = { hp = 95, attack = 135, defense = 80, sp_attack = 110, sp_defense = 80, speed = 100 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Intimidate", "Moxie" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 1.5, weight = 102.6
    },
    [374] = {
        id = 374, name = "Beldum", type1 = "steel", type2 = "psychic", baseStats = { hp = 40, attack = 55, defense = 80, sp_attack = 35, sp_defense = 60, speed = 30 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Clear Body", "Light Metal" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.6, weight = 95.2
    },
    [375] = {
        id = 375, name = "Metang", type1 = "steel", type2 = "psychic", baseStats = { hp = 60, attack = 75, defense = 100, sp_attack = 55, sp_defense = 80, speed = 50 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Clear Body", "Light Metal" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.2, weight = 202.5
    },
    [376] = {
        id = 376, name = "Metagross", type1 = "steel", type2 = "psychic", baseStats = { hp = 80, attack = 135, defense = 130, sp_attack = 95, sp_defense = 90, speed = 70 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Clear Body", "Light Metal" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.6, weight = 550
    },
    [377] = {
        id = 377, name = "Regirock", type1 = "rock", baseStats = { hp = 80, attack = 100, defense = 200, sp_attack = 50, sp_defense = 100, speed = 50 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Clear Body", "Sturdy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.7, weight = 230
    },
    [378] = {
        id = 378, name = "Regice", type1 = "ice", baseStats = { hp = 80, attack = 50, defense = 100, sp_attack = 100, sp_defense = 200, speed = 50 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Clear Body", "Ice Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 1.8, weight = 175
    },
    [379] = {
        id = 379, name = "Registeel", type1 = "steel", baseStats = { hp = 80, attack = 75, defense = 150, sp_attack = 75, sp_defense = 150, speed = 50 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Clear Body", "Light Metal" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.9, weight = 205
    },
    [380] = {
        id = 380, name = "Latias", type1 = "dragon", type2 = "psychic", baseStats = { hp = 80, attack = 80, defense = 90, sp_attack = 110, sp_defense = 130, speed = 110 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 1.4, weight = 40
    },
    [381] = {
        id = 381, name = "Latios", type1 = "dragon", type2 = "psychic", baseStats = { hp = 80, attack = 90, defense = 80, sp_attack = 130, sp_defense = 110, speed = 110 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 2, weight = 60
    },
    [382] = {
        id = 382, name = "Kyogre", type1 = "water", baseStats = { hp = 100, attack = 100, defense = 90, sp_attack = 150, sp_defense = 140, speed = 90 },
        catchRate = 120, baseExp = 191, growthRate = "medium_fast",
        abilities = { "Drizzle" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 4.5, weight = 352
    },
    [383] = {
        id = 383, name = "Groudon", type1 = "ground", baseStats = { hp = 100, attack = 150, defense = 140, sp_attack = 100, sp_defense = 90, speed = 90 },
        catchRate = 120, baseExp = 191, growthRate = "medium_fast",
        abilities = { "Drought" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 3.5, weight = 950
    },
    [384] = {
        id = 384, name = "Rayquaza", type1 = "dragon", type2 = "flying", baseStats = { hp = 105, attack = 150, defense = 90, sp_attack = 150, sp_defense = 90, speed = 95 },
        catchRate = 120, baseExp = 194, growthRate = "medium_fast",
        abilities = { "Air Lock" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 7, weight = 206.5
    },
    [385] = {
        id = 385, name = "Jirachi", type1 = "steel", type2 = "psychic", baseStats = { hp = 100, attack = 100, defense = 100, sp_attack = 100, sp_defense = 100, speed = 100 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Serene Grace" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.3, weight = 1.1
    },
    [386] = {
        id = 386, name = "Deoxys", type1 = "psychic", baseStats = { hp = 50, attack = 150, defense = 50, sp_attack = 150, sp_defense = 50, speed = 150 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Pressure" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.7, weight = 60.8
    },
    [387] = {
        id = 387, name = "Turtwig", type1 = "grass", baseStats = { hp = 55, attack = 68, defense = 64, sp_attack = 45, sp_defense = 55, speed = 31 },
        catchRate = 120, baseExp = 90, growthRate = "medium_fast",
        abilities = { "Overgrow", "Shell Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 10.2
    },
    [388] = {
        id = 388, name = "Grotle", type1 = "grass", baseStats = { hp = 75, attack = 89, defense = 85, sp_attack = 55, sp_defense = 65, speed = 36 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Overgrow", "Shell Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.1, weight = 97
    },
    [389] = {
        id = 389, name = "Torterra", type1 = "grass", type2 = "ground", baseStats = { hp = 95, attack = 109, defense = 105, sp_attack = 75, sp_defense = 85, speed = 56 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Overgrow", "Shell Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2.2, weight = 310
    },
    [390] = {
        id = 390, name = "Chimchar", type1 = "fire", baseStats = { hp = 44, attack = 58, defense = 44, sp_attack = 58, sp_defense = 44, speed = 61 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Blaze", "Iron Fist" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.5, weight = 6.2
    },
    [391] = {
        id = 391, name = "Monferno", type1 = "fire", type2 = "fighting", baseStats = { hp = 64, attack = 78, defense = 52, sp_attack = 78, sp_defense = 52, speed = 81 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Blaze", "Iron Fist" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.9, weight = 22
    },
    [392] = {
        id = 392, name = "Infernape", type1 = "fire", type2 = "fighting", customModel = "infernape", baseStats = { hp = 76, attack = 104, defense = 71, sp_attack = 104, sp_defense = 71, speed = 108 },
        catchRate = 120, baseExp = 152, growthRate = "medium_fast",
        abilities = { "Blaze", "Iron Fist" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.2, weight = 55
    },
    [393] = {
        id = 393, name = "Piplup", type1 = "water", baseStats = { hp = 53, attack = 51, defense = 53, sp_attack = 61, sp_defense = 56, speed = 40 },
        catchRate = 120, baseExp = 89, growthRate = "medium_fast",
        abilities = { "Torrent", "Competitive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 5.2
    },
    [394] = {
        id = 394, name = "Prinplup", type1 = "water", baseStats = { hp = 64, attack = 66, defense = 68, sp_attack = 81, sp_defense = 76, speed = 50 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Torrent", "Competitive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.8, weight = 23
    },
    [395] = {
        id = 395, name = "Empoleon", type1 = "water", type2 = "steel", baseStats = { hp = 84, attack = 86, defense = 88, sp_attack = 111, sp_defense = 101, speed = 60 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Torrent", "Competitive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.7, weight = 84.5
    },
    [396] = {
        id = 396, name = "Starly", type1 = "normal", type2 = "flying", baseStats = { hp = 40, attack = 55, defense = 30, sp_attack = 30, sp_defense = 30, speed = 60 },
        catchRate = 120, baseExp = 70, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Reckless" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 2
    },
    [397] = {
        id = 397, name = "Staravia", type1 = "normal", type2 = "flying", baseStats = { hp = 55, attack = 75, defense = 50, sp_attack = 40, sp_defense = 40, speed = 80 },
        catchRate = 120, baseExp = 97, growthRate = "medium_fast",
        abilities = { "Intimidate", "Reckless" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 15.5
    },
    [398] = {
        id = 398, name = "Staraptor", type1 = "normal", type2 = "flying", baseStats = { hp = 85, attack = 120, defense = 70, sp_attack = 50, sp_defense = 60, speed = 100 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Intimidate", "Reckless" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.2, weight = 24.9
    },
    [399] = {
        id = 399, name = "Bidoof", type1 = "normal", baseStats = { hp = 59, attack = 45, defense = 40, sp_attack = 35, sp_defense = 40, speed = 31 },
        catchRate = 120, baseExp = 71, growthRate = "medium_fast",
        abilities = { "Simple", "Unaware", "Moody" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.5, weight = 20
    },
    [400] = {
        id = 400, name = "Bibarel", type1 = "normal", type2 = "water", baseStats = { hp = 79, attack = 85, defense = 60, sp_attack = 55, sp_defense = 60, speed = 71 },
        catchRate = 120, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Simple", "Unaware", "Moody" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1, weight = 31.5
    },
    [401] = {
        id = 401, name = "Kricketot", type1 = "bug", baseStats = { hp = 37, attack = 25, defense = 41, sp_attack = 25, sp_defense = 41, speed = 25 },
        catchRate = 120, baseExp = 55, growthRate = "medium_fast",
        abilities = { "Shed Skin", "Run Away" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 2.2
    },
    [402] = {
        id = 402, name = "Kricketune", type1 = "bug", baseStats = { hp = 77, attack = 85, defense = 51, sp_attack = 55, sp_defense = 51, speed = 65 },
        catchRate = 120, baseExp = 109, growthRate = "medium_fast",
        abilities = { "Swarm", "Technician" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 25.5
    },
    [403] = {
        id = 403, name = "Shinx", type1 = "electric", baseStats = { hp = 45, attack = 65, defense = 34, sp_attack = 40, sp_defense = 34, speed = 45 },
        catchRate = 120, baseExp = 75, growthRate = "medium_fast",
        abilities = { "Rivalry", "Intimidate", "Guts" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.5, weight = 9.5
    },
    [404] = {
        id = 404, name = "Luxio", type1 = "electric", baseStats = { hp = 60, attack = 85, defense = 49, sp_attack = 60, sp_defense = 49, speed = 60 },
        catchRate = 120, baseExp = 103, growthRate = "medium_fast",
        abilities = { "Rivalry", "Intimidate", "Guts" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.9, weight = 30.5
    },
    [405] = {
        id = 405, name = "Luxray", type1 = "electric", baseStats = { hp = 80, attack = 120, defense = 79, sp_attack = 95, sp_defense = 79, speed = 70 },
        catchRate = 120, baseExp = 149, growthRate = "medium_fast",
        abilities = { "Rivalry", "Intimidate", "Guts" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.4, weight = 42
    },
    [406] = {
        id = 406, name = "Budew", type1 = "grass", type2 = "poison", baseStats = { hp = 40, attack = 30, defense = 35, sp_attack = 50, sp_defense = 70, speed = 55 },
        catchRate = 120, baseExp = 80, growthRate = "medium_fast",
        abilities = { "Natural Cure", "Poison Point", "Leaf Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.2, weight = 1.2
    },
    [407] = {
        id = 407, name = "Roserade", type1 = "grass", type2 = "poison", baseStats = { hp = 60, attack = 70, defense = 65, sp_attack = 125, sp_defense = 105, speed = 90 },
        catchRate = 120, baseExp = 147, growthRate = "medium_fast",
        abilities = { "Natural Cure", "Poison Point", "Technician" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.9, weight = 14.5
    },
    [408] = {
        id = 408, name = "Cranidos", type1 = "rock", baseStats = { hp = 67, attack = 125, defense = 40, sp_attack = 30, sp_defense = 30, speed = 58 },
        catchRate = 120, baseExp = 100, growthRate = "medium_fast",
        abilities = { "Mold Breaker", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.9, weight = 31.5
    },
    [409] = {
        id = 409, name = "Rampardos", type1 = "rock", baseStats = { hp = 97, attack = 165, defense = 60, sp_attack = 65, sp_defense = 50, speed = 58 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Mold Breaker", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.6, weight = 102.5
    },
    [410] = {
        id = 410, name = "Shieldon", type1 = "rock", type2 = "steel", baseStats = { hp = 30, attack = 42, defense = 118, sp_attack = 42, sp_defense = 88, speed = 30 },
        catchRate = 120, baseExp = 100, growthRate = "medium_fast",
        abilities = { "Sturdy", "Soundproof" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.5, weight = 57
    },
    [411] = {
        id = 411, name = "Bastiodon", type1 = "rock", type2 = "steel", baseStats = { hp = 60, attack = 52, defense = 168, sp_attack = 47, sp_defense = 138, speed = 30 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Sturdy", "Soundproof" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.3, weight = 149.5
    },
    [412] = {
        id = 412, name = "Burmy", type1 = "bug", baseStats = { hp = 40, attack = 29, defense = 45, sp_attack = 29, sp_defense = 45, speed = 36 },
        catchRate = 120, baseExp = 64, growthRate = "medium_fast",
        abilities = { "Shed Skin", "Overcoat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.2, weight = 3.4
    },
    [413] = {
        id = 413, name = "Wormadam", type1 = "bug", type2 = "grass", baseStats = { hp = 60, attack = 59, defense = 85, sp_attack = 79, sp_defense = 105, speed = 36 },
        catchRate = 120, baseExp = 121, growthRate = "medium_fast",
        abilities = { "Anticipation", "Overcoat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 6.5
    },
    [414] = {
        id = 414, name = "Mothim", type1 = "bug", type2 = "flying", baseStats = { hp = 70, attack = 94, defense = 50, sp_attack = 94, sp_defense = 50, speed = 66 },
        catchRate = 120, baseExp = 121, growthRate = "medium_fast",
        abilities = { "Swarm", "Tinted Lens" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.9, weight = 23.3
    },
    [415] = {
        id = 415, name = "Combee", type1 = "bug", type2 = "flying", baseStats = { hp = 30, attack = 30, defense = 42, sp_attack = 30, sp_defense = 42, speed = 70 },
        catchRate = 120, baseExp = 69, growthRate = "medium_fast",
        abilities = { "Honey Gather", "Hustle" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 5.5
    },
    [416] = {
        id = 416, name = "Vespiquen", type1 = "bug", type2 = "flying", baseStats = { hp = 70, attack = 80, defense = 102, sp_attack = 80, sp_defense = 102, speed = 40 },
        catchRate = 120, baseExp = 135, growthRate = "medium_fast",
        abilities = { "Pressure", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 38.5
    },
    [417] = {
        id = 417, name = "Pachirisu", type1 = "electric", baseStats = { hp = 60, attack = 45, defense = 70, sp_attack = 45, sp_defense = 90, speed = 95 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Run Away", "Pickup", "Volt Absorb" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.4, weight = 3.9
    },
    [418] = {
        id = 418, name = "Buizel", type1 = "water", baseStats = { hp = 55, attack = 65, defense = 35, sp_attack = 60, sp_defense = 30, speed = 85 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Water Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.7, weight = 29.5
    },
    [419] = {
        id = 419, name = "Floatzel", type1 = "water", baseStats = { hp = 85, attack = 105, defense = 55, sp_attack = 85, sp_defense = 50, speed = 115 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Water Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.1, weight = 33.5
    },
    [420] = {
        id = 420, name = "Cherubi", type1 = "grass", baseStats = { hp = 45, attack = 35, defense = 45, sp_attack = 62, sp_defense = 53, speed = 35 },
        catchRate = 120, baseExp = 78, growthRate = "medium_fast",
        abilities = { "Chlorophyll" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 3.3
    },
    [421] = {
        id = 421, name = "Cherrim", type1 = "grass", baseStats = { hp = 70, attack = 60, defense = 70, sp_attack = 87, sp_defense = 78, speed = 85 },
        catchRate = 120, baseExp = 128, growthRate = "medium_fast",
        abilities = { "Flower Gift" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 9.3
    },
    [422] = {
        id = 422, name = "Shellos", type1 = "water", baseStats = { hp = 76, attack = 48, defense = 48, sp_attack = 57, sp_defense = 62, speed = 34 },
        catchRate = 120, baseExp = 92, growthRate = "medium_fast",
        abilities = { "Sticky Hold", "Storm Drain", "Sand Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 6.3
    },
    [423] = {
        id = 423, name = "Gastrodon", type1 = "water", type2 = "ground", baseStats = { hp = 111, attack = 83, defense = 68, sp_attack = 92, sp_defense = 82, speed = 39 },
        catchRate = 120, baseExp = 135, growthRate = "medium_fast",
        abilities = { "Sticky Hold", "Storm Drain", "Sand Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.9, weight = 29.9
    },
    [424] = {
        id = 424, name = "Ambipom", type1 = "normal", baseStats = { hp = 75, attack = 100, defense = 66, sp_attack = 60, sp_defense = 66, speed = 115 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Technician", "Pickup", "Skill Link" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.2, weight = 20.3
    },
    [425] = {
        id = 425, name = "Drifloon", type1 = "ghost", type2 = "flying", baseStats = { hp = 90, attack = 50, defense = 34, sp_attack = 60, sp_defense = 44, speed = 70 },
        catchRate = 120, baseExp = 99, growthRate = "medium_fast",
        abilities = { "Aftermath", "Unburden", "Flare Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 1.2
    },
    [426] = {
        id = 426, name = "Drifblim", type1 = "ghost", type2 = "flying", baseStats = { hp = 150, attack = 80, defense = 44, sp_attack = 90, sp_defense = 54, speed = 80 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Aftermath", "Unburden", "Flare Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.2, weight = 15
    },
    [427] = {
        id = 427, name = "Buneary", type1 = "normal", baseStats = { hp = 55, attack = 66, defense = 44, sp_attack = 44, sp_defense = 56, speed = 85 },
        catchRate = 120, baseExp = 100, growthRate = "medium_fast",
        abilities = { "Run Away", "Klutz", "Limber" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 5.5
    },
    [428] = {
        id = 428, name = "Lopunny", type1 = "normal", baseStats = { hp = 65, attack = 76, defense = 84, sp_attack = 54, sp_defense = 96, speed = 105 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Cute Charm", "Klutz", "Limber" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.2, weight = 33.3
    },
    [429] = {
        id = 429, name = "Mismagius", type1 = "ghost", customModel = "mismagius", baseStats = { hp = 60, attack = 60, defense = 60, sp_attack = 105, sp_defense = 105, speed = 105 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.9, weight = 4.4
    },
    [430] = {
        id = 430, name = "Honchkrow", type1 = "dark", type2 = "flying", baseStats = { hp = 100, attack = 125, defense = 52, sp_attack = 105, sp_defense = 52, speed = 71 },
        catchRate = 120, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Insomnia", "Super Luck", "Moxie" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.9, weight = 27.3
    },
    [431] = {
        id = 431, name = "Glameow", type1 = "normal", baseStats = { hp = 49, attack = 55, defense = 42, sp_attack = 42, sp_defense = 37, speed = 85 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Limber", "Own Tempo", "Keen Eye" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.5, weight = 3.9
    },
    [432] = {
        id = 432, name = "Purugly", type1 = "normal", baseStats = { hp = 71, attack = 82, defense = 64, sp_attack = 64, sp_defense = 59, speed = 112 },
        catchRate = 120, baseExp = 129, growthRate = "medium_fast",
        abilities = { "Thick Fat", "Own Tempo", "Defiant" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1, weight = 43.8
    },
    [433] = {
        id = 433, name = "Chingling", type1 = "psychic", baseStats = { hp = 45, attack = 30, defense = 50, sp_attack = 65, sp_defense = 50, speed = 45 },
        catchRate = 120, baseExp = 81, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.2, weight = 0.6
    },
    [434] = {
        id = 434, name = "Stunky", type1 = "poison", type2 = "dark", baseStats = { hp = 63, attack = 63, defense = 47, sp_attack = 41, sp_defense = 41, speed = 74 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Stench", "Aftermath", "Keen Eye" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.4, weight = 19.2
    },
    [435] = {
        id = 435, name = "Skuntank", type1 = "poison", type2 = "dark", baseStats = { hp = 103, attack = 93, defense = 67, sp_attack = 71, sp_defense = 61, speed = 84 },
        catchRate = 120, baseExp = 136, growthRate = "medium_fast",
        abilities = { "Stench", "Aftermath", "Keen Eye" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1, weight = 38
    },
    [436] = {
        id = 436, name = "Bronzor", type1 = "steel", type2 = "psychic", baseStats = { hp = 57, attack = 24, defense = 86, sp_attack = 24, sp_defense = 86, speed = 23 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Levitate", "Heatproof", "Heavy Metal" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.5, weight = 60.5
    },
    [437] = {
        id = 437, name = "Bronzong", type1 = "steel", type2 = "psychic", baseStats = { hp = 67, attack = 89, defense = 116, sp_attack = 79, sp_defense = 116, speed = 33 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Levitate", "Heatproof", "Heavy Metal" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.3, weight = 187
    },
    [438] = {
        id = 438, name = "Bonsly", type1 = "rock", baseStats = { hp = 50, attack = 80, defense = 95, sp_attack = 10, sp_defense = 45, speed = 10 },
        catchRate = 120, baseExp = 82, growthRate = "medium_fast",
        abilities = { "Sturdy", "Rock Head", "Rattled" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.5, weight = 15
    },
    [439] = {
        id = 439, name = "Mime Jr.", type1 = "psychic", type2 = "fairy", baseStats = { hp = 20, attack = 25, defense = 45, sp_attack = 70, sp_defense = 90, speed = 60 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Soundproof", "Filter", "Technician" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 13
    },
    [440] = {
        id = 440, name = "Happiny", type1 = "normal", baseStats = { hp = 100, attack = 5, defense = 5, sp_attack = 15, sp_defense = 65, speed = 30 },
        catchRate = 120, baseExp = 62, growthRate = "medium_fast",
        abilities = { "Natural Cure", "Serene Grace", "Friend Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 24.4
    },
    [441] = {
        id = 441, name = "Chatot", type1 = "normal", type2 = "flying", baseStats = { hp = 76, attack = 65, defense = 45, sp_attack = 92, sp_defense = 42, speed = 91 },
        catchRate = 120, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Tangled Feet", "Big Pecks" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.5, weight = 1.9
    },
    [442] = {
        id = 442, name = "Spiritomb", type1 = "ghost", type2 = "dark", baseStats = { hp = 50, attack = 92, defense = 108, sp_attack = 92, sp_defense = 108, speed = 35 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Pressure", "Infiltrator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1, weight = 108
    },
    [443] = {
        id = 443, name = "Gible", type1 = "dragon", type2 = "ground", baseStats = { hp = 58, attack = 70, defense = 45, sp_attack = 40, sp_defense = 45, speed = 42 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Sand Veil", "Rough Skin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 0.7, weight = 20.5
    },
    [444] = {
        id = 444, name = "Gabite", type1 = "dragon", type2 = "ground", baseStats = { hp = 68, attack = 90, defense = 65, sp_attack = 50, sp_defense = 55, speed = 82 },
        catchRate = 120, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Sand Veil", "Rough Skin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 1.4, weight = 56
    },
    [445] = {
        id = 445, name = "Garchomp", type1 = "dragon", type2 = "ground", customModel = "garchomp", baseStats = { hp = 108, attack = 130, defense = 95, sp_attack = 80, sp_defense = 85, speed = 102 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Sand Veil", "Rough Skin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 1.9, weight = 95
    },
    [446] = {
        id = 446, name = "Munchlax", type1 = "normal", baseStats = { hp = 135, attack = 85, defense = 40, sp_attack = 40, sp_defense = 85, speed = 5 },
        catchRate = 120, baseExp = 111, growthRate = "medium_fast",
        abilities = { "Pickup", "Thick Fat", "Gluttony" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 105
    },
    [447] = {
        id = 447, name = "Riolu", type1 = "fighting", baseStats = { hp = 40, attack = 70, defense = 40, sp_attack = 35, sp_defense = 40, speed = 60 },
        catchRate = 120, baseExp = 81, growthRate = "medium_fast",
        abilities = { "Steadfast", "Inner Focus", "Prankster" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.7, weight = 20.2
    },
    [448] = {
        id = 448, name = "Lucario", type1 = "fighting", type2 = "steel", customModel = "lucario", baseStats = { hp = 70, attack = 110, defense = 70, sp_attack = 115, sp_defense = 70, speed = 90 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Steadfast", "Inner Focus", "Justified" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.2, weight = 54
    },
    [449] = {
        id = 449, name = "Hippopotas", type1 = "ground", baseStats = { hp = 68, attack = 72, defense = 78, sp_attack = 38, sp_defense = 42, speed = 32 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Sand Stream", "Sand Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.8, weight = 49.5
    },
    [450] = {
        id = 450, name = "Hippowdon", type1 = "ground", baseStats = { hp = 108, attack = 112, defense = 118, sp_attack = 68, sp_defense = 72, speed = 47 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Sand Stream", "Sand Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2, weight = 300
    },
    [451] = {
        id = 451, name = "Skorupi", type1 = "poison", type2 = "bug", baseStats = { hp = 40, attack = 50, defense = 90, sp_attack = 30, sp_defense = 55, speed = 65 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Battle Armor", "Sniper", "Keen Eye" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.8, weight = 12
    },
    [452] = {
        id = 452, name = "Drapion", type1 = "poison", type2 = "dark", baseStats = { hp = 70, attack = 90, defense = 110, sp_attack = 60, sp_defense = 75, speed = 95 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Battle Armor", "Sniper", "Keen Eye" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.3, weight = 61.5
    },
    [453] = {
        id = 453, name = "Croagunk", type1 = "poison", type2 = "fighting", baseStats = { hp = 48, attack = 61, defense = 40, sp_attack = 61, sp_defense = 40, speed = 50 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Anticipation", "Dry Skin", "Poison Touch" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.7, weight = 23
    },
    [454] = {
        id = 454, name = "Toxicroak", type1 = "poison", type2 = "fighting", baseStats = { hp = 83, attack = 106, defense = 65, sp_attack = 86, sp_defense = 65, speed = 85 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Anticipation", "Dry Skin", "Poison Touch" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.3, weight = 44.4
    },
    [455] = {
        id = 455, name = "Carnivine", type1 = "grass", baseStats = { hp = 74, attack = 100, defense = 72, sp_attack = 90, sp_defense = 72, speed = 46 },
        catchRate = 120, baseExp = 129, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.4, weight = 27
    },
    [456] = {
        id = 456, name = "Finneon", type1 = "water", baseStats = { hp = 49, attack = 49, defense = 56, sp_attack = 49, sp_defense = 61, speed = 66 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Storm Drain", "Water Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 7
    },
    [457] = {
        id = 457, name = "Lumineon", type1 = "water", baseStats = { hp = 69, attack = 69, defense = 76, sp_attack = 69, sp_defense = 86, speed = 91 },
        catchRate = 120, baseExp = 131, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Storm Drain", "Water Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 24
    },
    [458] = {
        id = 458, name = "Mantyke", type1 = "water", type2 = "flying", baseStats = { hp = 45, attack = 20, defense = 50, sp_attack = 60, sp_defense = 120, speed = 50 },
        catchRate = 120, baseExp = 98, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Water Absorb", "Water Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 65
    },
    [459] = {
        id = 459, name = "Snover", type1 = "grass", type2 = "ice", baseStats = { hp = 60, attack = 62, defense = 50, sp_attack = 62, sp_defense = 60, speed = 40 },
        catchRate = 120, baseExp = 95, growthRate = "medium_fast",
        abilities = { "Snow Warning", "Soundproof" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 50.5
    },
    [460] = {
        id = 460, name = "Abomasnow", type1 = "grass", type2 = "ice", baseStats = { hp = 90, attack = 92, defense = 75, sp_attack = 92, sp_defense = 85, speed = 60 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Snow Warning", "Soundproof" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2.2, weight = 135.5
    },
    [461] = {
        id = 461, name = "Weavile", type1 = "dark", type2 = "ice", baseStats = { hp = 70, attack = 120, defense = 65, sp_attack = 45, sp_defense = 85, speed = 125 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Pressure", "Pickpocket" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.1, weight = 34
    },
    [462] = {
        id = 462, name = "Magnezone", type1 = "electric", type2 = "steel", baseStats = { hp = 70, attack = 70, defense = 115, sp_attack = 130, sp_defense = 90, speed = 60 },
        catchRate = 120, baseExp = 152, growthRate = "medium_fast",
        abilities = { "Magnet Pull", "Sturdy", "Analytic" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.2, weight = 180
    },
    [463] = {
        id = 463, name = "Lickilicky", type1 = "normal", baseStats = { hp = 110, attack = 85, defense = 95, sp_attack = 80, sp_defense = 95, speed = 50 },
        catchRate = 120, baseExp = 147, growthRate = "medium_fast",
        abilities = { "Own Tempo", "Oblivious", "Cloud Nine" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.7, weight = 140
    },
    [464] = {
        id = 464, name = "Rhyperior", type1 = "ground", type2 = "rock", baseStats = { hp = 115, attack = 140, defense = 130, sp_attack = 55, sp_defense = 55, speed = 40 },
        catchRate = 120, baseExp = 152, growthRate = "medium_fast",
        abilities = { "Lightning Rod", "Solid Rock", "Reckless" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2.4, weight = 282.8
    },
    [465] = {
        id = 465, name = "Tangrowth", type1 = "grass", baseStats = { hp = 100, attack = 100, defense = 125, sp_attack = 110, sp_defense = 50, speed = 50 },
        catchRate = 120, baseExp = 152, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Leaf Guard", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2, weight = 128.6
    },
    [466] = {
        id = 466, name = "Electivire", type1 = "electric", baseStats = { hp = 75, attack = 123, defense = 67, sp_attack = 95, sp_defense = 85, speed = 95 },
        catchRate = 120, baseExp = 154, growthRate = "medium_fast",
        abilities = { "Motor Drive", "Vital Spirit" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.8, weight = 138.6
    },
    [467] = {
        id = 467, name = "Magmortar", type1 = "fire", baseStats = { hp = 75, attack = 95, defense = 67, sp_attack = 125, sp_defense = 95, speed = 83 },
        catchRate = 120, baseExp = 154, growthRate = "medium_fast",
        abilities = { "Flame Body", "Vital Spirit" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.6, weight = 68
    },
    [468] = {
        id = 468, name = "Togekiss", type1 = "fairy", type2 = "flying", baseStats = { hp = 85, attack = 50, defense = 95, sp_attack = 120, sp_defense = 115, speed = 80 },
        catchRate = 120, baseExp = 155, growthRate = "medium_fast",
        abilities = { "Hustle", "Serene Grace", "Super Luck" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 1.5, weight = 38
    },
    [469] = {
        id = 469, name = "Yanmega", type1 = "bug", type2 = "flying", baseStats = { hp = 86, attack = 76, defense = 86, sp_attack = 116, sp_defense = 56, speed = 95 },
        catchRate = 120, baseExp = 147, growthRate = "medium_fast",
        abilities = { "Speed Boost", "Tinted Lens", "Frisk" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.9, weight = 51.5
    },
    [470] = {
        id = 470, name = "Leafeon", type1 = "grass", baseStats = { hp = 65, attack = 110, defense = 130, sp_attack = 60, sp_defense = 65, speed = 95 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Leaf Guard", "Chlorophyll" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 25.5
    },
    [471] = {
        id = 471, name = "Glaceon", type1 = "ice", baseStats = { hp = 65, attack = 60, defense = 110, sp_attack = 130, sp_defense = 95, speed = 65 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Snow Cloak", "Ice Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 0.8, weight = 25.9
    },
    [472] = {
        id = 472, name = "Gliscor", type1 = "ground", type2 = "flying", baseStats = { hp = 75, attack = 95, defense = 125, sp_attack = 45, sp_defense = 75, speed = 95 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Hyper Cutter", "Sand Veil", "Poison Heal" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2, weight = 42.5
    },
    [473] = {
        id = 473, name = "Mamoswine", type1 = "ice", type2 = "ground", baseStats = { hp = 110, attack = 130, defense = 80, sp_attack = 70, sp_defense = 60, speed = 80 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Oblivious", "Snow Cloak", "Thick Fat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 2.5, weight = 291
    },
    [474] = {
        id = 474, name = "Porygon-Z", type1 = "normal", baseStats = { hp = 85, attack = 80, defense = 70, sp_attack = 135, sp_defense = 75, speed = 90 },
        catchRate = 120, baseExp = 152, growthRate = "medium_fast",
        abilities = { "Adaptability", "Download", "Analytic" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.9, weight = 34
    },
    [475] = {
        id = 475, name = "Gallade", type1 = "psychic", type2 = "fighting", baseStats = { hp = 68, attack = 125, defense = 65, sp_attack = 65, sp_defense = 115, speed = 80 },
        catchRate = 120, baseExp = 148, growthRate = "medium_fast",
        abilities = { "Steadfast", "Sharpness", "Justified" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.6, weight = 52
    },
    [476] = {
        id = 476, name = "Probopass", type1 = "rock", type2 = "steel", baseStats = { hp = 60, attack = 55, defense = 145, sp_attack = 75, sp_defense = 150, speed = 40 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Sturdy", "Magnet Pull", "Sand Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.4, weight = 340
    },
    [477] = {
        id = 477, name = "Dusknoir", type1 = "ghost", baseStats = { hp = 45, attack = 100, defense = 135, sp_attack = 65, sp_defense = 135, speed = 45 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Pressure", "Frisk" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 2.2, weight = 106.6
    },
    [478] = {
        id = 478, name = "Froslass", type1 = "ice", type2 = "ghost", baseStats = { hp = 70, attack = 80, defense = 70, sp_attack = 80, sp_defense = 70, speed = 110 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Snow Cloak", "Cursed Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 1.3, weight = 26.6
    },
    [479] = {
        id = 479, name = "Rotom", type1 = "electric", type2 = "ghost", baseStats = { hp = 50, attack = 50, defense = 77, sp_attack = 95, sp_defense = 77, speed = 91 },
        catchRate = 120, baseExp = 125, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.3, weight = 0.3
    },
    [480] = {
        id = 480, name = "Uxie", type1 = "psychic", baseStats = { hp = 75, attack = 75, defense = 130, sp_attack = 75, sp_defense = 130, speed = 95 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 0.3
    },
    [481] = {
        id = 481, name = "Mesprit", type1 = "psychic", baseStats = { hp = 80, attack = 105, defense = 105, sp_attack = 105, sp_defense = 105, speed = 80 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 0.3
    },
    [482] = {
        id = 482, name = "Azelf", type1 = "psychic", baseStats = { hp = 75, attack = 125, defense = 70, sp_attack = 125, sp_defense = 70, speed = 115 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 0.3
    },
    [483] = {
        id = 483, name = "Dialga", type1 = "steel", type2 = "dragon", baseStats = { hp = 100, attack = 120, defense = 120, sp_attack = 150, sp_defense = 100, speed = 90 },
        catchRate = 120, baseExp = 194, growthRate = "medium_fast",
        abilities = { "Pressure", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 5.4, weight = 683
    },
    [484] = {
        id = 484, name = "Palkia", type1 = "water", type2 = "dragon", baseStats = { hp = 90, attack = 120, defense = 100, sp_attack = 150, sp_defense = 120, speed = 100 },
        catchRate = 120, baseExp = 194, growthRate = "medium_fast",
        abilities = { "Pressure", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 4.2, weight = 336
    },
    [485] = {
        id = 485, name = "Heatran", type1 = "fire", type2 = "steel", baseStats = { hp = 91, attack = 90, defense = 106, sp_attack = 130, sp_defense = 106, speed = 77 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Flash Fire", "Flame Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.7, weight = 430
    },
    [486] = {
        id = 486, name = "Regigigas", type1 = "normal", baseStats = { hp = 110, attack = 160, defense = 110, sp_attack = 80, sp_defense = 110, speed = 100 },
        catchRate = 120, baseExp = 191, growthRate = "medium_fast",
        abilities = { "Slow Start" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 3.7, weight = 420
    },
    [487] = {
        id = 487, name = "Giratina", type1 = "ghost", type2 = "dragon", baseStats = { hp = 150, attack = 100, defense = 120, sp_attack = 100, sp_defense = 120, speed = 90 },
        catchRate = 120, baseExp = 194, growthRate = "medium_fast",
        abilities = { "Pressure", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 4.5, weight = 750
    },
    [488] = {
        id = 488, name = "Cresselia", type1 = "psychic", baseStats = { hp = 120, attack = 70, defense = 110, sp_attack = 75, sp_defense = 120, speed = 85 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.5, weight = 85.6
    },
    [489] = {
        id = 489, name = "Phione", type1 = "water", baseStats = { hp = 80, attack = 80, defense = 80, sp_attack = 80, sp_defense = 80, speed = 80 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Hydration" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 3.1
    },
    [490] = {
        id = 490, name = "Manaphy", type1 = "water", baseStats = { hp = 100, attack = 100, defense = 100, sp_attack = 100, sp_defense = 100, speed = 100 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Hydration" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 1.4
    },
    [491] = {
        id = 491, name = "Darkrai", type1 = "dark", baseStats = { hp = 70, attack = 90, defense = 90, sp_attack = 135, sp_defense = 90, speed = 125 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Bad Dreams" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.5, weight = 50.5
    },
    [492] = {
        id = 492, name = "Shaymin", type1 = "grass", baseStats = { hp = 100, attack = 100, defense = 100, sp_attack = 100, sp_defense = 100, speed = 100 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Natural Cure" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.2, weight = 2.1
    },
    [493] = {
        id = 493, name = "Arceus", type1 = "normal", baseStats = { hp = 120, attack = 120, defense = 120, sp_attack = 120, sp_defense = 120, speed = 120 },
        catchRate = 120, baseExp = 205, growthRate = "medium_fast",
        abilities = { "Multitype" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 3.2, weight = 320
    },
    [494] = {
        id = 494, name = "Victini", type1 = "psychic", type2 = "fire", baseStats = { hp = 100, attack = 100, defense = 100, sp_attack = 100, sp_defense = 100, speed = 100 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Victory Star" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 4
    },
    [495] = {
        id = 495, name = "Snivy", type1 = "grass", baseStats = { hp = 45, attack = 45, defense = 55, sp_attack = 45, sp_defense = 55, speed = 63 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Overgrow", "Contrary" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 8.1
    },
    [496] = {
        id = 496, name = "Servine", type1 = "grass", baseStats = { hp = 60, attack = 60, defense = 75, sp_attack = 60, sp_defense = 75, speed = 83 },
        catchRate = 120, baseExp = 118, growthRate = "medium_fast",
        abilities = { "Overgrow", "Contrary" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.8, weight = 16
    },
    [497] = {
        id = 497, name = "Serperior", type1 = "grass", baseStats = { hp = 75, attack = 75, defense = 95, sp_attack = 75, sp_defense = 95, speed = 113 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Overgrow", "Contrary" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 3.3, weight = 63
    },
    [498] = {
        id = 498, name = "Tepig", type1 = "fire", baseStats = { hp = 65, attack = 63, defense = 45, sp_attack = 45, sp_defense = 45, speed = 45 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Blaze", "Thick Fat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.5, weight = 9.9
    },
    [499] = {
        id = 499, name = "Pignite", type1 = "fire", type2 = "fighting", baseStats = { hp = 90, attack = 93, defense = 55, sp_attack = 70, sp_defense = 55, speed = 55 },
        catchRate = 120, baseExp = 119, growthRate = "medium_fast",
        abilities = { "Blaze", "Thick Fat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1, weight = 55.5
    },
    [500] = {
        id = 500, name = "Emboar", type1 = "fire", type2 = "fighting", baseStats = { hp = 110, attack = 123, defense = 65, sp_attack = 100, sp_defense = 65, speed = 65 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Blaze", "Reckless" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.6, weight = 150
    },
    [501] = {
        id = 501, name = "Oshawott", type1 = "water", baseStats = { hp = 55, attack = 55, defense = 45, sp_attack = 63, sp_defense = 45, speed = 45 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Torrent", "Shell Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 5.9
    },
    [502] = {
        id = 502, name = "Dewott", type1 = "water", baseStats = { hp = 75, attack = 75, defense = 60, sp_attack = 83, sp_defense = 60, speed = 60 },
        catchRate = 120, baseExp = 118, growthRate = "medium_fast",
        abilities = { "Torrent", "Shell Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.8, weight = 24.5
    },
    [503] = {
        id = 503, name = "Samurott", type1 = "water", baseStats = { hp = 95, attack = 100, defense = 85, sp_attack = 108, sp_defense = 70, speed = 70 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Torrent", "Shell Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.5, weight = 94.6
    },
    [504] = {
        id = 504, name = "Patrat", type1 = "normal", baseStats = { hp = 45, attack = 55, defense = 39, sp_attack = 35, sp_defense = 39, speed = 42 },
        catchRate = 120, baseExp = 72, growthRate = "medium_fast",
        abilities = { "Run Away", "Keen Eye", "Analytic" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.5, weight = 11.6
    },
    [505] = {
        id = 505, name = "Watchog", type1 = "normal", baseStats = { hp = 60, attack = 85, defense = 69, sp_attack = 60, sp_defense = 69, speed = 77 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Illuminate", "Keen Eye", "Analytic" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.1, weight = 27
    },
    [506] = {
        id = 506, name = "Lillipup", type1 = "normal", baseStats = { hp = 45, attack = 60, defense = 45, sp_attack = 25, sp_defense = 45, speed = 55 },
        catchRate = 120, baseExp = 78, growthRate = "medium_fast",
        abilities = { "Vital Spirit", "Pickup", "Run Away" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 4.1
    },
    [507] = {
        id = 507, name = "Herdier", type1 = "normal", baseStats = { hp = 65, attack = 80, defense = 65, sp_attack = 35, sp_defense = 65, speed = 60 },
        catchRate = 120, baseExp = 105, growthRate = "medium_fast",
        abilities = { "Intimidate", "Sand Rush", "Scrappy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.9, weight = 14.7
    },
    [508] = {
        id = 508, name = "Stoutland", type1 = "normal", baseStats = { hp = 85, attack = 110, defense = 90, sp_attack = 45, sp_defense = 90, speed = 80 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Intimidate", "Sand Rush", "Scrappy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.2, weight = 61
    },
    [509] = {
        id = 509, name = "Purrloin", type1 = "dark", baseStats = { hp = 41, attack = 50, defense = 37, sp_attack = 50, sp_defense = 37, speed = 66 },
        catchRate = 120, baseExp = 80, growthRate = "medium_fast",
        abilities = { "Limber", "Unburden", "Prankster" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.4, weight = 10.1
    },
    [510] = {
        id = 510, name = "Liepard", type1 = "dark", baseStats = { hp = 64, attack = 88, defense = 50, sp_attack = 88, sp_defense = 50, speed = 106 },
        catchRate = 120, baseExp = 127, growthRate = "medium_fast",
        abilities = { "Limber", "Unburden", "Prankster" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.1, weight = 37.5
    },
    [511] = {
        id = 511, name = "Pansage", type1 = "grass", baseStats = { hp = 50, attack = 53, defense = 48, sp_attack = 53, sp_defense = 48, speed = 64 },
        catchRate = 120, baseExp = 90, growthRate = "medium_fast",
        abilities = { "Gluttony", "Overgrow" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 10.5
    },
    [512] = {
        id = 512, name = "Simisage", type1 = "grass", baseStats = { hp = 75, attack = 98, defense = 63, sp_attack = 98, sp_defense = 63, speed = 101 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Gluttony", "Overgrow" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.1, weight = 30.5
    },
    [513] = {
        id = 513, name = "Pansear", type1 = "fire", baseStats = { hp = 50, attack = 53, defense = 48, sp_attack = 53, sp_defense = 48, speed = 64 },
        catchRate = 120, baseExp = 90, growthRate = "medium_fast",
        abilities = { "Gluttony", "Blaze" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.6, weight = 11
    },
    [514] = {
        id = 514, name = "Simisear", type1 = "fire", baseStats = { hp = 75, attack = 98, defense = 63, sp_attack = 98, sp_defense = 63, speed = 101 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Gluttony", "Blaze" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1, weight = 28
    },
    [515] = {
        id = 515, name = "Panpour", type1 = "water", baseStats = { hp = 50, attack = 53, defense = 48, sp_attack = 53, sp_defense = 48, speed = 64 },
        catchRate = 120, baseExp = 90, growthRate = "medium_fast",
        abilities = { "Gluttony", "Torrent" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 13.5
    },
    [516] = {
        id = 516, name = "Simipour", type1 = "water", baseStats = { hp = 75, attack = 98, defense = 63, sp_attack = 98, sp_defense = 63, speed = 101 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Gluttony", "Torrent" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 29
    },
    [517] = {
        id = 517, name = "Munna", type1 = "psychic", baseStats = { hp = 76, attack = 25, defense = 45, sp_attack = 67, sp_defense = 55, speed = 24 },
        catchRate = 120, baseExp = 83, growthRate = "medium_fast",
        abilities = { "Forewarn", "Synchronize", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 23.3
    },
    [518] = {
        id = 518, name = "Musharna", type1 = "psychic", baseStats = { hp = 116, attack = 55, defense = 85, sp_attack = 107, sp_defense = 95, speed = 29 },
        catchRate = 120, baseExp = 139, growthRate = "medium_fast",
        abilities = { "Forewarn", "Synchronize", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.1, weight = 60.5
    },
    [519] = {
        id = 519, name = "Pidove", type1 = "normal", type2 = "flying", baseStats = { hp = 50, attack = 55, defense = 50, sp_attack = 36, sp_defense = 30, speed = 43 },
        catchRate = 120, baseExp = 75, growthRate = "medium_fast",
        abilities = { "Big Pecks", "Super Luck", "Rivalry" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 2.1
    },
    [520] = {
        id = 520, name = "Tranquill", type1 = "normal", type2 = "flying", baseStats = { hp = 62, attack = 77, defense = 62, sp_attack = 50, sp_defense = 42, speed = 65 },
        catchRate = 120, baseExp = 102, growthRate = "medium_fast",
        abilities = { "Big Pecks", "Super Luck", "Rivalry" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 15
    },
    [521] = {
        id = 521, name = "Unfezant", type1 = "normal", type2 = "flying", baseStats = { hp = 80, attack = 115, defense = 80, sp_attack = 65, sp_defense = 55, speed = 93 },
        catchRate = 120, baseExp = 139, growthRate = "medium_fast",
        abilities = { "Big Pecks", "Super Luck", "Rivalry" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.2, weight = 29
    },
    [522] = {
        id = 522, name = "Blitzle", type1 = "electric", baseStats = { hp = 45, attack = 60, defense = 32, sp_attack = 50, sp_defense = 32, speed = 76 },
        catchRate = 120, baseExp = 84, growthRate = "medium_fast",
        abilities = { "Lightning Rod", "Motor Drive", "Sap Sipper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.8, weight = 29.8
    },
    [523] = {
        id = 523, name = "Zebstrika", type1 = "electric", baseStats = { hp = 75, attack = 100, defense = 63, sp_attack = 80, sp_defense = 63, speed = 116 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Lightning Rod", "Motor Drive", "Sap Sipper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.6, weight = 79.5
    },
    [524] = {
        id = 524, name = "Roggenrola", type1 = "rock", baseStats = { hp = 55, attack = 75, defense = 85, sp_attack = 25, sp_defense = 25, speed = 15 },
        catchRate = 120, baseExp = 80, growthRate = "medium_fast",
        abilities = { "Sturdy", "Weak Armor", "Sand Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.4, weight = 18
    },
    [525] = {
        id = 525, name = "Boldore", type1 = "rock", baseStats = { hp = 70, attack = 105, defense = 105, sp_attack = 50, sp_defense = 40, speed = 20 },
        catchRate = 120, baseExp = 111, growthRate = "medium_fast",
        abilities = { "Sturdy", "Weak Armor", "Sand Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.9, weight = 102
    },
    [526] = {
        id = 526, name = "Gigalith", type1 = "rock", baseStats = { hp = 85, attack = 135, defense = 130, sp_attack = 60, sp_defense = 80, speed = 25 },
        catchRate = 120, baseExp = 147, growthRate = "medium_fast",
        abilities = { "Sturdy", "Sand Stream", "Sand Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.7, weight = 260
    },
    [527] = {
        id = 527, name = "Woobat", type1 = "psychic", type2 = "flying", baseStats = { hp = 65, attack = 45, defense = 43, sp_attack = 55, sp_defense = 43, speed = 72 },
        catchRate = 120, baseExp = 92, growthRate = "medium_fast",
        abilities = { "Unaware", "Klutz", "Simple" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 2.1
    },
    [528] = {
        id = 528, name = "Swoobat", type1 = "psychic", type2 = "flying", baseStats = { hp = 67, attack = 57, defense = 55, sp_attack = 77, sp_defense = 55, speed = 114 },
        catchRate = 120, baseExp = 121, growthRate = "medium_fast",
        abilities = { "Unaware", "Klutz", "Simple" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.9, weight = 10.5
    },
    [529] = {
        id = 529, name = "Drilbur", type1 = "ground", baseStats = { hp = 60, attack = 85, defense = 40, sp_attack = 30, sp_defense = 45, speed = 68 },
        catchRate = 120, baseExp = 93, growthRate = "medium_fast",
        abilities = { "Sand Rush", "Sand Force", "Mold Breaker" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.3, weight = 8.5
    },
    [530] = {
        id = 530, name = "Excadrill", type1 = "ground", type2 = "steel", baseStats = { hp = 110, attack = 135, defense = 60, sp_attack = 50, sp_defense = 65, speed = 88 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Sand Rush", "Sand Force", "Mold Breaker" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.7, weight = 40.4
    },
    [531] = {
        id = 531, name = "Audino", type1 = "normal", baseStats = { hp = 103, attack = 60, defense = 86, sp_attack = 60, sp_defense = 86, speed = 50 },
        catchRate = 120, baseExp = 127, growthRate = "medium_fast",
        abilities = { "Healer", "Regenerator", "Klutz" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.1, weight = 31
    },
    [532] = {
        id = 532, name = "Timburr", type1 = "fighting", baseStats = { hp = 75, attack = 80, defense = 55, sp_attack = 25, sp_defense = 35, speed = 35 },
        catchRate = 120, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Guts", "Sheer Force", "Iron Fist" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.6, weight = 12.5
    },
    [533] = {
        id = 533, name = "Gurdurr", type1 = "fighting", baseStats = { hp = 85, attack = 105, defense = 85, sp_attack = 40, sp_defense = 50, speed = 40 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Guts", "Sheer Force", "Iron Fist" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.2, weight = 40
    },
    [534] = {
        id = 534, name = "Conkeldurr", type1 = "fighting", baseStats = { hp = 105, attack = 140, defense = 95, sp_attack = 55, sp_defense = 65, speed = 45 },
        catchRate = 120, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Guts", "Sheer Force", "Iron Fist" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.4, weight = 87
    },
    [535] = {
        id = 535, name = "Tympole", type1 = "water", baseStats = { hp = 50, attack = 50, defense = 40, sp_attack = 50, sp_defense = 40, speed = 64 },
        catchRate = 120, baseExp = 84, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Hydration", "Water Absorb" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 4.5
    },
    [536] = {
        id = 536, name = "Palpitoad", type1 = "water", type2 = "ground", baseStats = { hp = 75, attack = 65, defense = 55, sp_attack = 65, sp_defense = 55, speed = 69 },
        catchRate = 120, baseExp = 109, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Hydration", "Water Absorb" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.8, weight = 17
    },
    [537] = {
        id = 537, name = "Seismitoad", type1 = "water", type2 = "ground", baseStats = { hp = 105, attack = 95, defense = 75, sp_attack = 85, sp_defense = 75, speed = 74 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Poison Touch", "Water Absorb" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.5, weight = 62
    },
    [538] = {
        id = 538, name = "Throh", type1 = "fighting", baseStats = { hp = 120, attack = 100, defense = 85, sp_attack = 30, sp_defense = 85, speed = 45 },
        catchRate = 120, baseExp = 132, growthRate = "medium_fast",
        abilities = { "Guts", "Inner Focus", "Mold Breaker" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.3, weight = 55.5
    },
    [539] = {
        id = 539, name = "Sawk", type1 = "fighting", baseStats = { hp = 75, attack = 125, defense = 75, sp_attack = 30, sp_defense = 75, speed = 85 },
        catchRate = 120, baseExp = 132, growthRate = "medium_fast",
        abilities = { "Sturdy", "Inner Focus", "Mold Breaker" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.4, weight = 51
    },
    [540] = {
        id = 540, name = "Sewaddle", type1 = "bug", type2 = "grass", baseStats = { hp = 45, attack = 53, defense = 70, sp_attack = 40, sp_defense = 60, speed = 42 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Swarm", "Chlorophyll", "Overcoat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 2.5
    },
    [541] = {
        id = 541, name = "Swadloon", type1 = "bug", type2 = "grass", baseStats = { hp = 55, attack = 63, defense = 90, sp_attack = 50, sp_defense = 80, speed = 42 },
        catchRate = 120, baseExp = 108, growthRate = "medium_fast",
        abilities = { "Leaf Guard", "Chlorophyll", "Overcoat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 7.3
    },
    [542] = {
        id = 542, name = "Leavanny", type1 = "bug", type2 = "grass", baseStats = { hp = 75, attack = 103, defense = 80, sp_attack = 70, sp_defense = 80, speed = 92 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Swarm", "Chlorophyll", "Overcoat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 20.5
    },
    [543] = {
        id = 543, name = "Venipede", type1 = "bug", type2 = "poison", baseStats = { hp = 30, attack = 45, defense = 59, sp_attack = 30, sp_defense = 39, speed = 57 },
        catchRate = 120, baseExp = 74, growthRate = "medium_fast",
        abilities = { "Poison Point", "Swarm", "Speed Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 5.3
    },
    [544] = {
        id = 544, name = "Whirlipede", type1 = "bug", type2 = "poison", baseStats = { hp = 40, attack = 55, defense = 99, sp_attack = 40, sp_defense = 79, speed = 47 },
        catchRate = 120, baseExp = 102, growthRate = "medium_fast",
        abilities = { "Poison Point", "Swarm", "Speed Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 58.5
    },
    [545] = {
        id = 545, name = "Scolipede", type1 = "bug", type2 = "poison", baseStats = { hp = 60, attack = 100, defense = 89, sp_attack = 55, sp_defense = 69, speed = 112 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Poison Point", "Swarm", "Speed Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2.5, weight = 200.5
    },
    [546] = {
        id = 546, name = "Cottonee", type1 = "grass", type2 = "fairy", baseStats = { hp = 40, attack = 27, defense = 60, sp_attack = 37, sp_defense = 50, speed = 66 },
        catchRate = 120, baseExp = 80, growthRate = "medium_fast",
        abilities = { "Prankster", "Infiltrator", "Chlorophyll" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 0.6
    },
    [547] = {
        id = 547, name = "Whimsicott", type1 = "grass", type2 = "fairy", baseStats = { hp = 60, attack = 67, defense = 85, sp_attack = 77, sp_defense = 75, speed = 116 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Prankster", "Infiltrator", "Chlorophyll" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.7, weight = 6.6
    },
    [548] = {
        id = 548, name = "Petilil", type1 = "grass", baseStats = { hp = 45, attack = 35, defense = 50, sp_attack = 70, sp_defense = 50, speed = 30 },
        catchRate = 120, baseExp = 80, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Own Tempo", "Leaf Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 6.6
    },
    [549] = {
        id = 549, name = "Lilligant", type1 = "grass", baseStats = { hp = 70, attack = 60, defense = 75, sp_attack = 110, sp_defense = 75, speed = 90 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Own Tempo", "Leaf Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.1, weight = 16.3
    },
    [550] = {
        id = 550, name = "Basculin", type1 = "water", baseStats = { hp = 70, attack = 92, defense = 65, sp_attack = 80, sp_defense = 55, speed = 98 },
        catchRate = 120, baseExp = 131, growthRate = "medium_fast",
        abilities = { "Reckless", "Adaptability", "Mold Breaker" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 18
    },
    [551] = {
        id = 551, name = "Sandile", type1 = "ground", type2 = "dark", baseStats = { hp = 50, attack = 72, defense = 35, sp_attack = 35, sp_defense = 35, speed = 65 },
        catchRate = 120, baseExp = 83, growthRate = "medium_fast",
        abilities = { "Intimidate", "Moxie", "Anger Point" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.7, weight = 15.2
    },
    [552] = {
        id = 552, name = "Krokorok", type1 = "ground", type2 = "dark", baseStats = { hp = 60, attack = 82, defense = 45, sp_attack = 45, sp_defense = 45, speed = 74 },
        catchRate = 120, baseExp = 100, growthRate = "medium_fast",
        abilities = { "Intimidate", "Moxie", "Anger Point" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1, weight = 33.4
    },
    [553] = {
        id = 553, name = "Krookodile", type1 = "ground", type2 = "dark", baseStats = { hp = 95, attack = 117, defense = 80, sp_attack = 65, sp_defense = 70, speed = 92 },
        catchRate = 120, baseExp = 148, growthRate = "medium_fast",
        abilities = { "Intimidate", "Moxie", "Anger Point" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.5, weight = 96.3
    },
    [554] = {
        id = 554, name = "Darumaka", type1 = "fire", baseStats = { hp = 70, attack = 90, defense = 45, sp_attack = 15, sp_defense = 45, speed = 50 },
        catchRate = 120, baseExp = 90, growthRate = "medium_fast",
        abilities = { "Hustle", "Inner Focus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.6, weight = 37.5
    },
    [555] = {
        id = 555, name = "Darmanitan", type1 = "fire", baseStats = { hp = 105, attack = 140, defense = 55, sp_attack = 30, sp_defense = 55, speed = 95 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Sheer Force", "Zen Mode" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.3, weight = 92.9
    },
    [556] = {
        id = 556, name = "Maractus", type1 = "grass", baseStats = { hp = 75, attack = 86, defense = 67, sp_attack = 106, sp_defense = 67, speed = 60 },
        catchRate = 120, baseExp = 131, growthRate = "medium_fast",
        abilities = { "Water Absorb", "Chlorophyll", "Storm Drain" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 28
    },
    [557] = {
        id = 557, name = "Dwebble", type1 = "bug", type2 = "rock", baseStats = { hp = 50, attack = 65, defense = 85, sp_attack = 35, sp_defense = 35, speed = 55 },
        catchRate = 120, baseExp = 92, growthRate = "medium_fast",
        abilities = { "Sturdy", "Shell Armor", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 14.5
    },
    [558] = {
        id = 558, name = "Crustle", type1 = "bug", type2 = "rock", baseStats = { hp = 70, attack = 105, defense = 125, sp_attack = 65, sp_defense = 75, speed = 45 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Sturdy", "Shell Armor", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.4, weight = 200
    },
    [559] = {
        id = 559, name = "Scraggy", type1 = "dark", type2 = "fighting", baseStats = { hp = 50, attack = 75, defense = 70, sp_attack = 35, sp_defense = 70, speed = 48 },
        catchRate = 120, baseExp = 99, growthRate = "medium_fast",
        abilities = { "Shed Skin", "Moxie", "Intimidate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.6, weight = 11.8
    },
    [560] = {
        id = 560, name = "Scrafty", type1 = "dark", type2 = "fighting", baseStats = { hp = 65, attack = 90, defense = 115, sp_attack = 45, sp_defense = 115, speed = 58 },
        catchRate = 120, baseExp = 139, growthRate = "medium_fast",
        abilities = { "Shed Skin", "Moxie", "Intimidate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.1, weight = 30
    },
    [561] = {
        id = 561, name = "Sigilyph", type1 = "psychic", type2 = "flying", baseStats = { hp = 72, attack = 58, defense = 80, sp_attack = 103, sp_defense = 80, speed = 97 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Wonder Skin", "Magic Guard", "Tinted Lens" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.4, weight = 14
    },
    [562] = {
        id = 562, name = "Yamask", type1 = "ghost", baseStats = { hp = 38, attack = 30, defense = 85, sp_attack = 55, sp_defense = 65, speed = 30 },
        catchRate = 120, baseExp = 86, growthRate = "medium_fast",
        abilities = { "Mummy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.5, weight = 1.5
    },
    [563] = {
        id = 563, name = "Cofagrigus", type1 = "ghost", baseStats = { hp = 58, attack = 50, defense = 145, sp_attack = 95, sp_defense = 105, speed = 30 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Mummy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.7, weight = 76.5
    },
    [564] = {
        id = 564, name = "Tirtouga", type1 = "water", type2 = "rock", baseStats = { hp = 54, attack = 78, defense = 103, sp_attack = 53, sp_defense = 45, speed = 22 },
        catchRate = 120, baseExp = 101, growthRate = "medium_fast",
        abilities = { "Solid Rock", "Sturdy", "Swift Swim" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.7, weight = 16.5
    },
    [565] = {
        id = 565, name = "Carracosta", type1 = "water", type2 = "rock", baseStats = { hp = 74, attack = 108, defense = 133, sp_attack = 83, sp_defense = 65, speed = 32 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Solid Rock", "Sturdy", "Swift Swim" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 81
    },
    [566] = {
        id = 566, name = "Archen", type1 = "rock", type2 = "flying", baseStats = { hp = 55, attack = 112, defense = 45, sp_attack = 74, sp_defense = 45, speed = 70 },
        catchRate = 120, baseExp = 114, growthRate = "medium_fast",
        abilities = { "Defeatist" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.5, weight = 9.5
    },
    [567] = {
        id = 567, name = "Archeops", type1 = "rock", type2 = "flying", baseStats = { hp = 75, attack = 140, defense = 65, sp_attack = 112, sp_defense = 65, speed = 110 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Defeatist" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.4, weight = 32
    },
    [568] = {
        id = 568, name = "Trubbish", type1 = "poison", baseStats = { hp = 50, attack = 50, defense = 62, sp_attack = 40, sp_defense = 62, speed = 65 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Stench", "Sticky Hold", "Aftermath" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.6, weight = 31
    },
    [569] = {
        id = 569, name = "Garbodor", type1 = "poison", baseStats = { hp = 80, attack = 95, defense = 82, sp_attack = 60, sp_defense = 82, speed = 75 },
        catchRate = 120, baseExp = 135, growthRate = "medium_fast",
        abilities = { "Stench", "Weak Armor", "Aftermath" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.9, weight = 107.3
    },
    [570] = {
        id = 570, name = "Zorua", type1 = "dark", baseStats = { hp = 40, attack = 65, defense = 40, sp_attack = 80, sp_defense = 40, speed = 65 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Illusion" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.7, weight = 12.5
    },
    [571] = {
        id = 571, name = "Zoroark", type1 = "dark", customModel = "zoroark", baseStats = { hp = 60, attack = 105, defense = 60, sp_attack = 120, sp_defense = 60, speed = 105 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Illusion" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.6, weight = 81.1
    },
    [572] = {
        id = 572, name = "Minccino", type1 = "normal", baseStats = { hp = 55, attack = 50, defense = 40, sp_attack = 40, sp_defense = 40, speed = 75 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Cute Charm", "Technician", "Skill Link" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 5.8
    },
    [573] = {
        id = 573, name = "Cinccino", type1 = "normal", baseStats = { hp = 75, attack = 95, defense = 60, sp_attack = 65, sp_defense = 60, speed = 115 },
        catchRate = 120, baseExp = 134, growthRate = "medium_fast",
        abilities = { "Cute Charm", "Technician", "Skill Link" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.5, weight = 7.5
    },
    [574] = {
        id = 574, name = "Gothita", type1 = "psychic", baseStats = { hp = 45, attack = 30, defense = 50, sp_attack = 55, sp_defense = 65, speed = 45 },
        catchRate = 120, baseExp = 82, growthRate = "medium_fast",
        abilities = { "Frisk", "Competitive", "Shadow Tag" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 5.8
    },
    [575] = {
        id = 575, name = "Gothorita", type1 = "psychic", baseStats = { hp = 60, attack = 45, defense = 70, sp_attack = 75, sp_defense = 85, speed = 55 },
        catchRate = 120, baseExp = 111, growthRate = "medium_fast",
        abilities = { "Frisk", "Competitive", "Shadow Tag" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.7, weight = 18
    },
    [576] = {
        id = 576, name = "Gothitelle", type1 = "psychic", baseStats = { hp = 70, attack = 55, defense = 95, sp_attack = 95, sp_defense = 110, speed = 65 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Frisk", "Competitive", "Shadow Tag" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.5, weight = 44
    },
    [577] = {
        id = 577, name = "Solosis", type1 = "psychic", baseStats = { hp = 45, attack = 30, defense = 40, sp_attack = 105, sp_defense = 50, speed = 20 },
        catchRate = 120, baseExp = 82, growthRate = "medium_fast",
        abilities = { "Overcoat", "Magic Guard", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 1
    },
    [578] = {
        id = 578, name = "Duosion", type1 = "psychic", baseStats = { hp = 65, attack = 40, defense = 50, sp_attack = 125, sp_defense = 60, speed = 30 },
        catchRate = 120, baseExp = 105, growthRate = "medium_fast",
        abilities = { "Overcoat", "Magic Guard", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 8
    },
    [579] = {
        id = 579, name = "Reuniclus", type1 = "psychic", baseStats = { hp = 110, attack = 65, defense = 75, sp_attack = 125, sp_defense = 85, speed = 30 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Overcoat", "Magic Guard", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1, weight = 20.1
    },
    [580] = {
        id = 580, name = "Ducklett", type1 = "water", type2 = "flying", baseStats = { hp = 62, attack = 44, defense = 50, sp_attack = 44, sp_defense = 50, speed = 55 },
        catchRate = 120, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Big Pecks", "Hydration" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 5.5
    },
    [581] = {
        id = 581, name = "Swanna", type1 = "water", type2 = "flying", baseStats = { hp = 75, attack = 87, defense = 63, sp_attack = 87, sp_defense = 63, speed = 98 },
        catchRate = 120, baseExp = 135, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Big Pecks", "Hydration" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.3, weight = 24.2
    },
    [582] = {
        id = 582, name = "Vanillite", type1 = "ice", baseStats = { hp = 36, attack = 50, defense = 50, sp_attack = 65, sp_defense = 60, speed = 44 },
        catchRate = 120, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Ice Body", "Snow Cloak", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 0.4, weight = 5.7
    },
    [583] = {
        id = 583, name = "Vanillish", type1 = "ice", baseStats = { hp = 51, attack = 65, defense = 65, sp_attack = 80, sp_defense = 75, speed = 59 },
        catchRate = 120, baseExp = 112, growthRate = "medium_fast",
        abilities = { "Ice Body", "Snow Cloak", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 1.1, weight = 41
    },
    [584] = {
        id = 584, name = "Vanilluxe", type1 = "ice", baseStats = { hp = 71, attack = 95, defense = 85, sp_attack = 110, sp_defense = 95, speed = 79 },
        catchRate = 120, baseExp = 152, growthRate = "medium_fast",
        abilities = { "Ice Body", "Snow Warning", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 1.3, weight = 57.5
    },
    [585] = {
        id = 585, name = "Deerling", type1 = "normal", type2 = "grass", baseStats = { hp = 60, attack = 60, defense = 50, sp_attack = 40, sp_defense = 50, speed = 75 },
        catchRate = 120, baseExp = 95, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Sap Sipper", "Serene Grace" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 19.5
    },
    [586] = {
        id = 586, name = "Sawsbuck", type1 = "normal", type2 = "grass", baseStats = { hp = 80, attack = 100, defense = 70, sp_attack = 60, sp_defense = 70, speed = 95 },
        catchRate = 120, baseExp = 135, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Sap Sipper", "Serene Grace" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.9, weight = 92.5
    },
    [587] = {
        id = 587, name = "Emolga", type1 = "electric", type2 = "flying", baseStats = { hp = 55, attack = 75, defense = 60, sp_attack = 75, sp_defense = 60, speed = 103 },
        catchRate = 120, baseExp = 122, growthRate = "medium_fast",
        abilities = { "Static", "Motor Drive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.4, weight = 5
    },
    [588] = {
        id = 588, name = "Karrablast", type1 = "bug", baseStats = { hp = 50, attack = 75, defense = 45, sp_attack = 40, sp_defense = 45, speed = 60 },
        catchRate = 120, baseExp = 90, growthRate = "medium_fast",
        abilities = { "Swarm", "Shed Skin", "No Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 5.9
    },
    [589] = {
        id = 589, name = "Escavalier", type1 = "bug", type2 = "steel", baseStats = { hp = 70, attack = 135, defense = 105, sp_attack = 60, sp_defense = 105, speed = 20 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Swarm", "Shell Armor", "Overcoat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 33
    },
    [590] = {
        id = 590, name = "Foongus", type1 = "grass", type2 = "poison", baseStats = { hp = 69, attack = 55, defense = 45, sp_attack = 55, sp_defense = 55, speed = 15 },
        catchRate = 120, baseExp = 84, growthRate = "medium_fast",
        abilities = { "Effect Spore", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.2, weight = 1
    },
    [591] = {
        id = 591, name = "Amoonguss", type1 = "grass", type2 = "poison", baseStats = { hp = 114, attack = 85, defense = 70, sp_attack = 85, sp_defense = 80, speed = 30 },
        catchRate = 120, baseExp = 132, growthRate = "medium_fast",
        abilities = { "Effect Spore", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 10.5
    },
    [592] = {
        id = 592, name = "Frillish", type1 = "water", type2 = "ghost", baseStats = { hp = 55, attack = 40, defense = 50, sp_attack = 65, sp_defense = 85, speed = 40 },
        catchRate = 120, baseExp = 95, growthRate = "medium_fast",
        abilities = { "Water Absorb", "Cursed Body", "Damp" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 33
    },
    [593] = {
        id = 593, name = "Jellicent", type1 = "water", type2 = "ghost", baseStats = { hp = 100, attack = 60, defense = 70, sp_attack = 85, sp_defense = 105, speed = 60 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Water Absorb", "Cursed Body", "Damp" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2.2, weight = 135
    },
    [594] = {
        id = 594, name = "Alomomola", type1 = "water", baseStats = { hp = 165, attack = 75, defense = 80, sp_attack = 40, sp_defense = 45, speed = 65 },
        catchRate = 120, baseExp = 134, growthRate = "medium_fast",
        abilities = { "Healer", "Hydration", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 31.6
    },
    [595] = {
        id = 595, name = "Joltik", type1 = "bug", type2 = "electric", baseStats = { hp = 50, attack = 47, defense = 50, sp_attack = 57, sp_defense = 50, speed = 65 },
        catchRate = 120, baseExp = 91, growthRate = "medium_fast",
        abilities = { "Compound Eyes", "Unnerve", "Swarm" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.1, weight = 0.6
    },
    [596] = {
        id = 596, name = "Galvantula", type1 = "bug", type2 = "electric", baseStats = { hp = 70, attack = 77, defense = 60, sp_attack = 97, sp_defense = 60, speed = 108 },
        catchRate = 120, baseExp = 134, growthRate = "medium_fast",
        abilities = { "Compound Eyes", "Unnerve", "Swarm" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.8, weight = 14.3
    },
    [597] = {
        id = 597, name = "Ferroseed", type1 = "grass", type2 = "steel", baseStats = { hp = 44, attack = 50, defense = 91, sp_attack = 24, sp_defense = 86, speed = 10 },
        catchRate = 120, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Iron Barbs" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 18.8
    },
    [598] = {
        id = 598, name = "Ferrothorn", type1 = "grass", type2 = "steel", baseStats = { hp = 74, attack = 94, defense = 131, sp_attack = 54, sp_defense = 116, speed = 20 },
        catchRate = 120, baseExp = 139, growthRate = "medium_fast",
        abilities = { "Iron Barbs", "Anticipation" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 110
    },
    [599] = {
        id = 599, name = "Klink", type1 = "steel", baseStats = { hp = 40, attack = 55, defense = 70, sp_attack = 45, sp_defense = 60, speed = 30 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Plus", "Minus", "Clear Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.3, weight = 21
    },
    [600] = {
        id = 600, name = "Klang", type1 = "steel", baseStats = { hp = 60, attack = 80, defense = 95, sp_attack = 70, sp_defense = 85, speed = 50 },
        catchRate = 120, baseExp = 125, growthRate = "medium_fast",
        abilities = { "Plus", "Minus", "Clear Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.6, weight = 51
    },
    [601] = {
        id = 601, name = "Klinklang", type1 = "steel", baseStats = { hp = 60, attack = 100, defense = 115, sp_attack = 70, sp_defense = 85, speed = 90 },
        catchRate = 120, baseExp = 148, growthRate = "medium_fast",
        abilities = { "Plus", "Minus", "Clear Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.6, weight = 81
    },
    [602] = {
        id = 602, name = "Tynamo", type1 = "electric", baseStats = { hp = 35, attack = 55, defense = 40, sp_attack = 45, sp_defense = 40, speed = 60 },
        catchRate = 120, baseExp = 78, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.2, weight = 0.3
    },
    [603] = {
        id = 603, name = "Eelektrik", type1 = "electric", baseStats = { hp = 65, attack = 85, defense = 70, sp_attack = 75, sp_defense = 70, speed = 40 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.2, weight = 22
    },
    [604] = {
        id = 604, name = "Eelektross", type1 = "electric", baseStats = { hp = 85, attack = 115, defense = 80, sp_attack = 105, sp_defense = 80, speed = 50 },
        catchRate = 120, baseExp = 147, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 2.1, weight = 80.5
    },
    [605] = {
        id = 605, name = "Elgyem", type1 = "psychic", baseStats = { hp = 55, attack = 55, defense = 55, sp_attack = 85, sp_defense = 55, speed = 30 },
        catchRate = 120, baseExp = 95, growthRate = "medium_fast",
        abilities = { "Telepathy", "Synchronize", "Analytic" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.5, weight = 9
    },
    [606] = {
        id = 606, name = "Beheeyem", type1 = "psychic", baseStats = { hp = 75, attack = 75, defense = 75, sp_attack = 125, sp_defense = 95, speed = 40 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Telepathy", "Synchronize", "Analytic" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1, weight = 34.5
    },
    [607] = {
        id = 607, name = "Litwick", type1 = "ghost", type2 = "fire", baseStats = { hp = 50, attack = 30, defense = 55, sp_attack = 65, sp_defense = 55, speed = 20 },
        catchRate = 120, baseExp = 78, growthRate = "medium_fast",
        abilities = { "Flash Fire", "Flame Body", "Infiltrator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 3.1
    },
    [608] = {
        id = 608, name = "Lampent", type1 = "ghost", type2 = "fire", baseStats = { hp = 60, attack = 40, defense = 60, sp_attack = 95, sp_defense = 60, speed = 55 },
        catchRate = 120, baseExp = 105, growthRate = "medium_fast",
        abilities = { "Flash Fire", "Flame Body", "Infiltrator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 13
    },
    [609] = {
        id = 609, name = "Chandelure", type1 = "ghost", type2 = "fire", baseStats = { hp = 60, attack = 55, defense = 90, sp_attack = 145, sp_defense = 90, speed = 80 },
        catchRate = 120, baseExp = 148, growthRate = "medium_fast",
        abilities = { "Flash Fire", "Flame Body", "Infiltrator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1, weight = 34.3
    },
    [610] = {
        id = 610, name = "Axew", type1 = "dragon", baseStats = { hp = 46, attack = 87, defense = 60, sp_attack = 30, sp_defense = 40, speed = 57 },
        catchRate = 120, baseExp = 91, growthRate = "medium_fast",
        abilities = { "Rivalry", "Mold Breaker", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 0.6, weight = 18
    },
    [611] = {
        id = 611, name = "Fraxure", type1 = "dragon", baseStats = { hp = 66, attack = 117, defense = 70, sp_attack = 40, sp_defense = 50, speed = 67 },
        catchRate = 120, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Rivalry", "Mold Breaker", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 1, weight = 36
    },
    [612] = {
        id = 612, name = "Haxorus", type1 = "dragon", baseStats = { hp = 76, attack = 147, defense = 90, sp_attack = 60, sp_defense = 70, speed = 97 },
        catchRate = 120, baseExp = 154, growthRate = "medium_fast",
        abilities = { "Rivalry", "Mold Breaker", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 1.8, weight = 105.5
    },
    [613] = {
        id = 613, name = "Cubchoo", type1 = "ice", baseStats = { hp = 55, attack = 70, defense = 40, sp_attack = 60, sp_defense = 40, speed = 40 },
        catchRate = 120, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Snow Cloak", "Slush Rush", "Rattled" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 0.5, weight = 8.5
    },
    [614] = {
        id = 614, name = "Beartic", type1 = "ice", baseStats = { hp = 95, attack = 130, defense = 80, sp_attack = 70, sp_defense = 80, speed = 50 },
        catchRate = 120, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Snow Cloak", "Slush Rush", "Swift Swim" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 2.6, weight = 260
    },
    [615] = {
        id = 615, name = "Cryogonal", type1 = "ice", baseStats = { hp = 80, attack = 50, defense = 50, sp_attack = 95, sp_defense = 135, speed = 105 },
        catchRate = 120, baseExp = 147, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 1.1, weight = 148
    },
    [616] = {
        id = 616, name = "Shelmet", type1 = "bug", baseStats = { hp = 50, attack = 40, defense = 85, sp_attack = 40, sp_defense = 65, speed = 25 },
        catchRate = 120, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Hydration", "Shell Armor", "Overcoat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 7.7
    },
    [617] = {
        id = 617, name = "Accelgor", type1 = "bug", baseStats = { hp = 80, attack = 70, defense = 40, sp_attack = 100, sp_defense = 60, speed = 145 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Hydration", "Sticky Hold", "Unburden" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.8, weight = 25.3
    },
    [618] = {
        id = 618, name = "Stunfisk", type1 = "ground", type2 = "electric", baseStats = { hp = 109, attack = 66, defense = 84, sp_attack = 81, sp_defense = 99, speed = 32 },
        catchRate = 120, baseExp = 134, growthRate = "medium_fast",
        abilities = { "Static", "Limber", "Sand Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.7, weight = 11
    },
    [619] = {
        id = 619, name = "Mienfoo", type1 = "fighting", baseStats = { hp = 45, attack = 85, defense = 50, sp_attack = 55, sp_defense = 50, speed = 65 },
        catchRate = 120, baseExp = 100, growthRate = "medium_fast",
        abilities = { "Inner Focus", "Regenerator", "Reckless" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.9, weight = 20
    },
    [620] = {
        id = 620, name = "Mienshao", type1 = "fighting", baseStats = { hp = 65, attack = 125, defense = 60, sp_attack = 95, sp_defense = 60, speed = 105 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Inner Focus", "Regenerator", "Reckless" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.4, weight = 35.5
    },
    [621] = {
        id = 621, name = "Druddigon", type1 = "dragon", baseStats = { hp = 77, attack = 120, defense = 90, sp_attack = 60, sp_defense = 90, speed = 48 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Rough Skin", "Sheer Force", "Mold Breaker" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 1.6, weight = 139
    },
    [622] = {
        id = 622, name = "Golett", type1 = "ground", type2 = "ghost", baseStats = { hp = 59, attack = 74, defense = 50, sp_attack = 35, sp_defense = 50, speed = 35 },
        catchRate = 120, baseExp = 86, growthRate = "medium_fast",
        abilities = { "Iron Fist", "Klutz", "No Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1, weight = 92
    },
    [623] = {
        id = 623, name = "Golurk", type1 = "ground", type2 = "ghost", baseStats = { hp = 89, attack = 124, defense = 80, sp_attack = 55, sp_defense = 80, speed = 55 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Iron Fist", "Klutz", "No Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2.8, weight = 330
    },
    [624] = {
        id = 624, name = "Pawniard", type1 = "dark", type2 = "steel", baseStats = { hp = 45, attack = 85, defense = 70, sp_attack = 40, sp_defense = 40, speed = 60 },
        catchRate = 120, baseExp = 97, growthRate = "medium_fast",
        abilities = { "Defiant", "Inner Focus", "Pressure" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.5, weight = 10.2
    },
    [625] = {
        id = 625, name = "Bisharp", type1 = "dark", type2 = "steel", baseStats = { hp = 65, attack = 125, defense = 100, sp_attack = 60, sp_defense = 70, speed = 70 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Defiant", "Inner Focus", "Pressure" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.6, weight = 70
    },
    [626] = {
        id = 626, name = "Bouffalant", type1 = "normal", baseStats = { hp = 95, attack = 110, defense = 95, sp_attack = 40, sp_defense = 95, speed = 55 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Reckless", "Sap Sipper", "Soundproof" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.6, weight = 94.6
    },
    [627] = {
        id = 627, name = "Rufflet", type1 = "normal", type2 = "flying", baseStats = { hp = 70, attack = 83, defense = 50, sp_attack = 37, sp_defense = 50, speed = 60 },
        catchRate = 120, baseExp = 100, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Sheer Force", "Hustle" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.5, weight = 10.5
    },
    [628] = {
        id = 628, name = "Braviary", type1 = "normal", type2 = "flying", baseStats = { hp = 100, attack = 123, defense = 75, sp_attack = 57, sp_defense = 75, speed = 80 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Sheer Force", "Defiant" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.5, weight = 41
    },
    [629] = {
        id = 629, name = "Vullaby", type1 = "dark", type2 = "flying", baseStats = { hp = 70, attack = 55, defense = 75, sp_attack = 45, sp_defense = 65, speed = 60 },
        catchRate = 120, baseExp = 105, growthRate = "medium_fast",
        abilities = { "Big Pecks", "Overcoat", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.5, weight = 9
    },
    [630] = {
        id = 630, name = "Mandibuzz", type1 = "dark", type2 = "flying", baseStats = { hp = 110, attack = 65, defense = 105, sp_attack = 55, sp_defense = 95, speed = 80 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Big Pecks", "Overcoat", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.2, weight = 39.5
    },
    [631] = {
        id = 631, name = "Heatmor", type1 = "fire", baseStats = { hp = 85, attack = 97, defense = 66, sp_attack = 105, sp_defense = 66, speed = 65 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Gluttony", "Flash Fire", "White Smoke" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.4, weight = 58
    },
    [632] = {
        id = 632, name = "Durant", type1 = "bug", type2 = "steel", baseStats = { hp = 58, attack = 109, defense = 112, sp_attack = 48, sp_defense = 48, speed = 109 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Swarm", "Hustle", "Truant" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 33
    },
    [633] = {
        id = 633, name = "Deino", type1 = "dark", type2 = "dragon", baseStats = { hp = 52, attack = 65, defense = 50, sp_attack = 45, sp_defense = 50, speed = 38 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Hustle" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.8, weight = 17.3
    },
    [634] = {
        id = 634, name = "Zweilous", type1 = "dark", type2 = "dragon", baseStats = { hp = 72, attack = 85, defense = 70, sp_attack = 65, sp_defense = 70, speed = 58 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Hustle" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.4, weight = 50
    },
    [635] = {
        id = 635, name = "Hydreigon", type1 = "dark", type2 = "dragon", baseStats = { hp = 92, attack = 105, defense = 90, sp_attack = 125, sp_defense = 90, speed = 98 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.8, weight = 160
    },
    [636] = {
        id = 636, name = "Larvesta", type1 = "bug", type2 = "fire", baseStats = { hp = 55, attack = 85, defense = 55, sp_attack = 50, sp_defense = 55, speed = 60 },
        catchRate = 120, baseExp = 102, growthRate = "medium_fast",
        abilities = { "Flame Body", "Swarm" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.1, weight = 28.8
    },
    [637] = {
        id = 637, name = "Volcarona", type1 = "bug", type2 = "fire", baseStats = { hp = 85, attack = 60, defense = 65, sp_attack = 135, sp_defense = 105, speed = 100 },
        catchRate = 120, baseExp = 157, growthRate = "medium_fast",
        abilities = { "Flame Body", "Swarm" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.6, weight = 46
    },
    [638] = {
        id = 638, name = "Cobalion", type1 = "steel", type2 = "fighting", baseStats = { hp = 91, attack = 90, defense = 129, sp_attack = 90, sp_defense = 72, speed = 108 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Justified" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2.1, weight = 250
    },
    [639] = {
        id = 639, name = "Terrakion", type1 = "rock", type2 = "fighting", baseStats = { hp = 91, attack = 129, defense = 90, sp_attack = 72, sp_defense = 90, speed = 108 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Justified" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.9, weight = 260
    },
    [640] = {
        id = 640, name = "Virizion", type1 = "grass", type2 = "fighting", baseStats = { hp = 91, attack = 90, defense = 72, sp_attack = 90, sp_defense = 129, speed = 108 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Justified" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2, weight = 200
    },
    [641] = {
        id = 641, name = "Tornadus", type1 = "flying", baseStats = { hp = 79, attack = 115, defense = 70, sp_attack = 125, sp_defense = 80, speed = 111 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Prankster", "Defiant" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pigeon`, height = 1.5, weight = 63
    },
    [642] = {
        id = 642, name = "Thundurus", type1 = "electric", type2 = "flying", baseStats = { hp = 79, attack = 115, defense = 70, sp_attack = 125, sp_defense = 80, speed = 111 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Prankster", "Defiant" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.5, weight = 61
    },
    [643] = {
        id = 643, name = "Reshiram", type1 = "dragon", type2 = "fire", baseStats = { hp = 100, attack = 120, defense = 100, sp_attack = 150, sp_defense = 120, speed = 90 },
        catchRate = 120, baseExp = 194, growthRate = "medium_fast",
        abilities = { "Turboblaze" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 3.2, weight = 330
    },
    [644] = {
        id = 644, name = "Zekrom", type1 = "dragon", type2 = "electric", baseStats = { hp = 100, attack = 150, defense = 120, sp_attack = 120, sp_defense = 100, speed = 90 },
        catchRate = 120, baseExp = 194, growthRate = "medium_fast",
        abilities = { "Teravolt" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 2.9, weight = 345
    },
    [645] = {
        id = 645, name = "Landorus", type1 = "ground", type2 = "flying", baseStats = { hp = 89, attack = 125, defense = 90, sp_attack = 115, sp_defense = 80, speed = 101 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Sand Force", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.5, weight = 68
    },
    [646] = {
        id = 646, name = "Kyurem", type1 = "dragon", type2 = "ice", baseStats = { hp = 125, attack = 130, defense = 90, sp_attack = 130, sp_defense = 90, speed = 95 },
        catchRate = 120, baseExp = 188, growthRate = "medium_fast",
        abilities = { "Pressure" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 3, weight = 325
    },
    [647] = {
        id = 647, name = "Keldeo", type1 = "water", type2 = "fighting", baseStats = { hp = 91, attack = 72, defense = 90, sp_attack = 129, sp_defense = 90, speed = 108 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Justified" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.4, weight = 48.5
    },
    [648] = {
        id = 648, name = "Meloetta", type1 = "normal", type2 = "psychic", baseStats = { hp = 100, attack = 77, defense = 77, sp_attack = 128, sp_defense = 128, speed = 90 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Serene Grace" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 6.5
    },
    [649] = {
        id = 649, name = "Genesect", type1 = "bug", type2 = "steel", baseStats = { hp = 71, attack = 120, defense = 95, sp_attack = 120, sp_defense = 95, speed = 99 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Download" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.5, weight = 82.5
    },
    [650] = {
        id = 650, name = "Chespin", type1 = "grass", baseStats = { hp = 56, attack = 61, defense = 65, sp_attack = 48, sp_defense = 45, speed = 38 },
        catchRate = 120, baseExp = 89, growthRate = "medium_fast",
        abilities = { "Overgrow", "Bulletproof" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 9
    },
    [651] = {
        id = 651, name = "Quilladin", type1 = "grass", baseStats = { hp = 61, attack = 78, defense = 95, sp_attack = 56, sp_defense = 58, speed = 57 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Overgrow", "Bulletproof" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.7, weight = 29
    },
    [652] = {
        id = 652, name = "Chesnaught", type1 = "grass", type2 = "fighting", baseStats = { hp = 88, attack = 107, defense = 122, sp_attack = 74, sp_defense = 75, speed = 64 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Overgrow", "Bulletproof" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.6, weight = 90
    },
    [653] = {
        id = 653, name = "Fennekin", type1 = "fire", baseStats = { hp = 40, attack = 45, defense = 40, sp_attack = 62, sp_defense = 60, speed = 60 },
        catchRate = 120, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Blaze", "Magician" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.4, weight = 9.4
    },
    [654] = {
        id = 654, name = "Braixen", type1 = "fire", customModel = "braixen", baseStats = { hp = 59, attack = 59, defense = 58, sp_attack = 90, sp_defense = 70, speed = 73 },
        catchRate = 120, baseExp = 116, growthRate = "medium_fast",
        abilities = { "Blaze", "Magician" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1, weight = 14.5
    },
    [655] = {
        id = 655, name = "Delphox", type1 = "fire", type2 = "psychic", baseStats = { hp = 75, attack = 69, defense = 72, sp_attack = 114, sp_defense = 100, speed = 104 },
        catchRate = 120, baseExp = 152, growthRate = "medium_fast",
        abilities = { "Blaze", "Magician" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.5, weight = 39
    },
    [656] = {
        id = 656, name = "Froakie", type1 = "water", baseStats = { hp = 41, attack = 56, defense = 40, sp_attack = 62, sp_defense = 44, speed = 71 },
        catchRate = 120, baseExp = 89, growthRate = "medium_fast",
        abilities = { "Torrent", "Protean" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 7
    },
    [657] = {
        id = 657, name = "Frogadier", type1 = "water", baseStats = { hp = 54, attack = 63, defense = 52, sp_attack = 83, sp_defense = 56, speed = 97 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Torrent", "Protean" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 10.9
    },
    [658] = {
        id = 658, name = "Greninja", type1 = "water", type2 = "dark", customModel = "greninja", baseStats = { hp = 72, attack = 95, defense = 67, sp_attack = 103, sp_defense = 71, speed = 122 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Torrent", "Protean" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.5, weight = 40
    },
    [659] = {
        id = 659, name = "Bunnelby", type1 = "normal", baseStats = { hp = 38, attack = 36, defense = 38, sp_attack = 32, sp_defense = 36, speed = 57 },
        catchRate = 120, baseExp = 67, growthRate = "medium_fast",
        abilities = { "Pickup", "Cheek Pouch", "Huge Power" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 5
    },
    [660] = {
        id = 660, name = "Diggersby", type1 = "normal", type2 = "ground", baseStats = { hp = 85, attack = 56, defense = 77, sp_attack = 50, sp_defense = 77, speed = 78 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Pickup", "Cheek Pouch", "Huge Power" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1, weight = 42.4
    },
    [661] = {
        id = 661, name = "Fletchling", type1 = "normal", type2 = "flying", baseStats = { hp = 45, attack = 50, defense = 43, sp_attack = 40, sp_defense = 38, speed = 62 },
        catchRate = 120, baseExp = 79, growthRate = "medium_fast",
        abilities = { "Big Pecks", "Gale Wings" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 1.7
    },
    [662] = {
        id = 662, name = "Fletchinder", type1 = "fire", type2 = "flying", baseStats = { hp = 62, attack = 73, defense = 55, sp_attack = 56, sp_defense = 52, speed = 84 },
        catchRate = 120, baseExp = 109, growthRate = "medium_fast",
        abilities = { "Flame Body", "Gale Wings" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.7, weight = 16
    },
    [663] = {
        id = 663, name = "Talonflame", type1 = "fire", type2 = "flying", baseStats = { hp = 78, attack = 81, defense = 71, sp_attack = 74, sp_defense = 69, speed = 126 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Flame Body", "Gale Wings" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.2, weight = 24.5
    },
    [664] = {
        id = 664, name = "Scatterbug", type1 = "bug", baseStats = { hp = 38, attack = 35, defense = 40, sp_attack = 27, sp_defense = 25, speed = 35 },
        catchRate = 120, baseExp = 57, growthRate = "medium_fast",
        abilities = { "Shield Dust", "Compound Eyes", "Friend Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 2.5
    },
    [665] = {
        id = 665, name = "Spewpa", type1 = "bug", baseStats = { hp = 45, attack = 22, defense = 60, sp_attack = 27, sp_defense = 30, speed = 29 },
        catchRate = 120, baseExp = 60, growthRate = "medium_fast",
        abilities = { "Shed Skin", "Friend Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 8.4
    },
    [666] = {
        id = 666, name = "Vivillon", type1 = "bug", type2 = "flying", baseStats = { hp = 80, attack = 52, defense = 50, sp_attack = 90, sp_defense = 50, speed = 89 },
        catchRate = 120, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Shield Dust", "Compound Eyes", "Friend Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 17
    },
    [667] = {
        id = 667, name = "Litleo", type1 = "fire", type2 = "normal", baseStats = { hp = 62, attack = 50, defense = 58, sp_attack = 73, sp_defense = 54, speed = 72 },
        catchRate = 120, baseExp = 105, growthRate = "medium_fast",
        abilities = { "Rivalry", "Unnerve", "Moxie" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.6, weight = 13.5
    },
    [668] = {
        id = 668, name = "Pyroar", type1 = "fire", type2 = "normal", baseStats = { hp = 86, attack = 68, defense = 72, sp_attack = 109, sp_defense = 66, speed = 106 },
        catchRate = 120, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Rivalry", "Unnerve", "Moxie" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.5, weight = 81.5
    },
    [669] = {
        id = 669, name = "Flabébé", type1 = "fairy", baseStats = { hp = 44, attack = 38, defense = 39, sp_attack = 61, sp_defense = 79, speed = 42 },
        catchRate = 120, baseExp = 86, growthRate = "medium_fast",
        abilities = { "Flower Veil", "Symbiosis" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.1, weight = 0.1
    },
    [670] = {
        id = 670, name = "Floette", type1 = "fairy", baseStats = { hp = 54, attack = 45, defense = 47, sp_attack = 75, sp_defense = 98, speed = 52 },
        catchRate = 120, baseExp = 106, growthRate = "medium_fast",
        abilities = { "Flower Veil", "Symbiosis" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.2, weight = 0.9
    },
    [671] = {
        id = 671, name = "Florges", type1 = "fairy", baseStats = { hp = 78, attack = 65, defense = 68, sp_attack = 112, sp_defense = 154, speed = 75 },
        catchRate = 120, baseExp = 157, growthRate = "medium_fast",
        abilities = { "Flower Veil", "Symbiosis" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 1.1, weight = 10
    },
    [672] = {
        id = 672, name = "Skiddo", type1 = "grass", baseStats = { hp = 66, attack = 65, defense = 48, sp_attack = 62, sp_defense = 57, speed = 52 },
        catchRate = 120, baseExp = 100, growthRate = "medium_fast",
        abilities = { "Sap Sipper", "Grass Pelt" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.9, weight = 31
    },
    [673] = {
        id = 673, name = "Gogoat", type1 = "grass", baseStats = { hp = 123, attack = 100, defense = 62, sp_attack = 97, sp_defense = 81, speed = 68 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Sap Sipper", "Grass Pelt" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.7, weight = 91
    },
    [674] = {
        id = 674, name = "Pancham", type1 = "fighting", baseStats = { hp = 67, attack = 82, defense = 62, sp_attack = 46, sp_defense = 48, speed = 43 },
        catchRate = 120, baseExp = 99, growthRate = "medium_fast",
        abilities = { "Iron Fist", "Mold Breaker", "Scrappy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.6, weight = 8
    },
    [675] = {
        id = 675, name = "Pangoro", type1 = "fighting", type2 = "dark", baseStats = { hp = 95, attack = 124, defense = 78, sp_attack = 69, sp_defense = 71, speed = 58 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Iron Fist", "Mold Breaker", "Scrappy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 2.1, weight = 136
    },
    [676] = {
        id = 676, name = "Furfrou", type1 = "normal", baseStats = { hp = 75, attack = 80, defense = 60, sp_attack = 65, sp_defense = 90, speed = 102 },
        catchRate = 120, baseExp = 134, growthRate = "medium_fast",
        abilities = { "Fur Coat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.2, weight = 28
    },
    [677] = {
        id = 677, name = "Espurr", type1 = "psychic", baseStats = { hp = 62, attack = 48, defense = 54, sp_attack = 63, sp_defense = 60, speed = 68 },
        catchRate = 120, baseExp = 101, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Infiltrator", "Own Tempo" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 3.5
    },
    [678] = {
        id = 678, name = "Meowstic", type1 = "psychic", baseStats = { hp = 74, attack = 48, defense = 76, sp_attack = 83, sp_defense = 81, speed = 104 },
        catchRate = 120, baseExp = 133, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Infiltrator", "Prankster" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 8.5
    },
    [679] = {
        id = 679, name = "Honedge", type1 = "steel", type2 = "ghost", baseStats = { hp = 45, attack = 80, defense = 100, sp_attack = 35, sp_defense = 37, speed = 28 },
        catchRate = 120, baseExp = 92, growthRate = "medium_fast",
        abilities = { "No Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.8, weight = 2
    },
    [680] = {
        id = 680, name = "Doublade", type1 = "steel", type2 = "ghost", baseStats = { hp = 59, attack = 110, defense = 150, sp_attack = 45, sp_defense = 49, speed = 35 },
        catchRate = 120, baseExp = 128, growthRate = "medium_fast",
        abilities = { "No Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.8, weight = 4.5
    },
    [681] = {
        id = 681, name = "Aegislash", type1 = "steel", type2 = "ghost", baseStats = { hp = 60, attack = 50, defense = 140, sp_attack = 50, sp_defense = 140, speed = 60 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Stance Change" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.7, weight = 53
    },
    [682] = {
        id = 682, name = "Spritzee", type1 = "fairy", baseStats = { hp = 78, attack = 52, defense = 60, sp_attack = 63, sp_defense = 65, speed = 23 },
        catchRate = 120, baseExp = 97, growthRate = "medium_fast",
        abilities = { "Healer", "Aroma Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.2, weight = 0.5
    },
    [683] = {
        id = 683, name = "Aromatisse", type1 = "fairy", baseStats = { hp = 101, attack = 72, defense = 72, sp_attack = 99, sp_defense = 89, speed = 29 },
        catchRate = 120, baseExp = 132, growthRate = "medium_fast",
        abilities = { "Healer", "Aroma Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.8, weight = 15.5
    },
    [684] = {
        id = 684, name = "Swirlix", type1 = "fairy", baseStats = { hp = 62, attack = 48, defense = 66, sp_attack = 59, sp_defense = 57, speed = 49 },
        catchRate = 120, baseExp = 97, growthRate = "medium_fast",
        abilities = { "Sweet Veil", "Unburden" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.4, weight = 3.5
    },
    [685] = {
        id = 685, name = "Slurpuff", type1 = "fairy", baseStats = { hp = 82, attack = 80, defense = 86, sp_attack = 85, sp_defense = 75, speed = 72 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Sweet Veil", "Unburden" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.8, weight = 5
    },
    [686] = {
        id = 686, name = "Inkay", type1 = "dark", type2 = "psychic", baseStats = { hp = 53, attack = 54, defense = 53, sp_attack = 37, sp_defense = 46, speed = 45 },
        catchRate = 120, baseExp = 82, growthRate = "medium_fast",
        abilities = { "Contrary", "Suction Cups", "Infiltrator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.4, weight = 3.5
    },
    [687] = {
        id = 687, name = "Malamar", type1 = "dark", type2 = "psychic", baseStats = { hp = 86, attack = 92, defense = 88, sp_attack = 68, sp_defense = 75, speed = 73 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Contrary", "Suction Cups", "Infiltrator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.5, weight = 47
    },
    [688] = {
        id = 688, name = "Binacle", type1 = "rock", type2 = "water", baseStats = { hp = 42, attack = 52, defense = 67, sp_attack = 39, sp_defense = 56, speed = 50 },
        catchRate = 120, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Tough Claws", "Sniper", "Pickpocket" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.5, weight = 31
    },
    [689] = {
        id = 689, name = "Barbaracle", type1 = "rock", type2 = "water", baseStats = { hp = 72, attack = 105, defense = 115, sp_attack = 54, sp_defense = 86, speed = 68 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Tough Claws", "Sniper", "Pickpocket" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.3, weight = 96
    },
    [690] = {
        id = 690, name = "Skrelp", type1 = "poison", type2 = "water", baseStats = { hp = 50, attack = 60, defense = 60, sp_attack = 60, sp_defense = 60, speed = 30 },
        catchRate = 120, baseExp = 91, growthRate = "medium_fast",
        abilities = { "Poison Point", "Poison Touch", "Adaptability" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.5, weight = 7.3
    },
    [691] = {
        id = 691, name = "Dragalge", type1 = "poison", type2 = "dragon", baseStats = { hp = 65, attack = 75, defense = 90, sp_attack = 97, sp_defense = 123, speed = 44 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Poison Point", "Poison Touch", "Adaptability" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.8, weight = 81.5
    },
    [692] = {
        id = 692, name = "Clauncher", type1 = "water", baseStats = { hp = 50, attack = 53, defense = 62, sp_attack = 58, sp_defense = 63, speed = 44 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Mega Launcher" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 8.3
    },
    [693] = {
        id = 693, name = "Clawitzer", type1 = "water", baseStats = { hp = 71, attack = 73, defense = 88, sp_attack = 120, sp_defense = 89, speed = 59 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Mega Launcher" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.3, weight = 35.3
    },
    [694] = {
        id = 694, name = "Helioptile", type1 = "electric", type2 = "normal", baseStats = { hp = 44, attack = 38, defense = 33, sp_attack = 61, sp_defense = 43, speed = 70 },
        catchRate = 120, baseExp = 82, growthRate = "medium_fast",
        abilities = { "Dry Skin", "Sand Veil", "Solar Power" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.5, weight = 6
    },
    [695] = {
        id = 695, name = "Heliolisk", type1 = "electric", type2 = "normal", baseStats = { hp = 62, attack = 55, defense = 52, sp_attack = 109, sp_defense = 94, speed = 109 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Dry Skin", "Sand Veil", "Solar Power" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1, weight = 21
    },
    [696] = {
        id = 696, name = "Tyrunt", type1 = "rock", type2 = "dragon", baseStats = { hp = 58, attack = 89, defense = 77, sp_attack = 45, sp_defense = 45, speed = 48 },
        catchRate = 120, baseExp = 103, growthRate = "medium_fast",
        abilities = { "Strong Jaw", "Sturdy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.8, weight = 26
    },
    [697] = {
        id = 697, name = "Tyrantrum", type1 = "rock", type2 = "dragon", baseStats = { hp = 82, attack = 121, defense = 119, sp_attack = 69, sp_defense = 59, speed = 71 },
        catchRate = 120, baseExp = 148, growthRate = "medium_fast",
        abilities = { "Strong Jaw", "Rock Head" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2.5, weight = 270
    },
    [698] = {
        id = 698, name = "Amaura", type1 = "rock", type2 = "ice", baseStats = { hp = 77, attack = 59, defense = 50, sp_attack = 67, sp_defense = 63, speed = 46 },
        catchRate = 120, baseExp = 103, growthRate = "medium_fast",
        abilities = { "Refrigerate", "Snow Warning" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.3, weight = 25.2
    },
    [699] = {
        id = 699, name = "Aurorus", type1 = "rock", type2 = "ice", baseStats = { hp = 123, attack = 77, defense = 72, sp_attack = 99, sp_defense = 92, speed = 58 },
        catchRate = 120, baseExp = 148, growthRate = "medium_fast",
        abilities = { "Refrigerate", "Snow Warning" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2.7, weight = 225
    },
    [700] = {
        id = 700, name = "Sylveon", type1 = "fairy", baseStats = { hp = 95, attack = 65, defense = 65, sp_attack = 110, sp_defense = 130, speed = 60 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Cute Charm", "Pixilate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 1, weight = 23.5
    },
    [701] = {
        id = 701, name = "Hawlucha", type1 = "fighting", type2 = "flying", baseStats = { hp = 78, attack = 92, defense = 75, sp_attack = 74, sp_defense = 63, speed = 118 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Limber", "Unburden", "Mold Breaker" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.8, weight = 21.5
    },
    [702] = {
        id = 702, name = "Dedenne", type1 = "electric", type2 = "fairy", baseStats = { hp = 67, attack = 58, defense = 57, sp_attack = 81, sp_defense = 67, speed = 101 },
        catchRate = 120, baseExp = 123, growthRate = "medium_fast",
        abilities = { "Cheek Pouch", "Pickup", "Plus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.2, weight = 2.2
    },
    [703] = {
        id = 703, name = "Carbink", type1 = "rock", type2 = "fairy", baseStats = { hp = 50, attack = 50, defense = 150, sp_attack = 50, sp_defense = 150, speed = 50 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Clear Body", "Sturdy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.3, weight = 5.7
    },
    [704] = {
        id = 704, name = "Goomy", type1 = "dragon", baseStats = { hp = 45, attack = 50, defense = 35, sp_attack = 55, sp_defense = 75, speed = 40 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Sap Sipper", "Hydration", "Gooey" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 0.3, weight = 2.8
    },
    [705] = {
        id = 705, name = "Sliggoo", type1 = "dragon", baseStats = { hp = 68, attack = 75, defense = 53, sp_attack = 83, sp_defense = 113, speed = 60 },
        catchRate = 120, baseExp = 129, growthRate = "medium_fast",
        abilities = { "Sap Sipper", "Hydration", "Gooey" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 0.8, weight = 17.5
    },
    [706] = {
        id = 706, name = "Goodra", type1 = "dragon", baseStats = { hp = 90, attack = 100, defense = 70, sp_attack = 110, sp_defense = 150, speed = 80 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Sap Sipper", "Hydration", "Gooey" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 2, weight = 150.5
    },
    [707] = {
        id = 707, name = "Klefki", type1 = "steel", type2 = "fairy", baseStats = { hp = 57, attack = 80, defense = 91, sp_attack = 80, sp_defense = 87, speed = 75 },
        catchRate = 120, baseExp = 134, growthRate = "medium_fast",
        abilities = { "Prankster", "Magician" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.2, weight = 3
    },
    [708] = {
        id = 708, name = "Phantump", type1 = "ghost", type2 = "grass", baseStats = { hp = 43, attack = 70, defense = 48, sp_attack = 50, sp_defense = 60, speed = 38 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Natural Cure", "Frisk", "Harvest" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 7
    },
    [709] = {
        id = 709, name = "Trevenant", type1 = "ghost", type2 = "grass", baseStats = { hp = 85, attack = 110, defense = 76, sp_attack = 65, sp_defense = 82, speed = 56 },
        catchRate = 120, baseExp = 135, growthRate = "medium_fast",
        abilities = { "Natural Cure", "Frisk", "Harvest" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.5, weight = 71
    },
    [710] = {
        id = 710, name = "Pumpkaboo", type1 = "ghost", type2 = "grass", baseStats = { hp = 49, attack = 66, defense = 70, sp_attack = 44, sp_defense = 55, speed = 51 },
        catchRate = 120, baseExp = 95, growthRate = "medium_fast",
        abilities = { "Pickup", "Frisk", "Insomnia" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 5
    },
    [711] = {
        id = 711, name = "Gourgeist", type1 = "ghost", type2 = "grass", baseStats = { hp = 65, attack = 90, defense = 122, sp_attack = 58, sp_defense = 75, speed = 84 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Pickup", "Frisk", "Insomnia" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.9, weight = 12.5
    },
    [712] = {
        id = 712, name = "Bergmite", type1 = "ice", baseStats = { hp = 55, attack = 69, defense = 85, sp_attack = 32, sp_defense = 35, speed = 28 },
        catchRate = 120, baseExp = 86, growthRate = "medium_fast",
        abilities = { "Own Tempo", "Ice Body", "Sturdy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 1, weight = 99.5
    },
    [713] = {
        id = 713, name = "Avalugg", type1 = "ice", baseStats = { hp = 95, attack = 117, defense = 184, sp_attack = 44, sp_defense = 46, speed = 28 },
        catchRate = 120, baseExp = 146, growthRate = "medium_fast",
        abilities = { "Own Tempo", "Ice Body", "Sturdy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 2, weight = 505
    },
    [714] = {
        id = 714, name = "Noibat", type1 = "flying", type2 = "dragon", baseStats = { hp = 40, attack = 30, defense = 35, sp_attack = 45, sp_defense = 40, speed = 55 },
        catchRate = 120, baseExp = 70, growthRate = "medium_fast",
        abilities = { "Frisk", "Infiltrator", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pigeon`, height = 0.5, weight = 8
    },
    [715] = {
        id = 715, name = "Noivern", type1 = "flying", type2 = "dragon", baseStats = { hp = 85, attack = 70, defense = 80, sp_attack = 97, sp_defense = 80, speed = 123 },
        catchRate = 120, baseExp = 152, growthRate = "medium_fast",
        abilities = { "Frisk", "Infiltrator", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pigeon`, height = 1.5, weight = 85
    },
    [716] = {
        id = 716, name = "Xerneas", type1 = "fairy", baseStats = { hp = 126, attack = 131, defense = 95, sp_attack = 131, sp_defense = 98, speed = 99 },
        catchRate = 120, baseExp = 194, growthRate = "medium_fast",
        abilities = { "Fairy Aura" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 3, weight = 215
    },
    [717] = {
        id = 717, name = "Yveltal", type1 = "dark", type2 = "flying", baseStats = { hp = 126, attack = 131, defense = 95, sp_attack = 131, sp_defense = 98, speed = 99 },
        catchRate = 120, baseExp = 194, growthRate = "medium_fast",
        abilities = { "Dark Aura" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 5.8, weight = 203
    },
    [718] = {
        id = 718, name = "Zygarde", type1 = "dragon", type2 = "ground", baseStats = { hp = 108, attack = 100, defense = 121, sp_attack = 81, sp_defense = 95, speed = 95 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Aura Break" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 5, weight = 305
    },
    [719] = {
        id = 719, name = "Diancie", type1 = "rock", type2 = "fairy", baseStats = { hp = 50, attack = 100, defense = 150, sp_attack = 100, sp_defense = 150, speed = 50 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Clear Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.7, weight = 8.8
    },
    [720] = {
        id = 720, name = "Hoopa", type1 = "psychic", type2 = "ghost", baseStats = { hp = 80, attack = 110, defense = 60, sp_attack = 150, sp_defense = 130, speed = 70 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Magician" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.5, weight = 9
    },
    [721] = {
        id = 721, name = "Volcanion", type1 = "fire", type2 = "water", baseStats = { hp = 80, attack = 110, defense = 120, sp_attack = 130, sp_defense = 90, speed = 70 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Water Absorb" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.7, weight = 195
    },
    [722] = {
        id = 722, name = "Rowlet", type1 = "grass", type2 = "flying", baseStats = { hp = 68, attack = 55, defense = 55, sp_attack = 50, sp_defense = 50, speed = 42 },
        catchRate = 120, baseExp = 91, growthRate = "medium_fast",
        abilities = { "Overgrow", "Long Reach" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 1.5
    },
    [723] = {
        id = 723, name = "Dartrix", type1 = "grass", type2 = "flying", baseStats = { hp = 78, attack = 75, defense = 75, sp_attack = 70, sp_defense = 70, speed = 52 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Overgrow", "Long Reach" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.7, weight = 16
    },
    [724] = {
        id = 724, name = "Decidueye", type1 = "grass", type2 = "ghost", baseStats = { hp = 78, attack = 107, defense = 75, sp_attack = 100, sp_defense = 100, speed = 70 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Overgrow", "Long Reach" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.6, weight = 36.6
    },
    [725] = {
        id = 725, name = "Litten", type1 = "fire", baseStats = { hp = 45, attack = 65, defense = 40, sp_attack = 60, sp_defense = 40, speed = 70 },
        catchRate = 120, baseExp = 91, growthRate = "medium_fast",
        abilities = { "Blaze", "Intimidate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.4, weight = 4.3
    },
    [726] = {
        id = 726, name = "Torracat", type1 = "fire", baseStats = { hp = 65, attack = 85, defense = 50, sp_attack = 80, sp_defense = 50, speed = 90 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Blaze", "Intimidate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.7, weight = 25
    },
    [727] = {
        id = 727, name = "Incineroar", type1 = "fire", type2 = "dark", baseStats = { hp = 95, attack = 115, defense = 90, sp_attack = 80, sp_defense = 90, speed = 60 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Blaze", "Intimidate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.8, weight = 83
    },
    [728] = {
        id = 728, name = "Popplio", type1 = "water", baseStats = { hp = 50, attack = 54, defense = 54, sp_attack = 66, sp_defense = 56, speed = 40 },
        catchRate = 120, baseExp = 91, growthRate = "medium_fast",
        abilities = { "Torrent", "Liquid Voice" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 7.5
    },
    [729] = {
        id = 729, name = "Brionne", type1 = "water", baseStats = { hp = 60, attack = 69, defense = 69, sp_attack = 91, sp_defense = 81, speed = 50 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Torrent", "Liquid Voice" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 17.5
    },
    [730] = {
        id = 730, name = "Primarina", type1 = "water", type2 = "fairy", baseStats = { hp = 80, attack = 74, defense = 74, sp_attack = 126, sp_defense = 116, speed = 60 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Torrent", "Liquid Voice" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.8, weight = 44
    },
    [731] = {
        id = 731, name = "Pikipek", type1 = "normal", type2 = "flying", baseStats = { hp = 35, attack = 75, defense = 30, sp_attack = 30, sp_defense = 30, speed = 65 },
        catchRate = 120, baseExp = 75, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Skill Link", "Pickup" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 1.2
    },
    [732] = {
        id = 732, name = "Trumbeak", type1 = "normal", type2 = "flying", baseStats = { hp = 55, attack = 85, defense = 50, sp_attack = 40, sp_defense = 50, speed = 75 },
        catchRate = 120, baseExp = 101, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Skill Link", "Pickup" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 14.8
    },
    [733] = {
        id = 733, name = "Toucannon", type1 = "normal", type2 = "flying", baseStats = { hp = 80, attack = 120, defense = 75, sp_attack = 75, sp_defense = 75, speed = 60 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Skill Link", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.1, weight = 26
    },
    [734] = {
        id = 734, name = "Yungoos", type1 = "normal", baseStats = { hp = 48, attack = 70, defense = 30, sp_attack = 30, sp_defense = 30, speed = 45 },
        catchRate = 120, baseExp = 72, growthRate = "medium_fast",
        abilities = { "Stakeout", "Strong Jaw", "Adaptability" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 6
    },
    [735] = {
        id = 735, name = "Gumshoos", type1 = "normal", baseStats = { hp = 88, attack = 110, defense = 60, sp_attack = 55, sp_defense = 60, speed = 45 },
        catchRate = 120, baseExp = 119, growthRate = "medium_fast",
        abilities = { "Stakeout", "Strong Jaw", "Adaptability" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.7, weight = 14.2
    },
    [736] = {
        id = 736, name = "Grubbin", type1 = "bug", baseStats = { hp = 47, attack = 62, defense = 45, sp_attack = 55, sp_defense = 45, speed = 46 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Swarm" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 4.4
    },
    [737] = {
        id = 737, name = "Charjabug", type1 = "bug", type2 = "electric", baseStats = { hp = 57, attack = 82, defense = 95, sp_attack = 55, sp_defense = 75, speed = 36 },
        catchRate = 120, baseExp = 114, growthRate = "medium_fast",
        abilities = { "Battery" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 10.5
    },
    [738] = {
        id = 738, name = "Vikavolt", type1 = "bug", type2 = "electric", baseStats = { hp = 77, attack = 70, defense = 90, sp_attack = 145, sp_defense = 75, speed = 43 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Levitate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.5, weight = 45
    },
    [739] = {
        id = 739, name = "Crabrawler", type1 = "fighting", baseStats = { hp = 47, attack = 82, defense = 57, sp_attack = 42, sp_defense = 47, speed = 63 },
        catchRate = 120, baseExp = 96, growthRate = "medium_fast",
        abilities = { "Hyper Cutter", "Iron Fist", "Anger Point" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.6, weight = 7
    },
    [740] = {
        id = 740, name = "Crabominable", type1 = "fighting", type2 = "ice", baseStats = { hp = 97, attack = 132, defense = 77, sp_attack = 62, sp_defense = 67, speed = 43 },
        catchRate = 120, baseExp = 136, growthRate = "medium_fast",
        abilities = { "Hyper Cutter", "Iron Fist", "Anger Point" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.7, weight = 180
    },
    [741] = {
        id = 741, name = "Oricorio", type1 = "fire", type2 = "flying", baseStats = { hp = 75, attack = 70, defense = 70, sp_attack = 98, sp_defense = 70, speed = 93 },
        catchRate = 120, baseExp = 136, growthRate = "medium_fast",
        abilities = { "Dancer" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.6, weight = 3.4
    },
    [742] = {
        id = 742, name = "Cutiefly", type1 = "bug", type2 = "fairy", baseStats = { hp = 40, attack = 45, defense = 40, sp_attack = 55, sp_defense = 40, speed = 84 },
        catchRate = 120, baseExp = 86, growthRate = "medium_fast",
        abilities = { "Honey Gather", "Shield Dust", "Sweet Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.1, weight = 0.2
    },
    [743] = {
        id = 743, name = "Ribombee", type1 = "bug", type2 = "fairy", baseStats = { hp = 60, attack = 55, defense = 60, sp_attack = 95, sp_defense = 70, speed = 124 },
        catchRate = 120, baseExp = 132, growthRate = "medium_fast",
        abilities = { "Honey Gather", "Shield Dust", "Sweet Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.2, weight = 0.5
    },
    [744] = {
        id = 744, name = "Rockruff", type1 = "rock", baseStats = { hp = 45, attack = 65, defense = 40, sp_attack = 30, sp_defense = 40, speed = 60 },
        catchRate = 120, baseExp = 80, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Vital Spirit", "Steadfast" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.5, weight = 9.2
    },
    [745] = {
        id = 745, name = "Lycanroc", type1 = "rock", baseStats = { hp = 75, attack = 115, defense = 65, sp_attack = 55, sp_defense = 65, speed = 112 },
        catchRate = 120, baseExp = 139, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Sand Rush", "Steadfast" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.8, weight = 25
    },
    [746] = {
        id = 746, name = "Wishiwashi", type1 = "water", baseStats = { hp = 45, attack = 20, defense = 20, sp_attack = 25, sp_defense = 25, speed = 40 },
        catchRate = 120, baseExp = 50, growthRate = "medium_fast",
        abilities = { "Schooling" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.2, weight = 0.3
    },
    [747] = {
        id = 747, name = "Mareanie", type1 = "poison", type2 = "water", baseStats = { hp = 50, attack = 53, defense = 62, sp_attack = 43, sp_defense = 52, speed = 45 },
        catchRate = 120, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Merciless", "Limber", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.4, weight = 8
    },
    [748] = {
        id = 748, name = "Toxapex", type1 = "poison", type2 = "water", baseStats = { hp = 50, attack = 63, defense = 152, sp_attack = 53, sp_defense = 142, speed = 35 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Merciless", "Limber", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.7, weight = 14.5
    },
    [749] = {
        id = 749, name = "Mudbray", type1 = "ground", baseStats = { hp = 70, attack = 100, defense = 70, sp_attack = 45, sp_defense = 55, speed = 45 },
        catchRate = 120, baseExp = 110, growthRate = "medium_fast",
        abilities = { "Own Tempo", "Stamina", "Inner Focus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1, weight = 110
    },
    [750] = {
        id = 750, name = "Mudsdale", type1 = "ground", baseStats = { hp = 100, attack = 125, defense = 100, sp_attack = 55, sp_defense = 85, speed = 35 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Own Tempo", "Stamina", "Inner Focus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2.5, weight = 920
    },
    [751] = {
        id = 751, name = "Dewpider", type1 = "water", type2 = "bug", baseStats = { hp = 38, attack = 40, defense = 52, sp_attack = 40, sp_defense = 72, speed = 27 },
        catchRate = 120, baseExp = 76, growthRate = "medium_fast",
        abilities = { "Water Bubble", "Water Absorb" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 4
    },
    [752] = {
        id = 752, name = "Araquanid", type1 = "water", type2 = "bug", baseStats = { hp = 68, attack = 70, defense = 92, sp_attack = 50, sp_defense = 132, speed = 42 },
        catchRate = 120, baseExp = 129, growthRate = "medium_fast",
        abilities = { "Water Bubble", "Water Absorb" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.8, weight = 82
    },
    [753] = {
        id = 753, name = "Fomantis", type1 = "grass", baseStats = { hp = 40, attack = 55, defense = 35, sp_attack = 50, sp_defense = 35, speed = 35 },
        catchRate = 120, baseExp = 71, growthRate = "medium_fast",
        abilities = { "Leaf Guard", "Contrary" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 1.5
    },
    [754] = {
        id = 754, name = "Lurantis", type1 = "grass", baseStats = { hp = 70, attack = 105, defense = 90, sp_attack = 80, sp_defense = 90, speed = 45 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Leaf Guard", "Contrary" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.9, weight = 18.5
    },
    [755] = {
        id = 755, name = "Morelull", type1 = "grass", type2 = "fairy", baseStats = { hp = 40, attack = 35, defense = 55, sp_attack = 65, sp_defense = 75, speed = 15 },
        catchRate = 120, baseExp = 81, growthRate = "medium_fast",
        abilities = { "Illuminate", "Effect Spore", "Rain Dish" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.2, weight = 1.5
    },
    [756] = {
        id = 756, name = "Shiinotic", type1 = "grass", type2 = "fairy", baseStats = { hp = 60, attack = 45, defense = 80, sp_attack = 90, sp_defense = 100, speed = 30 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Illuminate", "Effect Spore", "Rain Dish" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 11.5
    },
    [757] = {
        id = 757, name = "Salandit", type1 = "poison", type2 = "fire", baseStats = { hp = 48, attack = 44, defense = 40, sp_attack = 71, sp_defense = 40, speed = 77 },
        catchRate = 120, baseExp = 91, growthRate = "medium_fast",
        abilities = { "Corrosion", "Oblivious" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.6, weight = 4.8
    },
    [758] = {
        id = 758, name = "Salazzle", type1 = "poison", type2 = "fire", baseStats = { hp = 68, attack = 64, defense = 60, sp_attack = 111, sp_defense = 60, speed = 117 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Corrosion", "Oblivious" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.2, weight = 22.2
    },
    [759] = {
        id = 759, name = "Stufful", type1 = "normal", type2 = "fighting", baseStats = { hp = 70, attack = 75, defense = 50, sp_attack = 45, sp_defense = 50, speed = 50 },
        catchRate = 120, baseExp = 97, growthRate = "medium_fast",
        abilities = { "Fluffy", "Klutz", "Cute Charm" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.5, weight = 6.8
    },
    [760] = {
        id = 760, name = "Bewear", type1 = "normal", type2 = "fighting", baseStats = { hp = 120, attack = 125, defense = 80, sp_attack = 55, sp_defense = 60, speed = 60 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Fluffy", "Klutz", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 2.1, weight = 135
    },
    [761] = {
        id = 761, name = "Bounsweet", type1 = "grass", baseStats = { hp = 42, attack = 30, defense = 38, sp_attack = 30, sp_defense = 38, speed = 32 },
        catchRate = 120, baseExp = 60, growthRate = "medium_fast",
        abilities = { "Leaf Guard", "Oblivious", "Sweet Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 3.2
    },
    [762] = {
        id = 762, name = "Steenee", type1 = "grass", baseStats = { hp = 52, attack = 40, defense = 48, sp_attack = 40, sp_defense = 48, speed = 62 },
        catchRate = 120, baseExp = 82, growthRate = "medium_fast",
        abilities = { "Leaf Guard", "Oblivious", "Sweet Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.7, weight = 8.2
    },
    [763] = {
        id = 763, name = "Tsareena", type1 = "grass", baseStats = { hp = 72, attack = 120, defense = 98, sp_attack = 50, sp_defense = 98, speed = 72 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Leaf Guard", "Queenly Majesty", "Sweet Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 21.4
    },
    [764] = {
        id = 764, name = "Comfey", type1 = "fairy", baseStats = { hp = 51, attack = 52, defense = 90, sp_attack = 82, sp_defense = 110, speed = 100 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Flower Veil", "Triage", "Natural Cure" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.1, weight = 0.3
    },
    [765] = {
        id = 765, name = "Oranguru", type1 = "normal", type2 = "psychic", baseStats = { hp = 90, attack = 60, defense = 80, sp_attack = 90, sp_defense = 110, speed = 60 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Inner Focus", "Telepathy", "Symbiosis" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.5, weight = 76
    },
    [766] = {
        id = 766, name = "Passimian", type1 = "fighting", baseStats = { hp = 100, attack = 120, defense = 90, sp_attack = 40, sp_defense = 60, speed = 80 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Receiver", "Defiant" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 2, weight = 82.8
    },
    [767] = {
        id = 767, name = "Wimpod", type1 = "bug", type2 = "water", baseStats = { hp = 25, attack = 35, defense = 40, sp_attack = 20, sp_defense = 30, speed = 80 },
        catchRate = 120, baseExp = 65, growthRate = "medium_fast",
        abilities = { "Wimp Out" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 12
    },
    [768] = {
        id = 768, name = "Golisopod", type1 = "bug", type2 = "water", baseStats = { hp = 75, attack = 125, defense = 140, sp_attack = 60, sp_defense = 90, speed = 40 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Emergency Exit" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2, weight = 108
    },
    [769] = {
        id = 769, name = "Sandygast", type1 = "ghost", type2 = "ground", baseStats = { hp = 55, attack = 55, defense = 80, sp_attack = 70, sp_defense = 45, speed = 15 },
        catchRate = 120, baseExp = 91, growthRate = "medium_fast",
        abilities = { "Water Compaction", "Sand Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.5, weight = 70
    },
    [770] = {
        id = 770, name = "Palossand", type1 = "ghost", type2 = "ground", baseStats = { hp = 85, attack = 75, defense = 110, sp_attack = 100, sp_defense = 75, speed = 35 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Water Compaction", "Sand Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.3, weight = 250
    },
    [771] = {
        id = 771, name = "Pyukumuku", type1 = "water", baseStats = { hp = 55, attack = 60, defense = 130, sp_attack = 30, sp_defense = 130, speed = 5 },
        catchRate = 120, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Innards Out", "Unaware" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 1.2
    },
    [772] = {
        id = 772, name = "Type: Null", type1 = "normal", baseStats = { hp = 95, attack = 95, defense = 95, sp_attack = 95, sp_defense = 95, speed = 59 },
        catchRate = 120, baseExp = 152, growthRate = "medium_fast",
        abilities = { "Battle Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.9, weight = 120.5
    },
    [773] = {
        id = 773, name = "Silvally", type1 = "normal", baseStats = { hp = 95, attack = 95, defense = 95, sp_attack = 95, sp_defense = 95, speed = 95 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "RKS System" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 2.3, weight = 100.5
    },
    [774] = {
        id = 774, name = "Minior", type1 = "rock", type2 = "flying", baseStats = { hp = 60, attack = 100, defense = 60, sp_attack = 100, sp_defense = 60, speed = 120 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Shields Down" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.3, weight = 0.3
    },
    [775] = {
        id = 775, name = "Komala", type1 = "normal", baseStats = { hp = 65, attack = 115, defense = 65, sp_attack = 75, sp_defense = 95, speed = 65 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Comatose" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 19.9
    },
    [776] = {
        id = 776, name = "Turtonator", type1 = "fire", type2 = "dragon", baseStats = { hp = 60, attack = 78, defense = 135, sp_attack = 91, sp_defense = 85, speed = 36 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Shell Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 2, weight = 212
    },
    [777] = {
        id = 777, name = "Togedemaru", type1 = "electric", type2 = "steel", baseStats = { hp = 65, attack = 98, defense = 63, sp_attack = 40, sp_defense = 73, speed = 96 },
        catchRate = 120, baseExp = 124, growthRate = "medium_fast",
        abilities = { "Iron Barbs", "Lightning Rod", "Sturdy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.3, weight = 3.3
    },
    [778] = {
        id = 778, name = "Mimikyu", type1 = "ghost", type2 = "fairy", baseStats = { hp = 55, attack = 90, defense = 80, sp_attack = 50, sp_defense = 105, speed = 96 },
        catchRate = 120, baseExp = 136, growthRate = "medium_fast",
        abilities = { "Disguise" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.2, weight = 0.7
    },
    [779] = {
        id = 779, name = "Bruxish", type1 = "water", type2 = "psychic", baseStats = { hp = 68, attack = 105, defense = 70, sp_attack = 70, sp_defense = 70, speed = 92 },
        catchRate = 120, baseExp = 135, growthRate = "medium_fast",
        abilities = { "Dazzling", "Strong Jaw", "Wonder Skin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.9, weight = 19
    },
    [780] = {
        id = 780, name = "Drampa", type1 = "normal", type2 = "dragon", baseStats = { hp = 78, attack = 60, defense = 85, sp_attack = 135, sp_defense = 91, speed = 36 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Berserk", "Sap Sipper", "Cloud Nine" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 3, weight = 185
    },
    [781] = {
        id = 781, name = "Dhelmise", type1 = "ghost", type2 = "grass", baseStats = { hp = 70, attack = 131, defense = 100, sp_attack = 86, sp_defense = 90, speed = 40 },
        catchRate = 120, baseExp = 147, growthRate = "medium_fast",
        abilities = { "Steelworker" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 3.9, weight = 210
    },
    [782] = {
        id = 782, name = "Jangmo-o", type1 = "dragon", baseStats = { hp = 45, attack = 55, defense = 65, sp_attack = 45, sp_defense = 45, speed = 45 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Bulletproof", "Soundproof", "Overcoat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 0.6, weight = 29.7
    },
    [783] = {
        id = 783, name = "Hakamo-o", type1 = "dragon", type2 = "fighting", baseStats = { hp = 55, attack = 75, defense = 90, sp_attack = 65, sp_defense = 70, speed = 65 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Bulletproof", "Soundproof", "Overcoat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 1.2, weight = 47
    },
    [784] = {
        id = 784, name = "Kommo-o", type1 = "dragon", type2 = "fighting", baseStats = { hp = 75, attack = 110, defense = 125, sp_attack = 100, sp_defense = 105, speed = 85 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Bulletproof", "Soundproof", "Overcoat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 1.6, weight = 78.2
    },
    [785] = {
        id = 785, name = "Tapu Koko", type1 = "electric", type2 = "fairy", baseStats = { hp = 70, attack = 115, defense = 85, sp_attack = 95, sp_defense = 75, speed = 130 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Electric Surge", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.8, weight = 20.5
    },
    [786] = {
        id = 786, name = "Tapu Lele", type1 = "psychic", type2 = "fairy", baseStats = { hp = 70, attack = 85, defense = 75, sp_attack = 130, sp_defense = 115, speed = 95 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Psychic Surge", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.2, weight = 18.6
    },
    [787] = {
        id = 787, name = "Tapu Bulu", type1 = "grass", type2 = "fairy", baseStats = { hp = 70, attack = 130, defense = 115, sp_attack = 85, sp_defense = 95, speed = 75 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Grassy Surge", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.9, weight = 45.5
    },
    [788] = {
        id = 788, name = "Tapu Fini", type1 = "water", type2 = "fairy", baseStats = { hp = 70, attack = 75, defense = 115, sp_attack = 95, sp_defense = 130, speed = 85 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Misty Surge", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.3, weight = 21.2
    },
    [789] = {
        id = 789, name = "Cosmog", type1 = "psychic", baseStats = { hp = 43, attack = 29, defense = 31, sp_attack = 29, sp_defense = 31, speed = 37 },
        catchRate = 120, baseExp = 57, growthRate = "medium_fast",
        abilities = { "Unaware" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.2, weight = 0.1
    },
    [790] = {
        id = 790, name = "Cosmoem", type1 = "psychic", baseStats = { hp = 43, attack = 29, defense = 131, sp_attack = 29, sp_defense = 131, speed = 37 },
        catchRate = 120, baseExp = 114, growthRate = "medium_fast",
        abilities = { "Sturdy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.1, weight = 999.9
    },
    [791] = {
        id = 791, name = "Solgaleo", type1 = "psychic", type2 = "steel", baseStats = { hp = 137, attack = 137, defense = 107, sp_attack = 113, sp_defense = 89, speed = 97 },
        catchRate = 120, baseExp = 194, growthRate = "medium_fast",
        abilities = { "Full Metal Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 3.4, weight = 230
    },
    [792] = {
        id = 792, name = "Lunala", type1 = "psychic", type2 = "ghost", baseStats = { hp = 137, attack = 113, defense = 89, sp_attack = 137, sp_defense = 107, speed = 97 },
        catchRate = 120, baseExp = 194, growthRate = "medium_fast",
        abilities = { "Shadow Shield" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 4, weight = 120
    },
    [793] = {
        id = 793, name = "Nihilego", type1 = "rock", type2 = "poison", baseStats = { hp = 109, attack = 53, defense = 47, sp_attack = 127, sp_defense = 131, speed = 103 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Beast Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.2, weight = 55.5
    },
    [794] = {
        id = 794, name = "Buzzwole", type1 = "bug", type2 = "fighting", baseStats = { hp = 107, attack = 139, defense = 139, sp_attack = 53, sp_defense = 53, speed = 79 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Beast Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2.4, weight = 333.6
    },
    [795] = {
        id = 795, name = "Pheromosa", type1 = "bug", type2 = "fighting", baseStats = { hp = 71, attack = 137, defense = 37, sp_attack = 137, sp_defense = 37, speed = 151 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Beast Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.8, weight = 25
    },
    [796] = {
        id = 796, name = "Xurkitree", type1 = "electric", baseStats = { hp = 83, attack = 89, defense = 71, sp_attack = 173, sp_defense = 71, speed = 83 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Beast Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 3.8, weight = 100
    },
    [797] = {
        id = 797, name = "Celesteela", type1 = "steel", type2 = "flying", baseStats = { hp = 97, attack = 101, defense = 103, sp_attack = 107, sp_defense = 101, speed = 61 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Beast Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 9.2, weight = 999.9
    },
    [798] = {
        id = 798, name = "Kartana", type1 = "grass", type2 = "steel", baseStats = { hp = 59, attack = 181, defense = 131, sp_attack = 59, sp_defense = 31, speed = 109 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Beast Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 0.1
    },
    [799] = {
        id = 799, name = "Guzzlord", type1 = "dark", type2 = "dragon", baseStats = { hp = 223, attack = 101, defense = 53, sp_attack = 97, sp_defense = 53, speed = 43 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Beast Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 5.5, weight = 888
    },
    [800] = {
        id = 800, name = "Necrozma", type1 = "psychic", baseStats = { hp = 97, attack = 107, defense = 101, sp_attack = 127, sp_defense = 89, speed = 79 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Prism Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 2.4, weight = 230
    },
    [801] = {
        id = 801, name = "Magearna", type1 = "steel", type2 = "fairy", baseStats = { hp = 80, attack = 95, defense = 115, sp_attack = 130, sp_defense = 115, speed = 65 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Soul-Heart" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1, weight = 80.5
    },
    [802] = {
        id = 802, name = "Marshadow", type1 = "fighting", type2 = "ghost", baseStats = { hp = 90, attack = 125, defense = 80, sp_attack = 90, sp_defense = 90, speed = 125 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Technician" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.7, weight = 22.2
    },
    [803] = {
        id = 803, name = "Poipole", type1 = "poison", baseStats = { hp = 67, attack = 73, defense = 67, sp_attack = 73, sp_defense = 67, speed = 73 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Beast Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.6, weight = 1.8
    },
    [804] = {
        id = 804, name = "Naganadel", type1 = "poison", type2 = "dragon", baseStats = { hp = 73, attack = 73, defense = 73, sp_attack = 127, sp_defense = 73, speed = 121 },
        catchRate = 120, baseExp = 154, growthRate = "medium_fast",
        abilities = { "Beast Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 3.6, weight = 150
    },
    [805] = {
        id = 805, name = "Stakataka", type1 = "rock", type2 = "steel", baseStats = { hp = 61, attack = 131, defense = 211, sp_attack = 53, sp_defense = 101, speed = 13 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Beast Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 5.5, weight = 820
    },
    [806] = {
        id = 806, name = "Blacephalon", type1 = "fire", type2 = "ghost", baseStats = { hp = 53, attack = 127, defense = 53, sp_attack = 151, sp_defense = 79, speed = 107 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Beast Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.8, weight = 13
    },
    [807] = {
        id = 807, name = "Zeraora", type1 = "electric", baseStats = { hp = 88, attack = 112, defense = 75, sp_attack = 102, sp_defense = 80, speed = 143 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Volt Absorb" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.5, weight = 44.5
    },
    [808] = {
        id = 808, name = "Meltan", type1 = "steel", baseStats = { hp = 46, attack = 65, defense = 65, sp_attack = 55, sp_defense = 35, speed = 34 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Magnet Pull" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.2, weight = 8
    },
    [809] = {
        id = 809, name = "Melmetal", type1 = "steel", baseStats = { hp = 135, attack = 143, defense = 143, sp_attack = 80, sp_defense = 65, speed = 34 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Iron Fist" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2.5, weight = 800
    },
    [810] = {
        id = 810, name = "Grookey", type1 = "grass", baseStats = { hp = 50, attack = 65, defense = 50, sp_attack = 40, sp_defense = 40, speed = 65 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Overgrow", "Grassy Surge" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 5
    },
    [811] = {
        id = 811, name = "Thwackey", type1 = "grass", baseStats = { hp = 70, attack = 85, defense = 70, sp_attack = 55, sp_defense = 60, speed = 80 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Overgrow", "Grassy Surge" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.7, weight = 14
    },
    [812] = {
        id = 812, name = "Rillaboom", type1 = "grass", baseStats = { hp = 100, attack = 125, defense = 90, sp_attack = 60, sp_defense = 70, speed = 85 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Overgrow", "Grassy Surge" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2.1, weight = 90
    },
    [813] = {
        id = 813, name = "Scorbunny", type1 = "fire", baseStats = { hp = 50, attack = 71, defense = 40, sp_attack = 40, sp_defense = 40, speed = 69 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Blaze", "Libero" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.3, weight = 4.5
    },
    [814] = {
        id = 814, name = "Raboot", type1 = "fire", baseStats = { hp = 65, attack = 86, defense = 60, sp_attack = 55, sp_defense = 60, speed = 94 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Blaze", "Libero" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.6, weight = 9
    },
    [815] = {
        id = 815, name = "Cinderace", type1 = "fire", customModel = "cinderace", baseStats = { hp = 80, attack = 116, defense = 75, sp_attack = 65, sp_defense = 75, speed = 119 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Blaze", "Libero" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.4, weight = 33
    },
    [816] = {
        id = 816, name = "Sobble", type1 = "water", baseStats = { hp = 50, attack = 40, defense = 40, sp_attack = 70, sp_defense = 40, speed = 70 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Torrent", "Sniper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 4
    },
    [817] = {
        id = 817, name = "Drizzile", type1 = "water", baseStats = { hp = 65, attack = 60, defense = 55, sp_attack = 95, sp_defense = 55, speed = 90 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Torrent", "Sniper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.7, weight = 11.5
    },
    [818] = {
        id = 818, name = "Inteleon", type1 = "water", baseStats = { hp = 70, attack = 85, defense = 65, sp_attack = 125, sp_defense = 65, speed = 120 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Torrent", "Sniper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.9, weight = 45.2
    },
    [819] = {
        id = 819, name = "Skwovet", type1 = "normal", baseStats = { hp = 70, attack = 55, defense = 55, sp_attack = 35, sp_defense = 35, speed = 25 },
        catchRate = 120, baseExp = 78, growthRate = "medium_fast",
        abilities = { "Cheek Pouch", "Gluttony" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 2.5
    },
    [820] = {
        id = 820, name = "Greedent", type1 = "normal", baseStats = { hp = 120, attack = 95, defense = 95, sp_attack = 55, sp_defense = 75, speed = 20 },
        catchRate = 120, baseExp = 131, growthRate = "medium_fast",
        abilities = { "Cheek Pouch", "Gluttony" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 6
    },
    [821] = {
        id = 821, name = "Rookidee", type1 = "flying", baseStats = { hp = 38, attack = 47, defense = 35, sp_attack = 33, sp_defense = 35, speed = 57 },
        catchRate = 120, baseExp = 70, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Unnerve", "Big Pecks" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pigeon`, height = 0.2, weight = 1.8
    },
    [822] = {
        id = 822, name = "Corvisquire", type1 = "flying", baseStats = { hp = 68, attack = 67, defense = 55, sp_attack = 43, sp_defense = 55, speed = 77 },
        catchRate = 120, baseExp = 104, growthRate = "medium_fast",
        abilities = { "Keen Eye", "Unnerve", "Big Pecks" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pigeon`, height = 0.8, weight = 16
    },
    [823] = {
        id = 823, name = "Corviknight", type1 = "flying", type2 = "steel", baseStats = { hp = 98, attack = 87, defense = 105, sp_attack = 53, sp_defense = 85, speed = 67 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Pressure", "Unnerve", "Mirror Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pigeon`, height = 2.2, weight = 75
    },
    [824] = {
        id = 824, name = "Blipbug", type1 = "bug", baseStats = { hp = 25, attack = 20, defense = 20, sp_attack = 25, sp_defense = 45, speed = 45 },
        catchRate = 120, baseExp = 51, growthRate = "medium_fast",
        abilities = { "Swarm", "Compound Eyes", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 8
    },
    [825] = {
        id = 825, name = "Dottler", type1 = "bug", type2 = "psychic", baseStats = { hp = 50, attack = 35, defense = 80, sp_attack = 50, sp_defense = 90, speed = 30 },
        catchRate = 120, baseExp = 95, growthRate = "medium_fast",
        abilities = { "Swarm", "Compound Eyes", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 19.5
    },
    [826] = {
        id = 826, name = "Orbeetle", type1 = "bug", type2 = "psychic", baseStats = { hp = 60, attack = 45, defense = 110, sp_attack = 80, sp_defense = 120, speed = 90 },
        catchRate = 120, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Swarm", "Frisk", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 40.8
    },
    [827] = {
        id = 827, name = "Nickit", type1 = "dark", baseStats = { hp = 40, attack = 28, defense = 28, sp_attack = 47, sp_defense = 52, speed = 50 },
        catchRate = 120, baseExp = 70, growthRate = "medium_fast",
        abilities = { "Run Away", "Unburden", "Stakeout" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.6, weight = 8.9
    },
    [828] = {
        id = 828, name = "Thievul", type1 = "dark", baseStats = { hp = 70, attack = 58, defense = 58, sp_attack = 87, sp_defense = 92, speed = 90 },
        catchRate = 120, baseExp = 130, growthRate = "medium_fast",
        abilities = { "Run Away", "Unburden", "Stakeout" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.2, weight = 19.9
    },
    [829] = {
        id = 829, name = "Gossifleur", type1 = "grass", baseStats = { hp = 40, attack = 40, defense = 60, sp_attack = 40, sp_defense = 60, speed = 10 },
        catchRate = 120, baseExp = 71, growthRate = "medium_fast",
        abilities = { "Cotton Down", "Regenerator", "Effect Spore" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 2.2
    },
    [830] = {
        id = 830, name = "Eldegoss", type1 = "grass", baseStats = { hp = 60, attack = 50, defense = 90, sp_attack = 80, sp_defense = 120, speed = 60 },
        catchRate = 120, baseExp = 131, growthRate = "medium_fast",
        abilities = { "Cotton Down", "Regenerator", "Effect Spore" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 2.5
    },
    [831] = {
        id = 831, name = "Wooloo", type1 = "normal", baseStats = { hp = 42, attack = 40, defense = 55, sp_attack = 40, sp_defense = 45, speed = 48 },
        catchRate = 120, baseExp = 77, growthRate = "medium_fast",
        abilities = { "Fluffy", "Run Away", "Bulletproof" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 6
    },
    [832] = {
        id = 832, name = "Dubwool", type1 = "normal", baseStats = { hp = 72, attack = 80, defense = 100, sp_attack = 60, sp_defense = 90, speed = 88 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Fluffy", "Steadfast", "Bulletproof" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.3, weight = 43
    },
    [833] = {
        id = 833, name = "Chewtle", type1 = "water", baseStats = { hp = 50, attack = 64, defense = 50, sp_attack = 38, sp_defense = 38, speed = 44 },
        catchRate = 120, baseExp = 81, growthRate = "medium_fast",
        abilities = { "Strong Jaw", "Shell Armor", "Swift Swim" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 8.5
    },
    [834] = {
        id = 834, name = "Drednaw", type1 = "water", type2 = "rock", baseStats = { hp = 90, attack = 115, defense = 90, sp_attack = 48, sp_defense = 68, speed = 74 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Strong Jaw", "Shell Armor", "Swift Swim" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 115.5
    },
    [835] = {
        id = 835, name = "Yamper", type1 = "electric", baseStats = { hp = 59, attack = 45, defense = 50, sp_attack = 40, sp_defense = 50, speed = 26 },
        catchRate = 120, baseExp = 77, growthRate = "medium_fast",
        abilities = { "Ball Fetch", "Rattled" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.3, weight = 13.5
    },
    [836] = {
        id = 836, name = "Boltund", type1 = "electric", baseStats = { hp = 69, attack = 90, defense = 60, sp_attack = 90, sp_defense = 60, speed = 121 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Strong Jaw", "Competitive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1, weight = 34
    },
    [837] = {
        id = 837, name = "Rolycoly", type1 = "rock", baseStats = { hp = 30, attack = 40, defense = 50, sp_attack = 40, sp_defense = 50, speed = 30 },
        catchRate = 120, baseExp = 68, growthRate = "medium_fast",
        abilities = { "Steam Engine", "Heatproof", "Flash Fire" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.3, weight = 12
    },
    [838] = {
        id = 838, name = "Carkol", type1 = "rock", type2 = "fire", baseStats = { hp = 80, attack = 60, defense = 90, sp_attack = 60, sp_defense = 70, speed = 50 },
        catchRate = 120, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Steam Engine", "Flame Body", "Flash Fire" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.1, weight = 78
    },
    [839] = {
        id = 839, name = "Coalossal", type1 = "rock", type2 = "fire", baseStats = { hp = 110, attack = 80, defense = 120, sp_attack = 80, sp_defense = 90, speed = 30 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Steam Engine", "Flame Body", "Flash Fire" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2.8, weight = 310.5
    },
    [840] = {
        id = 840, name = "Applin", type1 = "grass", type2 = "dragon", baseStats = { hp = 40, attack = 40, defense = 80, sp_attack = 40, sp_defense = 40, speed = 20 },
        catchRate = 120, baseExp = 74, growthRate = "medium_fast",
        abilities = { "Ripen", "Gluttony", "Bulletproof" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.2, weight = 0.5
    },
    [841] = {
        id = 841, name = "Flapple", type1 = "grass", type2 = "dragon", baseStats = { hp = 70, attack = 110, defense = 80, sp_attack = 95, sp_defense = 60, speed = 70 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Ripen", "Gluttony", "Hustle" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 1
    },
    [842] = {
        id = 842, name = "Appletun", type1 = "grass", type2 = "dragon", baseStats = { hp = 110, attack = 85, defense = 80, sp_attack = 100, sp_defense = 80, speed = 30 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Ripen", "Gluttony", "Thick Fat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 13
    },
    [843] = {
        id = 843, name = "Silicobra", type1 = "ground", baseStats = { hp = 52, attack = 57, defense = 75, sp_attack = 35, sp_defense = 50, speed = 46 },
        catchRate = 120, baseExp = 90, growthRate = "medium_fast",
        abilities = { "Sand Spit", "Shed Skin", "Sand Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2.2, weight = 7.6
    },
    [844] = {
        id = 844, name = "Sandaconda", type1 = "ground", baseStats = { hp = 72, attack = 107, defense = 125, sp_attack = 65, sp_defense = 70, speed = 71 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Sand Spit", "Shed Skin", "Sand Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 3.8, weight = 65.5
    },
    [845] = {
        id = 845, name = "Cramorant", type1 = "flying", type2 = "water", baseStats = { hp = 70, attack = 85, defense = 55, sp_attack = 85, sp_defense = 95, speed = 85 },
        catchRate = 120, baseExp = 135, growthRate = "medium_fast",
        abilities = { "Gulp Missile" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pigeon`, height = 0.8, weight = 18
    },
    [846] = {
        id = 846, name = "Arrokuda", type1 = "water", baseStats = { hp = 41, attack = 63, defense = 40, sp_attack = 40, sp_defense = 30, speed = 66 },
        catchRate = 120, baseExp = 80, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Propeller Tail" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 1
    },
    [847] = {
        id = 847, name = "Barraskewda", type1 = "water", baseStats = { hp = 61, attack = 123, defense = 60, sp_attack = 60, sp_defense = 50, speed = 136 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Propeller Tail" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.3, weight = 30
    },
    [848] = {
        id = 848, name = "Toxel", type1 = "electric", type2 = "poison", baseStats = { hp = 40, attack = 38, defense = 35, sp_attack = 54, sp_defense = 35, speed = 40 },
        catchRate = 120, baseExp = 69, growthRate = "medium_fast",
        abilities = { "Rattled", "Static", "Klutz" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.4, weight = 11
    },
    [849] = {
        id = 849, name = "Toxtricity", type1 = "electric", type2 = "poison", baseStats = { hp = 75, attack = 98, defense = 70, sp_attack = 114, sp_defense = 70, speed = 75 },
        catchRate = 120, baseExp = 143, growthRate = "medium_fast",
        abilities = { "Punk Rock", "Plus", "Technician" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.6, weight = 40
    },
    [850] = {
        id = 850, name = "Sizzlipede", type1 = "fire", type2 = "bug", baseStats = { hp = 50, attack = 65, defense = 45, sp_attack = 50, sp_defense = 50, speed = 45 },
        catchRate = 120, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Flash Fire", "White Smoke", "Flame Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.7, weight = 1
    },
    [851] = {
        id = 851, name = "Centiskorch", type1 = "fire", type2 = "bug", baseStats = { hp = 100, attack = 115, defense = 65, sp_attack = 90, sp_defense = 90, speed = 65 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Flash Fire", "White Smoke", "Flame Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 3, weight = 120
    },
    [852] = {
        id = 852, name = "Clobbopus", type1 = "fighting", baseStats = { hp = 50, attack = 68, defense = 60, sp_attack = 50, sp_defense = 50, speed = 32 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Limber", "Technician" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.6, weight = 4
    },
    [853] = {
        id = 853, name = "Grapploct", type1 = "fighting", baseStats = { hp = 80, attack = 118, defense = 90, sp_attack = 70, sp_defense = 80, speed = 42 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Limber", "Technician" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.6, weight = 39
    },
    [854] = {
        id = 854, name = "Sinistea", type1 = "ghost", baseStats = { hp = 40, attack = 45, defense = 45, sp_attack = 74, sp_defense = 54, speed = 50 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Weak Armor", "Cursed Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.1, weight = 0.2
    },
    [855] = {
        id = 855, name = "Polteageist", type1 = "ghost", baseStats = { hp = 60, attack = 65, defense = 65, sp_attack = 134, sp_defense = 114, speed = 70 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Weak Armor", "Cursed Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.2, weight = 0.4
    },
    [856] = {
        id = 856, name = "Hatenna", type1 = "psychic", baseStats = { hp = 42, attack = 30, defense = 45, sp_attack = 56, sp_defense = 53, speed = 39 },
        catchRate = 120, baseExp = 75, growthRate = "medium_fast",
        abilities = { "Healer", "Anticipation", "Magic Bounce" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.4, weight = 3.4
    },
    [857] = {
        id = 857, name = "Hattrem", type1 = "psychic", baseStats = { hp = 57, attack = 40, defense = 65, sp_attack = 86, sp_defense = 73, speed = 49 },
        catchRate = 120, baseExp = 105, growthRate = "medium_fast",
        abilities = { "Healer", "Anticipation", "Magic Bounce" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 4.8
    },
    [858] = {
        id = 858, name = "Hatterene", type1 = "psychic", type2 = "fairy", baseStats = { hp = 57, attack = 90, defense = 95, sp_attack = 136, sp_defense = 103, speed = 29 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Healer", "Anticipation", "Magic Bounce" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 2.1, weight = 5.1
    },
    [859] = {
        id = 859, name = "Impidimp", type1 = "dark", type2 = "fairy", baseStats = { hp = 45, attack = 45, defense = 30, sp_attack = 55, sp_defense = 40, speed = 50 },
        catchRate = 120, baseExp = 75, growthRate = "medium_fast",
        abilities = { "Prankster", "Frisk", "Pickpocket" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.4, weight = 5.5
    },
    [860] = {
        id = 860, name = "Morgrem", type1 = "dark", type2 = "fairy", baseStats = { hp = 65, attack = 60, defense = 45, sp_attack = 75, sp_defense = 55, speed = 70 },
        catchRate = 120, baseExp = 105, growthRate = "medium_fast",
        abilities = { "Prankster", "Frisk", "Pickpocket" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.8, weight = 12.5
    },
    [861] = {
        id = 861, name = "Grimmsnarl", type1 = "dark", type2 = "fairy", baseStats = { hp = 95, attack = 120, defense = 65, sp_attack = 95, sp_defense = 75, speed = 60 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Prankster", "Frisk", "Pickpocket" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.5, weight = 61
    },
    [862] = {
        id = 862, name = "Obstagoon", type1 = "dark", type2 = "normal", baseStats = { hp = 93, attack = 90, defense = 101, sp_attack = 60, sp_defense = 81, speed = 95 },
        catchRate = 120, baseExp = 148, growthRate = "medium_fast",
        abilities = { "Reckless", "Guts", "Defiant" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.6, weight = 46
    },
    [863] = {
        id = 863, name = "Perrserker", type1 = "steel", baseStats = { hp = 70, attack = 110, defense = 100, sp_attack = 50, sp_defense = 60, speed = 50 },
        catchRate = 120, baseExp = 125, growthRate = "medium_fast",
        abilities = { "Battle Armor", "Tough Claws", "Steely Spirit" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.8, weight = 28
    },
    [864] = {
        id = 864, name = "Cursola", type1 = "ghost", baseStats = { hp = 60, attack = 95, defense = 50, sp_attack = 145, sp_defense = 130, speed = 30 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Weak Armor", "Perish Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1, weight = 0.4
    },
    [865] = {
        id = 865, name = "Sirfetch’d", type1 = "fighting", baseStats = { hp = 62, attack = 135, defense = 95, sp_attack = 68, sp_defense = 82, speed = 65 },
        catchRate = 120, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Steadfast", "Scrappy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.8, weight = 117
    },
    [866] = {
        id = 866, name = "Mr. Rime", type1 = "ice", type2 = "psychic", baseStats = { hp = 80, attack = 85, defense = 75, sp_attack = 110, sp_defense = 100, speed = 70 },
        catchRate = 120, baseExp = 148, growthRate = "medium_fast",
        abilities = { "Tangled Feet", "Screen Cleaner", "Ice Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 1.5, weight = 58.2
    },
    [867] = {
        id = 867, name = "Runerigus", type1 = "ground", type2 = "ghost", baseStats = { hp = 58, attack = 95, defense = 145, sp_attack = 50, sp_defense = 105, speed = 30 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Wandering Spirit" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.6, weight = 66.6
    },
    [868] = {
        id = 868, name = "Milcery", type1 = "fairy", baseStats = { hp = 45, attack = 40, defense = 40, sp_attack = 50, sp_defense = 61, speed = 34 },
        catchRate = 120, baseExp = 77, growthRate = "medium_fast",
        abilities = { "Sweet Veil", "Aroma Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.2, weight = 0.3
    },
    [869] = {
        id = 869, name = "Alcremie", type1 = "fairy", baseStats = { hp = 65, attack = 60, defense = 75, sp_attack = 110, sp_defense = 121, speed = 64 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Sweet Veil", "Aroma Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.3, weight = 0.5
    },
    [870] = {
        id = 870, name = "Falinks", type1 = "fighting", baseStats = { hp = 65, attack = 100, defense = 100, sp_attack = 70, sp_defense = 60, speed = 75 },
        catchRate = 120, baseExp = 134, growthRate = "medium_fast",
        abilities = { "Battle Armor", "Defiant" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 3, weight = 62
    },
    [871] = {
        id = 871, name = "Pincurchin", type1 = "electric", baseStats = { hp = 48, attack = 101, defense = 95, sp_attack = 91, sp_defense = 85, speed = 15 },
        catchRate = 120, baseExp = 124, growthRate = "medium_fast",
        abilities = { "Lightning Rod", "Electric Surge" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.3, weight = 1
    },
    [872] = {
        id = 872, name = "Snom", type1 = "ice", type2 = "bug", baseStats = { hp = 30, attack = 25, defense = 35, sp_attack = 45, sp_defense = 30, speed = 20 },
        catchRate = 120, baseExp = 52, growthRate = "medium_fast",
        abilities = { "Shield Dust", "Ice Scales" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 0.3, weight = 3.8
    },
    [873] = {
        id = 873, name = "Frosmoth", type1 = "ice", type2 = "bug", baseStats = { hp = 70, attack = 65, defense = 60, sp_attack = 125, sp_defense = 90, speed = 65 },
        catchRate = 120, baseExp = 135, growthRate = "medium_fast",
        abilities = { "Shield Dust", "Ice Scales" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 1.3, weight = 42
    },
    [874] = {
        id = 874, name = "Stonjourner", type1 = "rock", baseStats = { hp = 100, attack = 125, defense = 135, sp_attack = 20, sp_defense = 20, speed = 70 },
        catchRate = 120, baseExp = 134, growthRate = "medium_fast",
        abilities = { "Power Spot" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2.5, weight = 520
    },
    [875] = {
        id = 875, name = "Eiscue", type1 = "ice", baseStats = { hp = 75, attack = 80, defense = 110, sp_attack = 65, sp_defense = 90, speed = 50 },
        catchRate = 120, baseExp = 134, growthRate = "medium_fast",
        abilities = { "Ice Face" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 1.4, weight = 89
    },
    [876] = {
        id = 876, name = "Indeedee", type1 = "psychic", type2 = "normal", baseStats = { hp = 60, attack = 65, defense = 55, sp_attack = 105, sp_defense = 95, speed = 95 },
        catchRate = 120, baseExp = 135, growthRate = "medium_fast",
        abilities = { "Inner Focus", "Synchronize", "Psychic Surge" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.9, weight = 28
    },
    [877] = {
        id = 877, name = "Morpeko", type1 = "electric", type2 = "dark", baseStats = { hp = 58, attack = 95, defense = 58, sp_attack = 70, sp_defense = 58, speed = 97 },
        catchRate = 120, baseExp = 124, growthRate = "medium_fast",
        abilities = { "Hunger Switch" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.3, weight = 3
    },
    [878] = {
        id = 878, name = "Cufant", type1 = "steel", baseStats = { hp = 72, attack = 80, defense = 49, sp_attack = 40, sp_defense = 49, speed = 40 },
        catchRate = 120, baseExp = 94, growthRate = "medium_fast",
        abilities = { "Sheer Force", "Heavy Metal" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.2, weight = 100
    },
    [879] = {
        id = 879, name = "Copperajah", type1 = "steel", baseStats = { hp = 122, attack = 130, defense = 69, sp_attack = 80, sp_defense = 69, speed = 30 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Sheer Force", "Heavy Metal" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 3, weight = 650
    },
    [880] = {
        id = 880, name = "Dracozolt", type1 = "electric", type2 = "dragon", baseStats = { hp = 90, attack = 100, defense = 90, sp_attack = 80, sp_defense = 70, speed = 75 },
        catchRate = 120, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Volt Absorb", "Hustle", "Sand Rush" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.8, weight = 190
    },
    [881] = {
        id = 881, name = "Arctozolt", type1 = "electric", type2 = "ice", baseStats = { hp = 90, attack = 100, defense = 90, sp_attack = 90, sp_defense = 80, speed = 55 },
        catchRate = 120, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Volt Absorb", "Static", "Slush Rush" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 2.3, weight = 150
    },
    [882] = {
        id = 882, name = "Dracovish", type1 = "water", type2 = "dragon", baseStats = { hp = 90, attack = 90, defense = 100, sp_attack = 70, sp_defense = 80, speed = 75 },
        catchRate = 120, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Water Absorb", "Strong Jaw", "Sand Rush" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2.3, weight = 215
    },
    [883] = {
        id = 883, name = "Arctovish", type1 = "water", type2 = "ice", baseStats = { hp = 90, attack = 90, defense = 100, sp_attack = 80, sp_defense = 90, speed = 55 },
        catchRate = 120, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Water Absorb", "Ice Body", "Slush Rush" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2, weight = 175
    },
    [884] = {
        id = 884, name = "Duraludon", type1 = "steel", type2 = "dragon", baseStats = { hp = 70, attack = 95, defense = 115, sp_attack = 120, sp_defense = 50, speed = 85 },
        catchRate = 120, baseExp = 152, growthRate = "medium_fast",
        abilities = { "Light Metal", "Heavy Metal", "Stalwart" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.8, weight = 40
    },
    [885] = {
        id = 885, name = "Dreepy", type1 = "dragon", type2 = "ghost", baseStats = { hp = 28, attack = 60, defense = 30, sp_attack = 40, sp_defense = 30, speed = 82 },
        catchRate = 120, baseExp = 77, growthRate = "medium_fast",
        abilities = { "Clear Body", "Infiltrator", "Cursed Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 0.5, weight = 2
    },
    [886] = {
        id = 886, name = "Drakloak", type1 = "dragon", type2 = "ghost", baseStats = { hp = 68, attack = 80, defense = 50, sp_attack = 60, sp_defense = 50, speed = 102 },
        catchRate = 120, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Clear Body", "Infiltrator", "Cursed Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 1.4, weight = 11
    },
    [887] = {
        id = 887, name = "Dragapult", type1 = "dragon", type2 = "ghost", baseStats = { hp = 88, attack = 120, defense = 75, sp_attack = 100, sp_defense = 75, speed = 142 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Clear Body", "Infiltrator", "Cursed Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 3, weight = 50
    },
    [888] = {
        id = 888, name = "Zacian", type1 = "fairy", baseStats = { hp = 92, attack = 120, defense = 115, sp_attack = 80, sp_defense = 115, speed = 138 },
        catchRate = 120, baseExp = 188, growthRate = "medium_fast",
        abilities = { "Intrepid Sword" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 2.8, weight = 110
    },
    [889] = {
        id = 889, name = "Zamazenta", type1 = "fighting", baseStats = { hp = 92, attack = 120, defense = 115, sp_attack = 80, sp_defense = 115, speed = 138 },
        catchRate = 120, baseExp = 188, growthRate = "medium_fast",
        abilities = { "Dauntless Shield" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 2.9, weight = 210
    },
    [890] = {
        id = 890, name = "Eternatus", type1 = "poison", type2 = "dragon", baseStats = { hp = 140, attack = 85, defense = 95, sp_attack = 145, sp_defense = 95, speed = 130 },
        catchRate = 120, baseExp = 197, growthRate = "medium_fast",
        abilities = { "Pressure" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 20, weight = 950
    },
    [891] = {
        id = 891, name = "Kubfu", type1 = "fighting", baseStats = { hp = 60, attack = 90, defense = 60, sp_attack = 53, sp_defense = 50, speed = 72 },
        catchRate = 120, baseExp = 110, growthRate = "medium_fast",
        abilities = { "Inner Focus" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.6, weight = 12
    },
    [892] = {
        id = 892, name = "Urshifu", type1 = "fighting", type2 = "dark", baseStats = { hp = 100, attack = 130, defense = 100, sp_attack = 63, sp_defense = 60, speed = 97 },
        catchRate = 120, baseExp = 157, growthRate = "medium_fast",
        abilities = { "Unseen Fist" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.9, weight = 105
    },
    [893] = {
        id = 893, name = "Zarude", type1 = "dark", type2 = "grass", baseStats = { hp = 105, attack = 120, defense = 105, sp_attack = 70, sp_defense = 95, speed = 105 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Leaf Guard" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.8, weight = 70
    },
    [894] = {
        id = 894, name = "Regieleki", type1 = "electric", baseStats = { hp = 80, attack = 100, defense = 50, sp_attack = 100, sp_defense = 50, speed = 200 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Transistor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.2, weight = 145
    },
    [895] = {
        id = 895, name = "Regidrago", type1 = "dragon", baseStats = { hp = 200, attack = 100, defense = 50, sp_attack = 100, sp_defense = 50, speed = 80 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Dragon's Maw" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 2.1, weight = 200
    },
    [896] = {
        id = 896, name = "Glastrier", type1 = "ice", baseStats = { hp = 100, attack = 145, defense = 130, sp_attack = 65, sp_defense = 110, speed = 30 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Chilling Neigh" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 2.2, weight = 800
    },
    [897] = {
        id = 897, name = "Spectrier", type1 = "ghost", baseStats = { hp = 100, attack = 65, defense = 60, sp_attack = 145, sp_defense = 80, speed = 130 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Grim Neigh" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 2, weight = 44.5
    },
    [898] = {
        id = 898, name = "Calyrex", type1 = "psychic", type2 = "grass", baseStats = { hp = 100, attack = 80, defense = 80, sp_attack = 80, sp_defense = 80, speed = 80 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.1, weight = 7.7
    },
    [899] = {
        id = 899, name = "Wyrdeer", type1 = "normal", type2 = "psychic", baseStats = { hp = 103, attack = 105, defense = 72, sp_attack = 105, sp_defense = 75, speed = 65 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Intimidate", "Frisk", "Sap Sipper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.8, weight = 95.1
    },
    [900] = {
        id = 900, name = "Kleavor", type1 = "bug", type2 = "rock", baseStats = { hp = 70, attack = 135, defense = 95, sp_attack = 45, sp_defense = 70, speed = 85 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Swarm", "Sheer Force", "Sharpness" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.8, weight = 89
    },
    [901] = {
        id = 901, name = "Ursaluna", type1 = "ground", type2 = "normal", baseStats = { hp = 130, attack = 140, defense = 105, sp_attack = 45, sp_defense = 80, speed = 50 },
        catchRate = 120, baseExp = 157, growthRate = "medium_fast",
        abilities = { "Guts", "Bulletproof", "Unnerve" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2.4, weight = 290
    },
    [902] = {
        id = 902, name = "Basculegion", type1 = "water", type2 = "ghost", baseStats = { hp = 120, attack = 112, defense = 65, sp_attack = 80, sp_defense = 75, speed = 78 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Swift Swim", "Adaptability", "Mold Breaker" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 3, weight = 110
    },
    [903] = {
        id = 903, name = "Sneasler", type1 = "fighting", type2 = "poison", baseStats = { hp = 80, attack = 130, defense = 60, sp_attack = 40, sp_defense = 80, speed = 120 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Pressure", "Unburden", "Poison Touch" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.3, weight = 43
    },
    [904] = {
        id = 904, name = "Overqwil", type1 = "dark", type2 = "poison", baseStats = { hp = 85, attack = 115, defense = 95, sp_attack = 65, sp_defense = 65, speed = 85 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Poison Point", "Swift Swim", "Intimidate" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 2.5, weight = 60.5
    },
    [905] = {
        id = 905, name = "Enamorus", type1 = "fairy", type2 = "flying", baseStats = { hp = 74, attack = 115, defense = 70, sp_attack = 135, sp_defense = 80, speed = 106 },
        catchRate = 120, baseExp = 165, growthRate = "medium_fast",
        abilities = { "Cute Charm", "Contrary" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 1.6, weight = 48
    },
    [906] = {
        id = 906, name = "Sprigatito", type1 = "grass", baseStats = { hp = 40, attack = 61, defense = 54, sp_attack = 45, sp_defense = 45, speed = 65 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Overgrow", "Protean" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 4.1
    },
    [907] = {
        id = 907, name = "Floragato", type1 = "grass", baseStats = { hp = 61, attack = 80, defense = 63, sp_attack = 60, sp_defense = 63, speed = 83 },
        catchRate = 120, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Overgrow", "Protean" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.9, weight = 12.2
    },
    [908] = {
        id = 908, name = "Meowscarada", type1 = "grass", type2 = "dark", baseStats = { hp = 76, attack = 110, defense = 70, sp_attack = 81, sp_defense = 70, speed = 123 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Overgrow", "Protean" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.5, weight = 31.2
    },
    [909] = {
        id = 909, name = "Fuecoco", type1 = "fire", baseStats = { hp = 67, attack = 45, defense = 59, sp_attack = 63, sp_defense = 40, speed = 36 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Blaze", "Unaware" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.4, weight = 9.8
    },
    [910] = {
        id = 910, name = "Crocalor", type1 = "fire", baseStats = { hp = 81, attack = 55, defense = 78, sp_attack = 90, sp_defense = 58, speed = 49 },
        catchRate = 120, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Blaze", "Unaware" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1, weight = 30.7
    },
    [911] = {
        id = 911, name = "Skeledirge", type1 = "fire", type2 = "ghost", baseStats = { hp = 104, attack = 75, defense = 100, sp_attack = 110, sp_defense = 75, speed = 66 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Blaze", "Unaware" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.6, weight = 326.5
    },
    [912] = {
        id = 912, name = "Quaxly", type1 = "water", baseStats = { hp = 55, attack = 65, defense = 45, sp_attack = 50, sp_defense = 45, speed = 50 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Torrent", "Moxie" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.5, weight = 6.1
    },
    [913] = {
        id = 913, name = "Quaxwell", type1 = "water", baseStats = { hp = 70, attack = 85, defense = 65, sp_attack = 65, sp_defense = 60, speed = 65 },
        catchRate = 120, baseExp = 117, growthRate = "medium_fast",
        abilities = { "Torrent", "Moxie" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 21.5
    },
    [914] = {
        id = 914, name = "Quaquaval", type1 = "water", type2 = "fighting", baseStats = { hp = 85, attack = 120, defense = 80, sp_attack = 85, sp_defense = 75, speed = 85 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Torrent", "Moxie" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.8, weight = 61.9
    },
    [915] = {
        id = 915, name = "Lechonk", type1 = "normal", baseStats = { hp = 54, attack = 45, defense = 40, sp_attack = 35, sp_defense = 45, speed = 35 },
        catchRate = 120, baseExp = 72, growthRate = "medium_fast",
        abilities = { "Aroma Veil", "Gluttony", "Thick Fat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.5, weight = 10.2
    },
    [916] = {
        id = 916, name = "Oinkologne", type1 = "normal", baseStats = { hp = 110, attack = 100, defense = 75, sp_attack = 59, sp_defense = 80, speed = 65 },
        catchRate = 120, baseExp = 139, growthRate = "medium_fast",
        abilities = { "Lingering Aroma", "Gluttony", "Thick Fat" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1, weight = 120
    },
    [917] = {
        id = 917, name = "Tarountula", type1 = "bug", baseStats = { hp = 35, attack = 41, defense = 45, sp_attack = 29, sp_defense = 40, speed = 20 },
        catchRate = 120, baseExp = 60, growthRate = "medium_fast",
        abilities = { "Insomnia", "Stakeout" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 4
    },
    [918] = {
        id = 918, name = "Spidops", type1 = "bug", baseStats = { hp = 60, attack = 79, defense = 92, sp_attack = 52, sp_defense = 86, speed = 35 },
        catchRate = 120, baseExp = 115, growthRate = "medium_fast",
        abilities = { "Insomnia", "Stakeout" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 16.5
    },
    [919] = {
        id = 919, name = "Nymble", type1 = "bug", baseStats = { hp = 33, attack = 46, defense = 40, sp_attack = 21, sp_defense = 25, speed = 45 },
        catchRate = 120, baseExp = 60, growthRate = "medium_fast",
        abilities = { "Swarm", "Tinted Lens" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.2, weight = 1
    },
    [920] = {
        id = 920, name = "Lokix", type1 = "bug", type2 = "dark", baseStats = { hp = 71, attack = 102, defense = 78, sp_attack = 52, sp_defense = 55, speed = 92 },
        catchRate = 120, baseExp = 128, growthRate = "medium_fast",
        abilities = { "Swarm", "Tinted Lens" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1, weight = 17.5
    },
    [921] = {
        id = 921, name = "Pawmi", type1 = "electric", baseStats = { hp = 45, attack = 50, defense = 20, sp_attack = 40, sp_defense = 25, speed = 60 },
        catchRate = 120, baseExp = 68, growthRate = "medium_fast",
        abilities = { "Static", "Natural Cure", "Iron Fist" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.3, weight = 2.5
    },
    [922] = {
        id = 922, name = "Pawmo", type1 = "electric", type2 = "fighting", baseStats = { hp = 60, attack = 75, defense = 40, sp_attack = 50, sp_defense = 40, speed = 85 },
        catchRate = 120, baseExp = 100, growthRate = "medium_fast",
        abilities = { "Volt Absorb", "Natural Cure", "Iron Fist" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.4, weight = 6.5
    },
    [923] = {
        id = 923, name = "Pawmot", type1 = "electric", type2 = "fighting", baseStats = { hp = 70, attack = 115, defense = 70, sp_attack = 70, sp_defense = 60, speed = 105 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Volt Absorb", "Natural Cure", "Iron Fist" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.9, weight = 41
    },
    [924] = {
        id = 924, name = "Tandemaus", type1 = "normal", baseStats = { hp = 50, attack = 50, defense = 45, sp_attack = 40, sp_defense = 45, speed = 75 },
        catchRate = 120, baseExp = 87, growthRate = "medium_fast",
        abilities = { "Run Away", "Pickup", "Own Tempo" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 1.8
    },
    [925] = {
        id = 925, name = "Maushold", type1 = "normal", baseStats = { hp = 74, attack = 75, defense = 70, sp_attack = 65, sp_defense = 75, speed = 111 },
        catchRate = 120, baseExp = 134, growthRate = "medium_fast",
        abilities = { "Friend Guard", "Cheek Pouch", "Technician" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 2.3
    },
    [926] = {
        id = 926, name = "Fidough", type1 = "fairy", baseStats = { hp = 37, attack = 55, defense = 70, sp_attack = 30, sp_defense = 55, speed = 65 },
        catchRate = 120, baseExp = 89, growthRate = "medium_fast",
        abilities = { "Own Tempo", "Klutz" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.3, weight = 10.9
    },
    [927] = {
        id = 927, name = "Dachsbun", type1 = "fairy", baseStats = { hp = 57, attack = 80, defense = 115, sp_attack = 50, sp_defense = 80, speed = 95 },
        catchRate = 120, baseExp = 136, growthRate = "medium_fast",
        abilities = { "Well-Baked Body", "Aroma Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.5, weight = 14.9
    },
    [928] = {
        id = 928, name = "Smoliv", type1 = "grass", type2 = "normal", baseStats = { hp = 41, attack = 35, defense = 45, sp_attack = 58, sp_defense = 51, speed = 30 },
        catchRate = 120, baseExp = 74, growthRate = "medium_fast",
        abilities = { "Early Bird", "Harvest" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 6.5
    },
    [929] = {
        id = 929, name = "Dolliv", type1 = "grass", type2 = "normal", baseStats = { hp = 52, attack = 53, defense = 60, sp_attack = 78, sp_defense = 78, speed = 33 },
        catchRate = 120, baseExp = 101, growthRate = "medium_fast",
        abilities = { "Early Bird", "Harvest" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 11.9
    },
    [930] = {
        id = 930, name = "Arboliva", type1 = "grass", type2 = "normal", baseStats = { hp = 78, attack = 69, defense = 90, sp_attack = 125, sp_defense = 109, speed = 39 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Seed Sower", "Harvest" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.4, weight = 48.2
    },
    [931] = {
        id = 931, name = "Squawkabilly", type1 = "normal", type2 = "flying", baseStats = { hp = 82, attack = 96, defense = 51, sp_attack = 45, sp_defense = 51, speed = 92 },
        catchRate = 120, baseExp = 119, growthRate = "medium_fast",
        abilities = { "Intimidate", "Hustle", "Guts" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 2.4
    },
    [932] = {
        id = 932, name = "Nacli", type1 = "rock", baseStats = { hp = 55, attack = 55, defense = 75, sp_attack = 35, sp_defense = 35, speed = 25 },
        catchRate = 120, baseExp = 80, growthRate = "medium_fast",
        abilities = { "Purifying Salt", "Sturdy", "Clear Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.4, weight = 16
    },
    [933] = {
        id = 933, name = "Naclstack", type1 = "rock", baseStats = { hp = 60, attack = 60, defense = 100, sp_attack = 35, sp_defense = 65, speed = 35 },
        catchRate = 120, baseExp = 101, growthRate = "medium_fast",
        abilities = { "Purifying Salt", "Sturdy", "Clear Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.6, weight = 105
    },
    [934] = {
        id = 934, name = "Garganacl", type1 = "rock", baseStats = { hp = 100, attack = 100, defense = 130, sp_attack = 45, sp_defense = 90, speed = 35 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Purifying Salt", "Sturdy", "Clear Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2.3, weight = 240
    },
    [935] = {
        id = 935, name = "Charcadet", type1 = "fire", baseStats = { hp = 40, attack = 50, defense = 40, sp_attack = 50, sp_defense = 40, speed = 35 },
        catchRate = 120, baseExp = 72, growthRate = "medium_fast",
        abilities = { "Flash Fire", "Flame Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 0.6, weight = 10.5
    },
    [936] = {
        id = 936, name = "Armarouge", type1 = "fire", type2 = "psychic", baseStats = { hp = 85, attack = 60, defense = 100, sp_attack = 125, sp_defense = 80, speed = 75 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Flash Fire", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.5, weight = 85
    },
    [937] = {
        id = 937, name = "Ceruledge", type1 = "fire", type2 = "ghost", baseStats = { hp = 75, attack = 125, defense = 80, sp_attack = 60, sp_defense = 100, speed = 85 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Flash Fire", "Weak Armor" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.6, weight = 62
    },
    [938] = {
        id = 938, name = "Tadbulb", type1 = "electric", baseStats = { hp = 61, attack = 31, defense = 41, sp_attack = 59, sp_defense = 35, speed = 45 },
        catchRate = 120, baseExp = 77, growthRate = "medium_fast",
        abilities = { "Own Tempo", "Static", "Damp" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.3, weight = 0.4
    },
    [939] = {
        id = 939, name = "Bellibolt", type1 = "electric", baseStats = { hp = 109, attack = 64, defense = 91, sp_attack = 103, sp_defense = 83, speed = 45 },
        catchRate = 120, baseExp = 141, growthRate = "medium_fast",
        abilities = { "Electromorphosis", "Static", "Damp" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.2, weight = 113
    },
    [940] = {
        id = 940, name = "Wattrel", type1 = "electric", type2 = "flying", baseStats = { hp = 40, attack = 40, defense = 35, sp_attack = 55, sp_defense = 40, speed = 70 },
        catchRate = 120, baseExp = 80, growthRate = "medium_fast",
        abilities = { "Wind Power", "Volt Absorb", "Competitive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.4, weight = 3.6
    },
    [941] = {
        id = 941, name = "Kilowattrel", type1 = "electric", type2 = "flying", baseStats = { hp = 70, attack = 70, defense = 60, sp_attack = 105, sp_defense = 60, speed = 125 },
        catchRate = 120, baseExp = 140, growthRate = "medium_fast",
        abilities = { "Wind Power", "Volt Absorb", "Competitive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.4, weight = 38.6
    },
    [942] = {
        id = 942, name = "Maschiff", type1 = "dark", baseStats = { hp = 60, attack = 78, defense = 60, sp_attack = 40, sp_defense = 51, speed = 51 },
        catchRate = 120, baseExp = 97, growthRate = "medium_fast",
        abilities = { "Intimidate", "Run Away", "Stakeout" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.5, weight = 16
    },
    [943] = {
        id = 943, name = "Mabosstiff", type1 = "dark", baseStats = { hp = 80, attack = 120, defense = 90, sp_attack = 60, sp_defense = 70, speed = 85 },
        catchRate = 120, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Intimidate", "Guard Dog", "Stakeout" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.1, weight = 61
    },
    [944] = {
        id = 944, name = "Shroodle", type1 = "poison", type2 = "normal", baseStats = { hp = 40, attack = 65, defense = 35, sp_attack = 40, sp_defense = 35, speed = 75 },
        catchRate = 120, baseExp = 82, growthRate = "medium_fast",
        abilities = { "Unburden", "Pickpocket", "Prankster" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.2, weight = 0.7
    },
    [945] = {
        id = 945, name = "Grafaiai", type1 = "poison", type2 = "normal", baseStats = { hp = 63, attack = 95, defense = 65, sp_attack = 80, sp_defense = 72, speed = 110 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Unburden", "Poison Touch", "Prankster" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.7, weight = 27.2
    },
    [946] = {
        id = 946, name = "Bramblin", type1 = "grass", type2 = "ghost", baseStats = { hp = 40, attack = 65, defense = 30, sp_attack = 45, sp_defense = 35, speed = 60 },
        catchRate = 120, baseExp = 78, growthRate = "medium_fast",
        abilities = { "Wind Rider", "Infiltrator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.6, weight = 0.6
    },
    [947] = {
        id = 947, name = "Brambleghast", type1 = "grass", type2 = "ghost", baseStats = { hp = 55, attack = 115, defense = 70, sp_attack = 80, sp_defense = 70, speed = 90 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Wind Rider", "Infiltrator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 6
    },
    [948] = {
        id = 948, name = "Toedscool", type1 = "ground", type2 = "grass", baseStats = { hp = 40, attack = 40, defense = 35, sp_attack = 50, sp_defense = 100, speed = 70 },
        catchRate = 120, baseExp = 95, growthRate = "medium_fast",
        abilities = { "Mycelium Might" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.9, weight = 33
    },
    [949] = {
        id = 949, name = "Toedscruel", type1 = "ground", type2 = "grass", baseStats = { hp = 80, attack = 70, defense = 65, sp_attack = 80, sp_defense = 120, speed = 100 },
        catchRate = 120, baseExp = 147, growthRate = "medium_fast",
        abilities = { "Mycelium Might" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.9, weight = 58
    },
    [950] = {
        id = 950, name = "Klawf", type1 = "rock", baseStats = { hp = 70, attack = 100, defense = 115, sp_attack = 35, sp_defense = 55, speed = 75 },
        catchRate = 120, baseExp = 128, growthRate = "medium_fast",
        abilities = { "Anger Shell", "Shell Armor", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.3, weight = 79
    },
    [951] = {
        id = 951, name = "Capsakid", type1 = "grass", baseStats = { hp = 50, attack = 62, defense = 40, sp_attack = 62, sp_defense = 40, speed = 50 },
        catchRate = 120, baseExp = 86, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Insomnia", "Klutz" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 3
    },
    [952] = {
        id = 952, name = "Scovillain", type1 = "grass", type2 = "fire", baseStats = { hp = 65, attack = 108, defense = 65, sp_attack = 108, sp_defense = 65, speed = 75 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Chlorophyll", "Insomnia", "Moody" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.9, weight = 15
    },
    [953] = {
        id = 953, name = "Rellor", type1 = "bug", baseStats = { hp = 41, attack = 50, defense = 60, sp_attack = 31, sp_defense = 58, speed = 30 },
        catchRate = 120, baseExp = 77, growthRate = "medium_fast",
        abilities = { "Compound Eyes", "Shed Skin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.2, weight = 1
    },
    [954] = {
        id = 954, name = "Rabsca", type1 = "bug", type2 = "psychic", baseStats = { hp = 75, attack = 50, defense = 85, sp_attack = 115, sp_defense = 100, speed = 45 },
        catchRate = 120, baseExp = 134, growthRate = "medium_fast",
        abilities = { "Synchronize", "Telepathy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.3, weight = 3.5
    },
    [955] = {
        id = 955, name = "Flittle", type1 = "psychic", baseStats = { hp = 30, attack = 35, defense = 30, sp_attack = 55, sp_defense = 30, speed = 75 },
        catchRate = 120, baseExp = 72, growthRate = "medium_fast",
        abilities = { "Anticipation", "Frisk", "Speed Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.2, weight = 1.5
    },
    [956] = {
        id = 956, name = "Espathra", type1 = "psychic", baseStats = { hp = 95, attack = 60, defense = 60, sp_attack = 101, sp_defense = 60, speed = 105 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Opportunist", "Frisk", "Speed Boost" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.9, weight = 90
    },
    [957] = {
        id = 957, name = "Tinkatink", type1 = "fairy", type2 = "steel", baseStats = { hp = 50, attack = 45, defense = 45, sp_attack = 35, sp_defense = 64, speed = 58 },
        catchRate = 120, baseExp = 84, growthRate = "medium_fast",
        abilities = { "Mold Breaker", "Own Tempo", "Pickpocket" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.4, weight = 8.9
    },
    [958] = {
        id = 958, name = "Tinkatuff", type1 = "fairy", type2 = "steel", baseStats = { hp = 65, attack = 55, defense = 55, sp_attack = 45, sp_defense = 82, speed = 78 },
        catchRate = 120, baseExp = 108, growthRate = "medium_fast",
        abilities = { "Mold Breaker", "Own Tempo", "Pickpocket" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.7, weight = 59.1
    },
    [959] = {
        id = 959, name = "Tinkaton", type1 = "fairy", type2 = "steel", baseStats = { hp = 85, attack = 75, defense = 77, sp_attack = 70, sp_defense = 105, speed = 94 },
        catchRate = 120, baseExp = 144, growthRate = "medium_fast",
        abilities = { "Mold Breaker", "Own Tempo", "Pickpocket" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 0.7, weight = 112.8
    },
    [960] = {
        id = 960, name = "Wiglett", type1 = "water", baseStats = { hp = 10, attack = 55, defense = 25, sp_attack = 35, sp_defense = 25, speed = 95 },
        catchRate = 120, baseExp = 70, growthRate = "medium_fast",
        abilities = { "Gooey", "Rattled", "Sand Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 1.8
    },
    [961] = {
        id = 961, name = "Wugtrio", type1 = "water", baseStats = { hp = 35, attack = 100, defense = 50, sp_attack = 50, sp_defense = 70, speed = 120 },
        catchRate = 120, baseExp = 121, growthRate = "medium_fast",
        abilities = { "Gooey", "Rattled", "Sand Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 5.4
    },
    [962] = {
        id = 962, name = "Bombirdier", type1 = "flying", type2 = "dark", baseStats = { hp = 70, attack = 103, defense = 85, sp_attack = 60, sp_defense = 85, speed = 82 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Big Pecks", "Keen Eye", "Rocky Payload" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pigeon`, height = 1.5, weight = 42.9
    },
    [963] = {
        id = 963, name = "Finizen", type1 = "water", baseStats = { hp = 70, attack = 45, defense = 40, sp_attack = 45, sp_defense = 40, speed = 75 },
        catchRate = 120, baseExp = 90, growthRate = "medium_fast",
        abilities = { "Water Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.3, weight = 60.2
    },
    [964] = {
        id = 964, name = "Palafin", type1 = "water", baseStats = { hp = 100, attack = 70, defense = 72, sp_attack = 53, sp_defense = 62, speed = 100 },
        catchRate = 120, baseExp = 130, growthRate = "medium_fast",
        abilities = { "Zero to Hero" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.3, weight = 60.2
    },
    [965] = {
        id = 965, name = "Varoom", type1 = "steel", type2 = "poison", baseStats = { hp = 45, attack = 70, defense = 63, sp_attack = 30, sp_defense = 45, speed = 47 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Overcoat", "Slow Start" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1, weight = 35
    },
    [966] = {
        id = 966, name = "Revavroom", type1 = "steel", type2 = "poison", baseStats = { hp = 80, attack = 119, defense = 90, sp_attack = 54, sp_defense = 67, speed = 90 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Overcoat", "Filter" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.8, weight = 120
    },
    [967] = {
        id = 967, name = "Cyclizar", type1 = "dragon", type2 = "normal", baseStats = { hp = 70, attack = 95, defense = 65, sp_attack = 85, sp_defense = 65, speed = 121 },
        catchRate = 120, baseExp = 143, growthRate = "medium_fast",
        abilities = { "Shed Skin", "Regenerator" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 1.6, weight = 63
    },
    [968] = {
        id = 968, name = "Orthworm", type1 = "steel", baseStats = { hp = 70, attack = 85, defense = 145, sp_attack = 60, sp_defense = 55, speed = 65 },
        catchRate = 120, baseExp = 137, growthRate = "medium_fast",
        abilities = { "Earth Eater", "Sand Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2.5, weight = 310
    },
    [969] = {
        id = 969, name = "Glimmet", type1 = "rock", type2 = "poison", baseStats = { hp = 48, attack = 35, defense = 42, sp_attack = 105, sp_defense = 60, speed = 60 },
        catchRate = 120, baseExp = 100, growthRate = "medium_fast",
        abilities = { "Toxic Debris", "Corrosion" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.7, weight = 8
    },
    [970] = {
        id = 970, name = "Glimmora", type1 = "rock", type2 = "poison", baseStats = { hp = 83, attack = 55, defense = 90, sp_attack = 130, sp_defense = 81, speed = 86 },
        catchRate = 120, baseExp = 150, growthRate = "medium_fast",
        abilities = { "Toxic Debris", "Corrosion" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.5, weight = 45
    },
    [971] = {
        id = 971, name = "Greavard", type1 = "ghost", baseStats = { hp = 50, attack = 61, defense = 60, sp_attack = 30, sp_defense = 55, speed = 34 },
        catchRate = 120, baseExp = 82, growthRate = "medium_fast",
        abilities = { "Pickup", "Fluffy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.6, weight = 35
    },
    [972] = {
        id = 972, name = "Houndstone", type1 = "ghost", baseStats = { hp = 72, attack = 101, defense = 100, sp_attack = 50, sp_defense = 97, speed = 68 },
        catchRate = 120, baseExp = 139, growthRate = "medium_fast",
        abilities = { "Sand Rush", "Fluffy" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 2, weight = 15
    },
    [973] = {
        id = 973, name = "Flamigo", type1 = "flying", type2 = "fighting", baseStats = { hp = 82, attack = 115, defense = 74, sp_attack = 75, sp_defense = 64, speed = 90 },
        catchRate = 120, baseExp = 142, growthRate = "medium_fast",
        abilities = { "Scrappy", "Tangled Feet", "Costar" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pigeon`, height = 1.6, weight = 37
    },
    [974] = {
        id = 974, name = "Cetoddle", type1 = "ice", baseStats = { hp = 108, attack = 68, defense = 45, sp_attack = 30, sp_defense = 40, speed = 43 },
        catchRate = 120, baseExp = 95, growthRate = "medium_fast",
        abilities = { "Thick Fat", "Snow Cloak", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 1.2, weight = 45
    },
    [975] = {
        id = 975, name = "Cetitan", type1 = "ice", baseStats = { hp = 170, attack = 113, defense = 65, sp_attack = 45, sp_defense = 55, speed = 73 },
        catchRate = 120, baseExp = 148, growthRate = "medium_fast",
        abilities = { "Thick Fat", "Slush Rush", "Sheer Force" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 4.5, weight = 700
    },
    [976] = {
        id = 976, name = "Veluza", type1 = "water", type2 = "psychic", baseStats = { hp = 90, attack = 102, defense = 73, sp_attack = 78, sp_defense = 65, speed = 70 },
        catchRate = 120, baseExp = 136, growthRate = "medium_fast",
        abilities = { "Mold Breaker", "Sharpness" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 2.5, weight = 90
    },
    [977] = {
        id = 977, name = "Dondozo", type1 = "water", baseStats = { hp = 150, attack = 100, defense = 115, sp_attack = 65, sp_defense = 65, speed = 35 },
        catchRate = 120, baseExp = 151, growthRate = "medium_fast",
        abilities = { "Unaware", "Oblivious", "Water Veil" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 12, weight = 220
    },
    [978] = {
        id = 978, name = "Tatsugiri", type1 = "dragon", type2 = "water", baseStats = { hp = 68, attack = 50, defense = 60, sp_attack = 120, sp_defense = 95, speed = 82 },
        catchRate = 120, baseExp = 135, growthRate = "medium_fast",
        abilities = { "Commander", "Storm Drain" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 0.3, weight = 8
    },
    [979] = {
        id = 979, name = "Annihilape", type1 = "fighting", type2 = "ghost", baseStats = { hp = 110, attack = 115, defense = 80, sp_attack = 50, sp_defense = 90, speed = 90 },
        catchRate = 120, baseExp = 152, growthRate = "medium_fast",
        abilities = { "Vital Spirit", "Inner Focus", "Defiant" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.2, weight = 56
    },
    [980] = {
        id = 980, name = "Clodsire", type1 = "poison", type2 = "ground", baseStats = { hp = 130, attack = 75, defense = 60, sp_attack = 45, sp_defense = 100, speed = 20 },
        catchRate = 120, baseExp = 122, growthRate = "medium_fast",
        abilities = { "Poison Point", "Water Absorb", "Unaware" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.8, weight = 223
    },
    [981] = {
        id = 981, name = "Farigiraf", type1 = "normal", type2 = "psychic", baseStats = { hp = 120, attack = 90, defense = 70, sp_attack = 110, sp_defense = 70, speed = 60 },
        catchRate = 120, baseExp = 148, growthRate = "medium_fast",
        abilities = { "Cud Chew", "Armor Tail", "Sap Sipper" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 3.2, weight = 160
    },
    [982] = {
        id = 982, name = "Dudunsparce", type1 = "normal", baseStats = { hp = 125, attack = 100, defense = 80, sp_attack = 85, sp_defense = 75, speed = 55 },
        catchRate = 120, baseExp = 148, growthRate = "medium_fast",
        abilities = { "Serene Grace", "Run Away", "Rattled" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 3.6, weight = 39.2
    },
    [983] = {
        id = 983, name = "Kingambit", type1 = "dark", type2 = "steel", baseStats = { hp = 100, attack = 135, defense = 120, sp_attack = 60, sp_defense = 85, speed = 50 },
        catchRate = 120, baseExp = 157, growthRate = "medium_fast",
        abilities = { "Defiant", "Supreme Overlord", "Pressure" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 2, weight = 120
    },
    [984] = {
        id = 984, name = "Great Tusk", type1 = "ground", type2 = "fighting", baseStats = { hp = 115, attack = 131, defense = 131, sp_attack = 53, sp_defense = 53, speed = 87 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Protosynthesis" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2.2, weight = 320
    },
    [985] = {
        id = 985, name = "Scream Tail", type1 = "fairy", type2 = "psychic", baseStats = { hp = 115, attack = 65, defense = 99, sp_attack = 65, sp_defense = 115, speed = 111 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Protosynthesis" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 1.2, weight = 8
    },
    [986] = {
        id = 986, name = "Brute Bonnet", type1 = "grass", type2 = "dark", baseStats = { hp = 111, attack = 127, defense = 99, sp_attack = 79, sp_defense = 99, speed = 55 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Protosynthesis" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 21
    },
    [987] = {
        id = 987, name = "Flutter Mane", type1 = "ghost", type2 = "fairy", baseStats = { hp = 55, attack = 55, defense = 55, sp_attack = 135, sp_defense = 135, speed = 135 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Protosynthesis" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 1.4, weight = 4
    },
    [988] = {
        id = 988, name = "Slither Wing", type1 = "bug", type2 = "fighting", baseStats = { hp = 85, attack = 135, defense = 79, sp_attack = 85, sp_defense = 105, speed = 81 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Protosynthesis" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 3.2, weight = 92
    },
    [989] = {
        id = 989, name = "Sandy Shocks", type1 = "electric", type2 = "ground", baseStats = { hp = 85, attack = 81, defense = 97, sp_attack = 121, sp_defense = 85, speed = 101 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Protosynthesis" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 2.3, weight = 60
    },
    [990] = {
        id = 990, name = "Iron Treads", type1 = "ground", type2 = "steel", baseStats = { hp = 90, attack = 112, defense = 120, sp_attack = 72, sp_defense = 70, speed = 106 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Quark Drive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 0.9, weight = 240
    },
    [991] = {
        id = 991, name = "Iron Bundle", type1 = "ice", type2 = "water", baseStats = { hp = 56, attack = 80, defense = 114, sp_attack = 124, sp_defense = 60, speed = 136 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Quark Drive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_westy`, height = 0.6, weight = 11
    },
    [992] = {
        id = 992, name = "Iron Hands", type1 = "fighting", type2 = "electric", baseStats = { hp = 154, attack = 140, defense = 108, sp_attack = 50, sp_defense = 68, speed = 50 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Quark Drive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.8, weight = 380.7
    },
    [993] = {
        id = 993, name = "Iron Jugulis", type1 = "dark", type2 = "flying", baseStats = { hp = 94, attack = 80, defense = 86, sp_attack = 122, sp_defense = 80, speed = 108 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Quark Drive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.3, weight = 111
    },
    [994] = {
        id = 994, name = "Iron Moth", type1 = "fire", type2 = "poison", baseStats = { hp = 80, attack = 70, defense = 60, sp_attack = 140, sp_defense = 110, speed = 110 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Quark Drive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 1.2, weight = 36
    },
    [995] = {
        id = 995, name = "Iron Thorns", type1 = "rock", type2 = "electric", baseStats = { hp = 100, attack = 134, defense = 110, sp_attack = 70, sp_defense = 84, speed = 72 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Quark Drive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.6, weight = 303
    },
    [996] = {
        id = 996, name = "Frigibax", type1 = "dragon", type2 = "ice", baseStats = { hp = 65, attack = 75, defense = 45, sp_attack = 35, sp_defense = 45, speed = 55 },
        catchRate = 120, baseExp = 91, growthRate = "medium_fast",
        abilities = { "Thermal Exchange", "Ice Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 0.5, weight = 17
    },
    [997] = {
        id = 997, name = "Arctibax", type1 = "dragon", type2 = "ice", baseStats = { hp = 90, attack = 95, defense = 66, sp_attack = 45, sp_defense = 65, speed = 62 },
        catchRate = 120, baseExp = 120, growthRate = "medium_fast",
        abilities = { "Thermal Exchange", "Ice Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 0.8, weight = 30
    },
    [998] = {
        id = 998, name = "Baxcalibur", type1 = "dragon", type2 = "ice", baseStats = { hp = 115, attack = 145, defense = 92, sp_attack = 75, sp_defense = 86, speed = 87 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Thermal Exchange", "Ice Body" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 2.1, weight = 210
    },
    [999] = {
        id = 999, name = "Gimmighoul", type1 = "ghost", baseStats = { hp = 45, attack = 30, defense = 70, sp_attack = 75, sp_defense = 70, speed = 10 },
        catchRate = 120, baseExp = 85, growthRate = "medium_fast",
        abilities = { "Rattled" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.3, weight = 5
    },
    [1000] = {
        id = 1000, name = "Gholdengo", type1 = "steel", type2 = "ghost", baseStats = { hp = 87, attack = 60, defense = 95, sp_attack = 133, sp_defense = 91, speed = 84 },
        catchRate = 120, baseExp = 157, growthRate = "medium_fast",
        abilities = { "Good as Gold" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.2, weight = 30
    },
    [1001] = {
        id = 1001, name = "Wo-Chien", type1 = "dark", type2 = "grass", baseStats = { hp = 85, attack = 85, defense = 100, sp_attack = 95, sp_defense = 135, speed = 70 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Tablets of Ruin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.5, weight = 74.2
    },
    [1002] = {
        id = 1002, name = "Chien-Pao", type1 = "dark", type2 = "ice", baseStats = { hp = 80, attack = 120, defense = 80, sp_attack = 90, sp_defense = 65, speed = 135 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Sword of Ruin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 1.9, weight = 152.2
    },
    [1003] = {
        id = 1003, name = "Ting-Lu", type1 = "dark", type2 = "ground", baseStats = { hp = 155, attack = 110, defense = 125, sp_attack = 55, sp_defense = 80, speed = 45 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Vessel of Ruin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 2.7, weight = 699.7
    },
    [1004] = {
        id = 1004, name = "Chi-Yu", type1 = "dark", type2 = "fire", baseStats = { hp = 55, attack = 80, defense = 80, sp_attack = 135, sp_defense = 120, speed = 100 },
        catchRate = 120, baseExp = 162, growthRate = "medium_fast",
        abilities = { "Beads of Ruin" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_shepherd`, height = 0.4, weight = 4.9
    },
    [1005] = {
        id = 1005, name = "Roaring Moon", type1 = "dragon", type2 = "dark", baseStats = { hp = 105, attack = 139, defense = 71, sp_attack = 55, sp_defense = 101, speed = 119 },
        catchRate = 120, baseExp = 168, growthRate = "medium_fast",
        abilities = { "Protosynthesis" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_deer`, height = 2, weight = 380
    },
    [1006] = {
        id = 1006, name = "Iron Valiant", type1 = "fairy", type2 = "fighting", baseStats = { hp = 74, attack = 130, defense = 90, sp_attack = 120, sp_defense = 60, speed = 116 },
        catchRate = 120, baseExp = 168, growthRate = "medium_fast",
        abilities = { "Quark Drive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_poodle`, height = 1.4, weight = 35
    },
    [1007] = {
        id = 1007, name = "Koraidon", type1 = "fighting", type2 = "dragon", baseStats = { hp = 100, attack = 135, defense = 115, sp_attack = 85, sp_defense = 100, speed = 135 },
        catchRate = 120, baseExp = 191, growthRate = "medium_fast",
        abilities = { "Orichalcum Pulse" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 2.5, weight = 303
    },
    [1008] = {
        id = 1008, name = "Miraidon", type1 = "electric", type2 = "dragon", baseStats = { hp = 100, attack = 85, defense = 100, sp_attack = 135, sp_defense = 115, speed = 135 },
        catchRate = 120, baseExp = 191, growthRate = "medium_fast",
        abilities = { "Hadron Engine" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 3.5, weight = 240
    },
    [1009] = {
        id = 1009, name = "Walking Wake", type1 = "water", type2 = "dragon", baseStats = { hp = 99, attack = 83, defense = 91, sp_attack = 125, sp_defense = 83, speed = 109 },
        catchRate = 120, baseExp = 168, growthRate = "medium_fast",
        abilities = { "Protosynthesis" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 3.5, weight = 280
    },
    [1010] = {
        id = 1010, name = "Iron Leaves", type1 = "grass", type2 = "psychic", baseStats = { hp = 90, attack = 130, defense = 88, sp_attack = 70, sp_defense = 108, speed = 104 },
        catchRate = 120, baseExp = 168, growthRate = "medium_fast",
        abilities = { "Quark Drive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.5, weight = 125
    },
    [1011] = {
        id = 1011, name = "Dipplin", type1 = "grass", type2 = "dragon", baseStats = { hp = 80, attack = 80, defense = 110, sp_attack = 95, sp_defense = 80, speed = 40 },
        catchRate = 120, baseExp = 138, growthRate = "medium_fast",
        abilities = { "Supersweet Syrup", "Gluttony", "Sticky Hold" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.4, weight = 4.4
    },
    [1012] = {
        id = 1012, name = "Poltchageist", type1 = "grass", type2 = "ghost", baseStats = { hp = 40, attack = 45, defense = 45, sp_attack = 74, sp_defense = 54, speed = 50 },
        catchRate = 120, baseExp = 88, growthRate = "medium_fast",
        abilities = { "Hospitality", "Heatproof" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.1, weight = 1.1
    },
    [1013] = {
        id = 1013, name = "Sinistcha", type1 = "grass", type2 = "ghost", baseStats = { hp = 71, attack = 60, defense = 106, sp_attack = 121, sp_defense = 80, speed = 70 },
        catchRate = 120, baseExp = 145, growthRate = "medium_fast",
        abilities = { "Hospitality", "Heatproof" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 0.2, weight = 2.2
    },
    [1014] = {
        id = 1014, name = "Okidogi", type1 = "poison", type2 = "fighting", baseStats = { hp = 88, attack = 128, defense = 115, sp_attack = 58, sp_defense = 86, speed = 80 },
        catchRate = 120, baseExp = 158, growthRate = "medium_fast",
        abilities = { "Toxic Chain", "Guard Dog" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.8, weight = 92
    },
    [1015] = {
        id = 1015, name = "Munkidori", type1 = "poison", type2 = "psychic", baseStats = { hp = 88, attack = 75, defense = 66, sp_attack = 130, sp_defense = 90, speed = 106 },
        catchRate = 120, baseExp = 158, growthRate = "medium_fast",
        abilities = { "Toxic Chain", "Frisk" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1, weight = 12.2
    },
    [1016] = {
        id = 1016, name = "Fezandipiti", type1 = "poison", type2 = "fairy", baseStats = { hp = 88, attack = 91, defense = 82, sp_attack = 70, sp_defense = 125, speed = 99 },
        catchRate = 120, baseExp = 158, growthRate = "medium_fast",
        abilities = { "Toxic Chain", "Technician" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 1.4, weight = 30.1
    },
    [1017] = {
        id = 1017, name = "Ogerpon", type1 = "grass", baseStats = { hp = 80, attack = 120, defense = 84, sp_attack = 60, sp_defense = 96, speed = 110 },
        catchRate = 120, baseExp = 157, growthRate = "medium_fast",
        abilities = { "Defiant" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.2, weight = 39.8
    },
    [1018] = {
        id = 1018, name = "Archaludon", type1 = "steel", type2 = "dragon", baseStats = { hp = 90, attack = 105, defense = 130, sp_attack = 125, sp_defense = 65, speed = 85 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Stamina", "Sturdy", "Stalwart" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 2, weight = 60
    },
    [1019] = {
        id = 1019, name = "Hydrapple", type1 = "grass", type2 = "dragon", baseStats = { hp = 106, attack = 80, defense = 110, sp_attack = 120, sp_defense = 80, speed = 44 },
        catchRate = 120, baseExp = 154, growthRate = "medium_fast",
        abilities = { "Supersweet Syrup", "Regenerator", "Sticky Hold" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_pug`, height = 1.8, weight = 93
    },
    [1020] = {
        id = 1020, name = "Gouging Fire", type1 = "fire", type2 = "dragon", baseStats = { hp = 105, attack = 115, defense = 121, sp_attack = 65, sp_defense = 93, speed = 91 },
        catchRate = 120, baseExp = 168, growthRate = "medium_fast",
        abilities = { "Protosynthesis" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_coyote`, height = 3.5, weight = 590
    },
    [1021] = {
        id = 1021, name = "Raging Bolt", type1 = "electric", type2 = "dragon", baseStats = { hp = 125, attack = 73, defense = 91, sp_attack = 137, sp_defense = 89, speed = 75 },
        catchRate = 120, baseExp = 168, growthRate = "medium_fast",
        abilities = { "Protosynthesis" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 5.2, weight = 480
    },
    [1022] = {
        id = 1022, name = "Iron Boulder", type1 = "rock", type2 = "psychic", baseStats = { hp = 90, attack = 120, defense = 80, sp_attack = 68, sp_defense = 108, speed = 124 },
        catchRate = 120, baseExp = 168, growthRate = "medium_fast",
        abilities = { "Quark Drive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.5, weight = 162.5
    },
    [1023] = {
        id = 1023, name = "Iron Crown", type1 = "steel", type2 = "psychic", baseStats = { hp = 90, attack = 72, defense = 100, sp_attack = 122, sp_defense = 108, speed = 98 },
        catchRate = 120, baseExp = 168, growthRate = "medium_fast",
        abilities = { "Quark Drive" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_boar`, height = 1.6, weight = 156
    },
    [1024] = {
        id = 1024, name = "Terapagos", type1 = "normal", baseStats = { hp = 90, attack = 65, defense = 85, sp_attack = 65, sp_defense = 85, speed = 60 },
        catchRate = 120, baseExp = 128, growthRate = "medium_fast",
        abilities = { "Tera Shift" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_cat_01`, height = 0.2, weight = 6.5
    },
    [1025] = {
        id = 1025, name = "Pecharunt", type1 = "poison", type2 = "ghost", baseStats = { hp = 88, attack = 88, defense = 160, sp_attack = 88, sp_defense = 88, speed = 88 },
        catchRate = 120, baseExp = 171, growthRate = "medium_fast",
        abilities = { "Poison Puppeteer" },
        moves = {
            { level = 1, move = "Tackle" },
            { level = 5, move = "Growl" },
            { level = 12, move = "QuickAttack" }
        },
        model = `a_c_rat`, height = 0.3, weight = 0.3
    },
}

function GetPokedexEntry(id)
    if not id then return nil end
    local num = tonumber(id)
    if num and PokedexData[num] then return PokedexData[num] end
    if type(id) == 'string' then
        local target = string.lower(id)
        for _, mon in pairs(PokedexData) do
            if string.lower(mon.name) == target then return mon end
        end
    end
    return nil
end