-- ====================================================================
-- PokeFiveM Framework - Official Kanto Gyms & Leaders Database
-- Developed by: Pika Studio
-- Standalone Architecture (Zero ESX Dependency)
-- ====================================================================

PokeCore.Shared = PokeCore.Shared or {}

PokeCore.Shared.Gyms = {
    ['pewter'] = {
        id = 'pewter',
        city = 'Pewter City (Sandy Shores)',
        leader = 'Brock',
        badge = 'Boulder Badge',
        badge_index = 1,
        type = 'Rock',
        pedModel = `csb_ramp_gang`,
        coords = vector3(1851.32, 3683.41, 34.27),
        heading = 210.0,
        reward_money = 2500,
        reward_item = 'rocktomb',
        team = {
            { pokedex_id = 74, name = 'Geodude', level = 12, moves = {'tackle', 'rockthrow', 'defensecurl'} },
            { pokedex_id = 95, name = 'Onix', level = 14, moves = {'tackle', 'rockthrow', 'bind', 'screech'} }
        }
    },
    ['cerulean'] = {
        id = 'cerulean',
        city = 'Cerulean City (Del Perro Pier)',
        leader = 'Misty',
        badge = 'Cascade Badge',
        badge_index = 2,
        type = 'Water',
        pedModel = `a_f_y_beach_01`,
        coords = vector3(-1605.21, -1035.12, 13.15),
        heading = 320.0,
        reward_money = 3500,
        reward_item = 'waterpulse',
        team = {
            { pokedex_id = 120, name = 'Staryu', level = 18, moves = {'tackle', 'watergun', 'harden', 'rapidspin'} },
            { pokedex_id = 121, name = 'Starmie', level = 21, moves = {'watergun', 'swift', 'recover', 'rapidspin'} }
        }
    },
    ['vermilion'] = {
        id = 'vermilion',
        city = 'Vermilion City (Port of Los Santos)',
        leader = 'Lt. Surge',
        badge = 'Thunder Badge',
        badge_index = 3,
        type = 'Electric',
        pedModel = `s_m_y_armymech_01`,
        coords = vector3(147.24, -3012.87, 7.04),
        heading = 89.0,
        reward_money = 4500,
        reward_item = 'thunderwave',
        team = {
            { pokedex_id = 100, name = 'Voltorb', level = 21, moves = {'tackle', 'screech', 'sonicboom'} },
            { pokedex_id = 25, name = 'Pikachu', level = 18, moves = {'thundershock', 'quickattack', 'thunderwave'} },
            { pokedex_id = 26, name = 'Raichu', level = 24, moves = {'thunderbolt', 'quickattack', 'megapunch'} }
        }
    },
    ['celadon'] = {
        id = 'celadon',
        city = 'Celadon City (Vinewood Hills Garden)',
        leader = 'Erika',
        badge = 'Rainbow Badge',
        badge_index = 4,
        type = 'Grass',
        pedModel = `a_f_y_tourist_02`,
        coords = vector3(-438.12, 1598.45, 358.12),
        heading = 180.0,
        reward_money = 6000,
        reward_item = 'gigadrain',
        team = {
            { pokedex_id = 71, name = 'Victreebel', level = 29, moves = {'vinewhip', 'acid', 'sleeppowder', 'sweetscent'} },
            { pokedex_id = 114, name = 'Tangela', level = 24, moves = {'vinewhip', 'constrict', 'absorb'} },
            { pokedex_id = 45, name = 'Vileplume', level = 29, moves = {'petaldance', 'megadrain', 'poisonpowder'} }
        }
    },
    ['fuchsia'] = {
        id = 'fuchsia',
        city = 'Fuchsia City (Paleto Forest Zoo)',
        leader = 'Koga',
        badge = 'Soul Badge',
        badge_index = 5,
        type = 'Poison',
        pedModel = `g_m_m_chicold_01`,
        coords = vector3(-765.32, 5556.12, 33.48),
        heading = 30.0,
        reward_money = 7500,
        reward_item = 'toxic',
        team = {
            { pokedex_id = 109, name = 'Koffing', level = 37, moves = {'sludge', 'smokescreen', 'tackle'} },
            { pokedex_id = 89, name = 'Muk', level = 39, moves = {'sludge', 'minimize', 'screech'} },
            { pokedex_id = 110, name = 'Weezing', level = 43, moves = {'sludge', 'smokescreen', 'explosion'} }
        }
    },
    ['saffron'] = {
        id = 'saffron',
        city = 'Saffron City (Maze Bank Tower Plaza)',
        leader = 'Sabrina',
        badge = 'Marsh Badge',
        badge_index = 6,
        type = 'Psychic',
        pedModel = `ig_natalia`,
        coords = vector3(-75.12, -818.45, 326.17),
        heading = 160.0,
        reward_money = 9000,
        reward_item = 'calmmind',
        team = {
            { pokedex_id = 64, name = 'Kadabra', level = 38, moves = {'psybeam', 'recover', 'confusion'} },
            { pokedex_id = 122, name = 'Mr. Mime', level = 37, moves = {'confusion', 'lightscreen', 'barrier'} },
            { pokedex_id = 49, name = 'Venomoth', level = 38, moves = {'psybeam', 'gust', 'poisonpowder'} },
            { pokedex_id = 65, name = 'Alakazam', level = 43, moves = {'psychic', 'recover', 'psybeam'} }
        }
    },
    ['cinnabar'] = {
        id = 'cinnabar',
        city = 'Cinnabar Island (Elysian Island Refinery)',
        leader = 'Blaine',
        badge = 'Volcano Badge',
        badge_index = 7,
        type = 'Fire',
        pedModel = `s_m_m_gentransport`,
        coords = vector3(502.12, -2805.34, 6.04),
        heading = 270.0,
        reward_money = 11000,
        reward_item = 'fireblast',
        team = {
            { pokedex_id = 78, name = 'Rapidash', level = 42, moves = {'ember', 'firespin', 'tailwhip'} },
            { pokedex_id = 59, name = 'Arcanine', level = 47, moves = {'flamethrower', 'takedown', 'roar', 'bite'} }
        }
    },
    ['viridian'] = {
        id = 'viridian',
        city = 'Viridian City (Rockford Hills City Hall)',
        leader = 'Giovanni',
        badge = 'Earth Badge',
        badge_index = 8,
        type = 'Ground',
        pedModel = `g_m_m_armboss_01`,
        coords = vector3(-545.23, -204.12, 38.21),
        heading = 115.0,
        reward_money = 15000,
        reward_item = 'earthquake',
        team = {
            { pokedex_id = 111, name = 'Rhyhorn', level = 45, moves = {'hornattack', 'tailwhip', 'stomp'} },
            { pokedex_id = 51, name = 'Dugtrio', level = 42, moves = {'earthquake', 'slash', 'growl'} },
            { pokedex_id = 31, name = 'Nidoqueen', level = 44, moves = {'bodyblast', 'poisonsting', 'scratch'} },
            { pokedex_id = 34, name = 'Nidoking', level = 45, moves = {'thrash', 'poisonsting', 'tackle'} },
            { pokedex_id = 112, name = 'Rhydon', level = 50, moves = {'earthquake', 'hornattack', 'leer'} }
        }
    }
}
