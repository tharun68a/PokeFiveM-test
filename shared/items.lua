-- ====================================================================
-- PokeFiveM Framework - Shared Item Registry
-- Developed by: Pika Studio
-- ====================================================================

PokeCore.Shared.Items = {
    -- Capture Devices
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
        description = 'A high-performance ball with an improved catch rate.',
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
        description = 'An ultra-grade ball providing a high capture rate.',
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
        description = 'The ultimate ball that captures any wild Pokémon without fail.',
        price = 50000
    },

    -- Medicine & Recovery
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
    ['revive'] = {
        name = 'revive',
        label = 'Revive',
        weight = 150,
        type = 'medicine',
        revivePercent = 0.5,
        unique = false,
        useable = true,
        image = 'revive.png',
        description = 'Revives a fainted Pokémon with half of its max HP.',
        price = 1500
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
        label = 'Parlyz Heal',
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

    -- Evolution Stones
    ['firestone'] = {
        name = 'firestone',
        label = 'Fire Stone',
        weight = 300,
        type = 'evolution',
        unique = false,
        useable = true,
        image = 'firestone.png',
        description = 'An evolutionary stone that makes certain species evolve.',
        price = 5000
    },
    ['waterstone'] = {
        name = 'waterstone',
        label = 'Water Stone',
        weight = 300,
        type = 'evolution',
        unique = false,
        useable = true,
        image = 'waterstone.png',
        description = 'An evolutionary stone that makes certain water species evolve.',
        price = 5000
    },
    ['thunderstone'] = {
        name = 'thunderstone',
        label = 'Thunder Stone',
        weight = 300,
        type = 'evolution',
        unique = false,
        useable = true,
        image = 'thunderstone.png',
        description = 'An evolutionary stone with a distinct lightning bolt imprint.',
        price = 5000
    },
    ['leafstone'] = {
        name = 'leafstone',
        label = 'Leaf Stone',
        weight = 300,
        type = 'evolution',
        unique = false,
        useable = true,
        image = 'leafstone.png',
        description = 'An evolutionary stone with an unmistakable leaf pattern.',
        price = 5000
    },
    ['moonstone'] = {
        name = 'moonstone',
        label = 'Moon Stone',
        weight = 300,
        type = 'evolution',
        unique = false,
        useable = true,
        image = 'moonstone.png',
        description = 'A peculiar stone that glows like the night sky.',
        price = 5000
    },

    -- Growth & Utilities
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
    ['pokedex'] = {
        name = 'pokedex',
        label = 'Pokédex Device',
        weight = 500,
        type = 'tool',
        unique = true,
        useable = true,
        image = 'pokedex.png',
        description = 'An electronic encyclopedia that records Pokémon data.',
        price = 1000
    },
    ['phone'] = {
        name = 'phone',
        label = 'Trainer Phone',
        weight = 200,
        type = 'tool',
        unique = true,
        useable = true,
        image = 'phone.png',
        description = 'A smartphone for calling friends, checking stats and GPS.',
        price = 500
    },
    ['water'] = {
        name = 'water',
        label = 'Spring Water',
        weight = 300,
        type = 'food',
        unique = false,
        useable = true,
        image = 'water.png',
        description = 'Refreshing natural spring water.',
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
        description = 'A delicious sandwich to keep your energy high.',
        price = 25
    }
}

-- Backward compatibility aliases
PokeItems = PokeCore.Shared.Items


function GetItem(itemKey)
    if not itemKey then return nil, nil end
    local clean = string.lower(string.gsub(itemKey, "%s+", ""))
    for k, v in pairs(PokeCore.Shared.Items) do
        if string.lower(k) == clean or string.lower(string.gsub(v.label or v.name, "%s+", "")) == clean then
            return v, k
        end
    end
    return nil, nil
end
