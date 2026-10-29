-- ====================================================================
-- PokeFiveM Framework - Quest & Story Missions Database
-- Developed by: Pika Studio
-- Standalone Architecture (Zero ESX Dependency)
-- ====================================================================

PokeCore.Shared = PokeCore.Shared or {}

PokeCore.Shared.Quests = {
    ['oak_research'] = {
        id = 'oak_research',
        title = "Professor Oak's Research Task",
        npc = "Professor Oak",
        pedModel = `csb_scientist`,
        coords = vector3(232.14, -412.35, 48.11),
        heading = 340.0,
        description = "Professor Oak needs field data from new trainers! Catch at least 3 wild Pokémon in the wild.",
        target_count = 3,
        type = "catch",
        reward = {
            money = 2000,
            items = {
                { name = 'greatball', count = 5 },
                { name = 'potion', count = 3 }
            }
        }
    },
    ['rocket_grunt'] = {
        id = 'rocket_grunt',
        title = "Team Rocket Skirmish",
        npc = "Rocket Grunt",
        pedModel = `g_m_y_salvagoon_01`,
        coords = vector3(1698.24, 3584.12, 35.62),
        heading = 120.0,
        description = "A suspicious Team Rocket Grunt is intimidating trainers in Sandy Shores. Defeat them in battle!",
        type = "battle",
        opponent = {
            name = "Rocket Grunt",
            pokemon = { pokedex_id = 109, name = "Koffing", level = 18 }
        },
        reward = {
            money = 3500,
            items = {
                { name = 'ultraball', count = 3 },
                { name = 'revive', count = 2 }
            }
        }
    },
    ['fossil_scientist'] = {
        id = 'fossil_scientist',
        title = "Fossil Resurrection",
        npc = "Paleontologist Davis",
        pedModel = `s_m_m_scientist_01`,
        coords = vector3(-1345.12, -1278.45, 4.86),
        heading = 290.0,
        description = "The scientist can extract ancient DNA from prehistoric fossils. Bring Old Amber to receive Aerodactyl!",
        type = "fossil",
        required_item = "oldamber",
        reward_pokemon = { pokedex_id = 142, name = "Aerodactyl", level = 20 },
        reward = {
            money = 5000
        }
    }
}

