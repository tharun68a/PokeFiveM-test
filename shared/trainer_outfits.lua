-- ====================================================================
-- PokeFiveM Framework - Trainer Outfits & Ped Appearance Engine
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- ====================================================================

PokeCore = PokeCore or {}
PokeCore.Shared = PokeCore.Shared or {}
PokeCore.Functions = PokeCore.Functions or {}

PokeCore.Shared.TrainerOutfits = {
    -- Male Trainer Presets
    ['red'] = {
        name = 'red',
        label = 'Red (Kanto Champion)',
        gender = 0,
        model = 'mp_m_freemode_01',
        description = 'The iconic classic Pokémon Trainer from Pallet Town.',
        components = {
            [0]  = { drawable = 0, texture = 0 },   -- Face
            [2]  = { drawable = 8, texture = 1 },   -- Hair (Short brown/black)
            [3]  = { drawable = 0, texture = 0 },   -- Torso / Hands
            [4]  = { drawable = 10, texture = 0 },  -- Legs (Blue denim jeans)
            [5]  = { drawable = 40, texture = 0 },  -- Bag (Trainer backpack)
            [6]  = { drawable = 1, texture = 0 },   -- Shoes (Red/white running sneakers)
            [7]  = { drawable = 0, texture = 0 },   -- Accessories
            [8]  = { drawable = 15, texture = 0 },  -- Undershirt (Dark inner tee)
            [11] = { drawable = 31, texture = 0 }   -- Tops (Red & white trainer jacket)
        },
        props = {
            [0] = { drawable = 14, texture = 0 }   -- Prop Hat (Red Trainer Baseball Cap)
        }
    },
    ['ethan'] = {
        name = 'ethan',
        label = 'Ethan (Johto Adventurer)',
        gender = 0,
        model = 'mp_m_freemode_01',
        description = 'The spirited Pokémon Trainer from New Bark Town.',
        components = {
            [0]  = { drawable = 1, texture = 0 },
            [2]  = { drawable = 12, texture = 0 },
            [3]  = { drawable = 0, texture = 0 },
            [4]  = { drawable = 15, texture = 0 },  -- Training shorts
            [5]  = { drawable = 44, texture = 1 },  -- Courier backpack
            [6]  = { drawable = 3, texture = 0 },   -- Athletic runners
            [7]  = { drawable = 0, texture = 0 },
            [8]  = { drawable = 15, texture = 0 },
            [11] = { drawable = 14, texture = 0 }   -- Sport hoodie
        },
        props = {
            [0] = { drawable = 9, texture = 2 }    -- Backward cap
        }
    },
    ['lucas'] = {
        name = 'lucas',
        label = 'Lucas (Sinnoh Explorer)',
        gender = 0,
        model = 'mp_m_freemode_01',
        description = 'The studious Pokémon Trainer from Twinleaf Town.',
        components = {
            [0]  = { drawable = 2, texture = 0 },
            [2]  = { drawable = 10, texture = 1 },
            [3]  = { drawable = 0, texture = 0 },
            [4]  = { drawable = 1, texture = 0 },   -- Dark trousers
            [5]  = { drawable = 40, texture = 2 },  -- Field pack
            [6]  = { drawable = 10, texture = 0 },  -- Explorer boots
            [7]  = { drawable = 0, texture = 0 },
            [8]  = { drawable = 15, texture = 0 },
            [11] = { drawable = 4, texture = 0 }    -- Vest over shirt
        },
        props = {
            [0] = { drawable = 12, texture = 0 }   -- Trainer beret
        }
    },

    -- Female Trainer Presets
    ['leaf'] = {
        name = 'leaf',
        label = 'Leaf (Kanto Champion)',
        gender = 1,
        model = 'mp_f_freemode_01',
        description = 'The courageous female Pokémon Trainer from Pallet Town.',
        components = {
            [0]  = { drawable = 21, texture = 0 },  -- Face
            [2]  = { drawable = 4, texture = 1 },   -- Hair (Long brown)
            [3]  = { drawable = 3, texture = 0 },   -- Torso / Hands
            [4]  = { drawable = 14, texture = 0 },  -- Legs (Blue pleated skirt)
            [5]  = { drawable = 40, texture = 0 },  -- Bag (Shoulder satchel)
            [6]  = { drawable = 3, texture = 0 },   -- Shoes (Red sneakers with high socks)
            [7]  = { drawable = 0, texture = 0 },
            [8]  = { drawable = 14, texture = 0 },  -- Inner shirt
            [11] = { drawable = 23, texture = 0 }   -- Top (Turquoise sleeveless top)
        },
        props = {
            [0] = { drawable = 10, texture = 0 }   -- Prop Hat (White sunhat with red band)
        }
    },
    ['dawn'] = {
        name = 'dawn',
        label = 'Dawn (Sinnoh Champion)',
        gender = 1,
        model = 'mp_f_freemode_01',
        description = 'The stylish and confident Pokémon Coordinator from Sinnoh.',
        components = {
            [0]  = { drawable = 22, texture = 0 },
            [2]  = { drawable = 9, texture = 1 },   -- Hair (Twin tails / long)
            [3]  = { drawable = 3, texture = 0 },
            [4]  = { drawable = 16, texture = 0 },  -- Pink skirt
            [5]  = { drawable = 44, texture = 0 },  -- Explorer bag
            [6]  = { drawable = 24, texture = 0 },  -- Snow runner boots
            [7]  = { drawable = 0, texture = 0 },
            [8]  = { drawable = 14, texture = 0 },
            [11] = { drawable = 25, texture = 0 }   -- Black vest over shirt
        },
        props = {
            [0] = { drawable = 12, texture = 0 }   -- White knit beanie
        }
    },
    ['serena'] = {
        name = 'serena',
        label = 'Serena (Kalos Stylist)',
        gender = 1,
        model = 'mp_f_freemode_01',
        description = 'The chic and fashionable Pokémon Performer from Kalos.',
        components = {
            [0]  = { drawable = 23, texture = 0 },
            [2]  = { drawable = 11, texture = 2 },
            [3]  = { drawable = 3, texture = 0 },
            [4]  = { drawable = 10, texture = 0 },  -- Pleated skirt
            [5]  = { drawable = 40, texture = 1 },  -- Designer bag
            [6]  = { drawable = 13, texture = 0 },  -- Thigh-high boots
            [7]  = { drawable = 0, texture = 0 },
            [8]  = { drawable = 14, texture = 0 },
            [11] = { drawable = 30, texture = 0 }   -- Red top / dress
        },
        props = {
            [0] = { drawable = 14, texture = 0 }   -- Fedora hat
        }
    }
}

-- Apply Trainer Outfit to any Ped (Player or Preview NPC)
function PokeCore.Functions.ApplyTrainerOutfit(ped, outfitKey, gender)
    if not DoesEntityExist(ped) then return false end

    gender = tonumber(gender) or 0
    outfitKey = outfitKey or (gender == 1 and 'leaf' or 'red')
    local outfit = PokeCore.Shared.TrainerOutfits[outfitKey]
    if not outfit then
        outfit = (gender == 1) and PokeCore.Shared.TrainerOutfits['leaf'] or PokeCore.Shared.TrainerOutfits['red']
    end

    -- Clear all existing props first
    ClearPedProp(ped, 0)
    ClearPedProp(ped, 1)

    -- Apply components
    for compId, compData in pairs(outfit.components or {}) do
        SetPedComponentVariation(ped, compId, compData.drawable, compData.texture, 2)
    end

    -- Apply props (hats, glasses)
    for propId, propData in pairs(outfit.props or {}) do
        if propData.drawable >= 0 then
            SetPedPropIndex(ped, propId, propData.drawable, propData.texture, true)
        end
    end

    return true
end
