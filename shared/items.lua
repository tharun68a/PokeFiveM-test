-- ====================================================================
-- PokeFiveM Framework - Shared Item Registry
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- Aligned with Fivemon Core & Monster Resources Standards
-- (https://wiki.fivemon.gg/latest/monsters/resources/items/)
-- ====================================================================

PokeCore = PokeCore or {}
PokeCore.Shared = PokeCore.Shared or {}

PokeCore.Shared.Items = {
    -- ================================================================
    -- 1. Capture Devices (Poké Balls / Five Cubes)
    -- ================================================================
    ['pokeball'] = {
        name = 'pokeball',
        label = 'Poké Ball',
        weight = 100,
        type = 'ball',
        catchMultiplier = 1.0,
        unique = false,
        useable = true,
        image = 'pokeball.png',
        description = 'A standard device for catching wild Pokémon.',
        price = 200
    },
    ['greatball'] = {
        name = 'greatball',
        label = 'Great Ball',
        weight = 100,
        type = 'ball',
        catchMultiplier = 1.5,
        unique = false,
        useable = true,
        image = 'greatball.png',
        description = 'A high-performance ball with an improved 1.5x catch rate.',
        price = 600
    },
    ['ultraball'] = {
        name = 'ultraball',
        label = 'Ultra Ball',
        weight = 100,
        type = 'ball',
        catchMultiplier = 2.0,
        unique = false,
        useable = true,
        image = 'ultraball.png',
        description = 'An ultra-grade ball providing a high 2.0x capture rate.',
        price = 1200
    },
    ['masterball'] = {
        name = 'masterball',
        label = 'Master Ball',
        weight = 100,
        type = 'ball',
        catchMultiplier = 255.0,
        unique = true,
        useable = true,
        image = 'masterball.png',
        description = 'The ultimate ball that captures any wild Pokémon without fail (100% rate).',
        price = 50000
    },
    ['safariball'] = {
        name = 'safariball',
        label = 'Safari Ball',
        weight = 100,
        type = 'ball',
        catchMultiplier = 1.5,
        unique = false,
        useable = true,
        image = 'safariball.png',
        description = 'A special ball used exclusively in the Great Safari Zone.',
        price = 300
    },
    ['diveball'] = {
        name = 'diveball',
        label = 'Dive Ball',
        weight = 100,
        type = 'ball',
        catchMultiplier = 3.5,
        condition = 'water',
        unique = false,
        useable = true,
        image = 'diveball.png',
        description = 'A ball that works exceptionally well (3.5x) when fishing or surfing in water biomes.',
        price = 1000
    },
    ['duskball'] = {
        name = 'duskball',
        label = 'Dusk Ball',
        weight = 100,
        type = 'ball',
        catchMultiplier = 3.0,
        condition = 'night_cave',
        unique = false,
        useable = true,
        image = 'duskball.png',
        description = 'A ball that makes it easier to capture Pokémon at night or inside dark caves (3.0x).',
        price = 1000
    },
    ['quickball'] = {
        name = 'quickball',
        label = 'Quick Ball',
        weight = 100,
        type = 'ball',
        catchMultiplier = 5.0,
        condition = 'turn_one',
        unique = false,
        useable = true,
        image = 'quickball.png',
        description = 'A ball that provides a massive 5.0x capture bonus if used on the very first turn of battle.',
        price = 1000
    },
    ['netball'] = {
        name = 'netball',
        label = 'Net Ball',
        weight = 100,
        type = 'ball',
        catchMultiplier = 3.5,
        condition = 'water_bug',
        unique = false,
        useable = true,
        image = 'netball.png',
        description = 'A specialized ball that works exceptionally well on Water and Bug-type Pokémon (3.5x).',
        price = 1000
    },
    ['healball'] = {
        name = 'healball',
        label = 'Heal Ball',
        weight = 100,
        type = 'ball',
        catchMultiplier = 1.0,
        effect = 'instant_heal',
        unique = false,
        useable = true,
        image = 'healball.png',
        description = 'A remedial ball that completely restores the caught Pokémon HP and eliminates status conditions.',
        price = 300
    },
    ['timerball'] = {
        name = 'timerball',
        label = 'Timer Ball',
        weight = 100,
        type = 'ball',
        catchMultiplier = 1.0,
        condition = 'turn_scale',
        unique = false,
        useable = true,
        image = 'timerball.png',
        description = 'A ball that becomes progressively more effective the more turns a battle lasts (up to 4.0x).',
        price = 1000
    },
    ['repeatball'] = {
        name = 'repeatball',
        label = 'Repeat Ball',
        weight = 100,
        type = 'ball',
        catchMultiplier = 3.5,
        condition = 'already_caught',
        unique = false,
        useable = true,
        image = 'repeatball.png',
        description = 'A ball that works exceptionally well on species you have already registered in your Pokédex.',
        price = 1000
    },

    -- ================================================================
    -- 2. Medicine & Recovery (Fivemon Resources Catalog)
    -- ================================================================
    ['potion'] = {
        name = 'potion',
        label = 'Potion',
        weight = 200,
        type = 'medicine',
        healAmount = 20,
        unique = false,
        useable = true,
        image = 'potion.png',
        description = 'Restores 20 HP of a single Pokémon.',
        price = 300
    },
    ['superpotion'] = {
        name = 'superpotion',
        label = 'Super Potion',
        weight = 200,
        type = 'medicine',
        healAmount = 50,
        unique = false,
        useable = true,
        image = 'superpotion.png',
        description = 'Restores 50 HP of a single Pokémon.',
        price = 700
    },
    ['hyperpotion'] = {
        name = 'hyperpotion',
        label = 'Hyper Potion',
        weight = 200,
        type = 'medicine',
        healAmount = 120,
        unique = false,
        useable = true,
        image = 'hyperpotion.png',
        description = 'Restores 120 HP of a single Pokémon.',
        price = 1500
    },
    ['maxpotion'] = {
        name = 'maxpotion',
        label = 'Max Potion',
        weight = 200,
        type = 'medicine',
        healAmount = 9999,
        unique = false,
        useable = true,
        image = 'maxpotion.png',
        description = 'Fully restores the HP of a single Pokémon.',
        price = 2500
    },
    ['fullrestore'] = {
        name = 'fullrestore',
        label = 'Full Restore',
        weight = 200,
        type = 'medicine',
        healAmount = 9999,
        cureStatus = 'all',
        unique = false,
        useable = true,
        image = 'fullrestore.png',
        description = 'Fully restores the HP and eliminates all status conditions of a single Pokémon.',
        price = 3000
    },
    ['revive'] = {
        name = 'revive',
        label = 'Revive',
        weight = 150,
        type = 'medicine',
        revivePercent = 0.5,
        unique = false,
        useable = true,
        image = 'revive.png',
        description = 'Revives a fainted Pokémon with half (50%) of its maximum HP.',
        price = 1500
    },
    ['maxrevive'] = {
        name = 'maxrevive',
        label = 'Max Revive',
        weight = 150,
        type = 'medicine',
        revivePercent = 1.0,
        unique = false,
        useable = true,
        image = 'maxrevive.png',
        description = 'Revives a fainted Pokémon with all (100%) of its maximum HP.',
        price = 4000
    },
    ['antidote'] = {
        name = 'antidote',
        label = 'Antidote',
        weight = 100,
        type = 'medicine',
        cureStatus = 'poison',
        unique = false,
        useable = true,
        image = 'antidote.png',
        description = 'Heals a poisoned Pokémon.',
        price = 250
    },
    ['paralyzeheal'] = {
        name = 'paralyzeheal',
        label = 'Paralyze Heal',
        weight = 100,
        type = 'medicine',
        cureStatus = 'paralysis',
        unique = false,
        useable = true,
        image = 'paralyzeheal.png',
        description = 'Cures a paralyzed Pokémon.',
        price = 250
    },
    ['awakening'] = {
        name = 'awakening',
        label = 'Awakening',
        weight = 100,
        type = 'medicine',
        cureStatus = 'sleep',
        unique = false,
        useable = true,
        image = 'awakening.png',
        description = 'Awakens a sleeping Pokémon.',
        price = 250
    },
    ['burnheal'] = {
        name = 'burnheal',
        label = 'Burn Heal',
        weight = 100,
        type = 'medicine',
        cureStatus = 'burn',
        unique = false,
        useable = true,
        image = 'burnheal.png',
        description = 'Heals a Pokémon from burns.',
        price = 250
    },
    ['iceheal'] = {
        name = 'iceheal',
        label = 'Ice Heal',
        weight = 100,
        type = 'medicine',
        cureStatus = 'freeze',
        unique = false,
        useable = true,
        image = 'iceheal.png',
        description = 'Defrosts and heals a frozen Pokémon.',
        price = 250
    },
    ['fullheal'] = {
        name = 'fullheal',
        label = 'Full Heal',
        weight = 100,
        type = 'medicine',
        cureStatus = 'all',
        unique = false,
        useable = true,
        image = 'fullheal.png',
        description = 'Heals all status conditions (poison, burn, sleep, freeze, paralysis) of a single Pokémon.',
        price = 600
    },
    ['elixir'] = {
        name = 'elixir',
        label = 'Elixir',
        weight = 150,
        type = 'medicine',
        ppRestore = 10,
        unique = false,
        useable = true,
        image = 'elixir.png',
        description = 'Restores 10 PP to all moves of a selected Pokémon.',
        price = 3000
    },
    ['maxelixir'] = {
        name = 'maxelixir',
        label = 'Max Elixir',
        weight = 150,
        type = 'medicine',
        ppRestore = 99,
        unique = false,
        useable = true,
        image = 'maxelixir.png',
        description = 'Fully restores the PP of all moves of a selected Pokémon.',
        price = 5000
    },

    -- ================================================================
    -- 3. Evolutionary Stones & Gems (Fivemon Standards)
    -- ================================================================
    ['firestone'] = {
        name = 'firestone',
        label = 'Fire Stone',
        weight = 300,
        type = 'evolution',
        evolutionType = 'fire',
        unique = false,
        useable = true,
        image = 'firestone.png',
        description = 'An evolutionary stone that radiates intense warmth. Evolves Vulpix, Growlithe, Eevee.',
        price = 5000
    },
    ['waterstone'] = {
        name = 'waterstone',
        label = 'Water Stone',
        weight = 300,
        type = 'evolution',
        evolutionType = 'water',
        unique = false,
        useable = true,
        image = 'waterstone.png',
        description = 'A clear blue stone that evolves Poliwhirl, Shellder, Staryu, Eevee.',
        price = 5000
    },
    ['thunderstone'] = {
        name = 'thunderstone',
        label = 'Thunder Stone',
        weight = 300,
        type = 'evolution',
        evolutionType = 'electric',
        unique = false,
        useable = true,
        image = 'thunderstone.png',
        description = 'An evolutionary stone with a lightning bolt pattern. Evolves Pikachu, Eevee.',
        price = 5000
    },
    ['leafstone'] = {
        name = 'leafstone',
        label = 'Leaf Stone',
        weight = 300,
        type = 'evolution',
        evolutionType = 'grass',
        unique = false,
        useable = true,
        image = 'leafstone.png',
        description = 'An evolutionary stone with an unmistakable leaf imprint. Evolves Gloom, Weepinbell, Exeggcute.',
        price = 5000
    },
    ['moonstone'] = {
        name = 'moonstone',
        label = 'Moon Stone',
        weight = 300,
        type = 'evolution',
        evolutionType = 'moon',
        unique = false,
        useable = true,
        image = 'moonstone.png',
        description = 'A peculiar stone that glows like the night sky. Evolves Nidorina, Nidorino, Clefairy, Jigglypuff.',
        price = 5000
    },
    ['sunstone'] = {
        name = 'sunstone',
        label = 'Sun Stone',
        weight = 300,
        type = 'evolution',
        evolutionType = 'sun',
        unique = false,
        useable = true,
        image = 'sunstone.png',
        description = 'A red-orange stone that glows like the afternoon sun. Evolves Gloom, Sunkern, Cottonee.',
        price = 5000
    },
    ['duskstone'] = {
        name = 'duskstone',
        label = 'Dusk Stone',
        weight = 300,
        type = 'evolution',
        evolutionType = 'dusk',
        unique = false,
        useable = true,
        image = 'duskstone.png',
        description = 'A dark, shadowy stone that evolves Murkrow, Misdreavus, Lampent.',
        price = 5000
    },
    ['dawnstone'] = {
        name = 'dawnstone',
        label = 'Dawn Stone',
        weight = 300,
        type = 'evolution',
        evolutionType = 'dawn',
        unique = false,
        useable = true,
        image = 'dawnstone.png',
        description = 'A sparkling, crystalline stone that evolves male Kirlia and female Snorunt.',
        price = 5000
    },
    ['shinystone'] = {
        name = 'shinystone',
        label = 'Shiny Stone',
        weight = 300,
        type = 'evolution',
        evolutionType = 'shiny',
        unique = false,
        useable = true,
        image = 'shinystone.png',
        description = 'A dazzling stone that shines with bright light. Evolves Togetic, Roselia, Minccino.',
        price = 5000
    },
    ['icestone'] = {
        name = 'icestone',
        label = 'Ice Stone',
        weight = 300,
        type = 'evolution',
        evolutionType = 'ice',
        unique = false,
        useable = true,
        image = 'icestone.png',
        description = 'A freezing stone as cold as glacier ice. Evolves Alolan Vulpix, Alolan Sandshrew, Eevee.',
        price = 5000
    },
    ['everstone'] = {
        name = 'everstone',
        label = 'Everstone (Evergem)',
        weight = 300,
        type = 'held',
        effect = 'prevent_evolution',
        unique = false,
        useable = true,
        image = 'everstone.png',
        description = 'When held by a Pokémon, it prevents them from evolving upon level up.',
        price = 2500
    },

    -- ================================================================
    -- 4. Progression, Held & Battle Items (Fivemon Core Standards)
    -- ================================================================
    ['core_egg'] = {
        name = 'core_egg',
        label = 'Core Egg (Lucky Egg)',
        weight = 200,
        type = 'held',
        expMultiplier = 1.5,
        unique = false,
        useable = true,
        image = 'luckyegg.png',
        description = 'An egg filled with happiness. The holder receives 50% more Exp. Points in battles.',
        price = 15000
    },
    ['exp_share'] = {
        name = 'exp_share',
        label = 'Exp. Share Device',
        weight = 300,
        type = 'key_item',
        unique = true,
        useable = true,
        image = 'expshare.png',
        description = 'When active, shares battle experience across all members of your party.',
        price = 20000
    },
    ['leftovers'] = {
        name = 'leftovers',
        label = 'Leftovers',
        weight = 100,
        type = 'held',
        turnHealPercent = 0.0625,
        unique = false,
        useable = true,
        image = 'leftovers.png',
        description = 'An item to be held by a Pokémon. The holder restores 1/16 of max HP at the end of each battle turn.',
        price = 12000
    },
    ['shinyfier'] = {
        name = 'shinyfier',
        label = 'Shiny Charm (Shinyfier)',
        weight = 200,
        type = 'key_item',
        shinyMultiplier = 3.0,
        unique = true,
        useable = true,
        image = 'shinycharm.png',
        description = 'A mystical talisman that increases the wild Shiny Pokémon encounter rate by 3x.',
        price = 50000
    },

    -- ================================================================
    -- 5. Vitamins & Permanent Stat Boosters
    -- ================================================================
    ['rarecandy'] = {
        name = 'rarecandy',
        label = 'Rare Candy',
        weight = 50,
        type = 'growth',
        unique = false,
        useable = true,
        image = 'rarecandy.png',
        description = 'Instantly raises the level of a single Pokémon by one.',
        price = 10000
    },
    ['hp_up'] = {
        name = 'hp_up',
        label = 'HP Up',
        weight = 100,
        type = 'vitamin',
        stat = 'hp',
        evGain = 10,
        unique = false,
        useable = true,
        image = 'hp_up.png',
        description = 'A nutritious drink that permanently raises the base HP of a single Pokémon.',
        price = 9800
    },
    ['protein'] = {
        name = 'protein',
        label = 'Protein',
        weight = 100,
        type = 'vitamin',
        stat = 'attack',
        evGain = 10,
        unique = false,
        useable = true,
        image = 'protein.png',
        description = 'A nutritious drink that permanently raises the base Attack stat of a single Pokémon.',
        price = 9800
    },
    ['iron'] = {
        name = 'iron',
        label = 'Iron',
        weight = 100,
        type = 'vitamin',
        stat = 'defense',
        evGain = 10,
        unique = false,
        useable = true,
        image = 'iron.png',
        description = 'A nutritious drink that permanently raises the base Defense stat of a single Pokémon.',
        price = 9800
    },
    ['calcium'] = {
        name = 'calcium',
        label = 'Calcium',
        weight = 100,
        type = 'vitamin',
        stat = 'sp_attack',
        evGain = 10,
        unique = false,
        useable = true,
        image = 'calcium.png',
        description = 'A nutritious drink that permanently raises the base Special Attack stat of a single Pokémon.',
        price = 9800
    },
    ['zinc'] = {
        name = 'zinc',
        label = 'Zinc',
        weight = 100,
        type = 'vitamin',
        stat = 'sp_defense',
        evGain = 10,
        unique = false,
        useable = true,
        image = 'zinc.png',
        description = 'A nutritious drink that permanently raises the base Special Defense stat of a single Pokémon.',
        price = 9800
    },
    ['carbos'] = {
        name = 'carbos',
        label = 'Carbos',
        weight = 100,
        type = 'vitamin',
        stat = 'speed',
        evGain = 10,
        unique = false,
        useable = true,
        image = 'carbos.png',
        description = 'A nutritious drink that permanently raises the base Speed stat of a single Pokémon.',
        price = 9800
    },

    -- ================================================================
    -- 6. Exploration, World & Utility Items
    -- ================================================================
    ['repel'] = {
        name = 'repel',
        label = 'Repel',
        weight = 150,
        type = 'exploration',
        durationSteps = 100,
        unique = false,
        useable = true,
        image = 'repel.png',
        description = 'An aerosol spray that prevents wild Pokémon encounters for 100 paces.',
        price = 400
    },
    ['superrepel'] = {
        name = 'superrepel',
        label = 'Super Repel',
        weight = 150,
        type = 'exploration',
        durationSteps = 200,
        unique = false,
        useable = true,
        image = 'superrepel.png',
        description = 'An aerosol spray that prevents wild Pokémon encounters for 200 paces.',
        price = 700
    },
    ['maxrepel'] = {
        name = 'maxrepel',
        label = 'Max Repel',
        weight = 150,
        type = 'exploration',
        durationSteps = 250,
        unique = false,
        useable = true,
        image = 'maxrepel.png',
        description = 'An aerosol spray that prevents wild Pokémon encounters for 250 paces.',
        price = 900
    },
    ['escaperope'] = {
        name = 'escaperope',
        label = 'Escape Rope (Escape Cord)',
        weight = 200,
        type = 'exploration',
        unique = false,
        useable = true,
        image = 'escaperope.png',
        description = 'A durable long rope used to immediately teleport outside any cave or back to the nearest PokéCenter.',
        price = 1000
    },
    ['bicycle'] = {
        name = 'bicycle',
        label = 'Trainer Bicycle (Fivebike)',
        weight = 2000,
        type = 'transport',
        speedBoost = 2.0,
        unique = true,
        useable = true,
        image = 'bicycle.png',
        description = 'A foldable sports bicycle that doubles trainer movement speed across roads and pathways.',
        price = 10000
    },
    ['pokedex'] = {
        name = 'pokedex',
        label = 'Pokédex Device (Fivedex)',
        weight = 500,
        type = 'tool',
        unique = true,
        useable = true,
        image = 'pokedex.png',
        description = 'An electronic encyclopedia that records seen, caught, and detailed Pokédex habitat data.',
        price = 1000
    },
    ['phone'] = {
        name = 'phone',
        label = 'Trainer SmartPhone',
        weight = 200,
        type = 'tool',
        unique = true,
        useable = true,
        image = 'phone.png',
        description = 'A smartphone for trainer communication, GPS map tracking, and gym progression stats.',
        price = 500
    },
    ['water'] = {
        name = 'water',
        label = 'Fresh Spring Water',
        weight = 300,
        type = 'food',
        unique = false,
        useable = true,
        image = 'water.png',
        description = 'Refreshing natural spring water that replenishes trainer thirst.',
        price = 15
    },
    ['sandwich'] = {
        name = 'sandwich',
        label = 'Trainer Sandwich',
        weight = 250,
        type = 'food',
        unique = false,
        useable = true,
        image = 'sandwich.png',
        description = 'A delicious nutrient-packed sandwich to keep your energy high.',
        price = 25
    },

    -- ================================================================
    -- 7. Mounts & Creature Riders (Fivemon Mount System)
    -- ================================================================
    ['ground_mount'] = {
        name = 'ground_mount',
        label = 'Ground Mount Whistle',
        weight = 250,
        type = 'mount',
        mountCategory = 'ground',
        unique = true,
        useable = true,
        image = 'ground_mount.png',
        description = 'Whistle to instantly summon your lead Ground-type ride Pokémon (Arcanine, Rapidash, Tauros).',
        price = 15000
    },
    ['surf_mount'] = {
        name = 'surf_mount',
        label = 'Surf Mount Saddle',
        weight = 350,
        type = 'mount',
        mountCategory = 'water',
        unique = true,
        useable = true,
        image = 'surf_mount.png',
        description = 'Saddle to ride across ocean water upon your lead aquatic Pokémon (Lapras, Gyarados, Blastoise).',
        price = 20000
    },
    ['fly_mount'] = {
        name = 'fly_mount',
        label = 'Fly Mount Harness',
        weight = 400,
        type = 'mount',
        mountCategory = 'air',
        unique = true,
        useable = true,
        image = 'fly_mount.png',
        description = 'Aerodynamic harness to take flight across the skies upon your Flying Pokémon (Charizard, Pidgeot, Dragonite).',
        price = 30000
    },

    -- ================================================================
    -- Fishing Rods (Water Encounters)
    -- ================================================================
    ['old_rod'] = {
        name = 'old_rod',
        label = 'Old Rod',
        weight = 500,
        type = 'rod',
        unique = true,
        useable = true,
        image = 'old_rod.png',
        description = 'An old and battered fishing rod. Cast into water bodies to hook wild Magikarp and Goldeen.',
        price = 1000
    },
    ['good_rod'] = {
        name = 'good_rod',
        label = 'Good Rod',
        weight = 500,
        type = 'rod',
        unique = true,
        useable = true,
        image = 'good_rod.png',
        description = 'A sturdy, reliable fishing rod that catches diverse coastal and river Pokémon (Poliwag, Tentacool, Shellder).',
        price = 5000
    },
    ['super_rod'] = {
        name = 'super_rod',
        label = 'Super Rod',
        weight = 500,
        type = 'rod',
        unique = true,
        useable = true,
        image = 'super_rod.png',
        description = 'The ultimate fishing rod designed to hook powerful oceanic titans (Gyarados, Lapras, Dratini).',
        price = 15000
    },

    -- ================================================================
    -- Foraging Berries & Apricorns
    -- ================================================================
    ['berry_oran'] = {
        name = 'berry_oran',
        label = 'Oran Berry',
        weight = 50,
        type = 'berry',
        unique = false,
        useable = true,
        image = 'berry_oran.png',
        description = 'A peculiar berry that restores 10 HP to a Pokémon in need.',
        price = 100
    },
    ['berry_sitrus'] = {
        name = 'berry_sitrus',
        label = 'Sitrus Berry',
        weight = 50,
        type = 'berry',
        unique = false,
        useable = true,
        image = 'berry_sitrus.png',
        description = 'A delicious healing berry that restores 30 HP to an injured Pokémon.',
        price = 250
    },
    ['berry_leppa'] = {
        name = 'berry_leppa',
        label = 'Leppa Berry',
        weight = 50,
        type = 'berry',
        unique = false,
        useable = true,
        image = 'berry_leppa.png',
        description = 'Restores 10 PP to a selected exhausted Pokémon move.',
        price = 300
    },
    ['berry_lum'] = {
        name = 'berry_lum',
        label = 'Lum Berry',
        weight = 50,
        type = 'berry',
        unique = false,
        useable = true,
        image = 'berry_lum.png',
        description = 'A miracle curative berry that removes any status affliction (Sleep, Poison, Burn, Paralysis, Freeze).',
        price = 400
    },
    ['apricorn_red'] = {
        name = 'apricorn_red',
        label = 'Red Apricorn',
        weight = 50,
        type = 'apricorn',
        unique = false,
        useable = false,
        image = 'apricorn_red.png',
        description = 'A firm red apricorn used by ball crafters to forge Level Balls and Poké Balls.',
        price = 80
    },
    ['apricorn_blue'] = {
        name = 'apricorn_blue',
        label = 'Blue Apricorn',
        weight = 50,
        type = 'apricorn',
        unique = false,
        useable = false,
        image = 'apricorn_blue.png',
        description = 'A vibrant blue apricorn used in forging Dive Balls and Lure Balls.',
        price = 80
    },
    ['apricorn_yellow'] = {
        name = 'apricorn_yellow',
        label = 'Yellow Apricorn',
        weight = 50,
        type = 'apricorn',
        unique = false,
        useable = false,
        image = 'apricorn_yellow.png',
        description = 'A smooth yellow apricorn forged into Fast Balls.',
        price = 80
    },
    ['apricorn_black'] = {
        name = 'apricorn_black',
        label = 'Black Apricorn',
        weight = 50,
        type = 'apricorn',
        unique = false,
        useable = false,
        image = 'apricorn_black.png',
        description = 'A heavy black apricorn forged into Heavy Balls and Dusk Balls.',
        price = 80
    },
    ['link_cable'] = {
        name = 'link_cable',
        label = 'Linking Cord',
        weight = 100,
        type = 'stone',
        unique = false,
        useable = true,
        image = 'link_cable.png',
        description = 'A mysterious technological cable that triggers trade-based evolutions on Kadabra, Machoke, Graveler, Haunter.',
        price = 3000
    }
}

-- Backward compatibility aliases
PokeItems = PokeCore.Shared.Items

function GetItem(itemKey)
    if not itemKey then return nil, nil end
    local clean = string.lower(string.gsub(itemKey, "[%s_]+", ""))
    for k, v in pairs(PokeCore.Shared.Items) do
        local candKey = string.lower(string.gsub(k, "[%s_]+", ""))
        local candLabel = string.lower(string.gsub(v.label or v.name, "[%s_]+", ""))
        if candKey == clean or candLabel == clean then
            return v, k
        end
    end
    return nil, nil
end
