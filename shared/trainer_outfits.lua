-- ====================================================================
-- PokeFiveM Framework - Trainer Outfits & Ped Appearance Engine
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- Popular Open-Source FiveM Freemode Presets
-- ====================================================================

PokeCore = PokeCore or {}
PokeCore.Shared = PokeCore.Shared or {}
PokeCore.Functions = PokeCore.Functions or {}

PokeCore.Shared.TrainerOutfits = {
    -- ================================================================
    -- MALE TRAINER PRESETS (mp_m_freemode_01)
    -- ================================================================
    ['red'] = {
        name = 'red',
        label = 'Red (Kanto Champion)',
        gender = 0,
        model = 'mp_m_freemode_01',
        description = 'The legendary classic Pokémon Master from Pallet Town.',
        components = {
            [0]  = { drawable = 0, texture = 0 },   -- Face
            [2]  = { drawable = 8, texture = 1 },   -- Hair (Short brown/black)
            [3]  = { drawable = 0, texture = 0 },   -- Torso / Hands
            [4]  = { drawable = 10, texture = 0 },  -- Legs (Classic blue denim)
            [5]  = { drawable = 40, texture = 0 },  -- Bag (Red trainer backpack)
            [6]  = { drawable = 1, texture = 0 },   -- Shoes (Red/white running sneakers)
            [7]  = { drawable = 0, texture = 0 },   -- Accessories
            [8]  = { drawable = 15, texture = 0 },  -- Undershirt (Dark inner tee)
            [11] = { drawable = 31, texture = 0 }   -- Tops (Red & white trainer jacket)
        },
        props = {
            [0] = { drawable = 14, texture = 0 }   -- Prop Hat (Red Trainer Baseball Cap)
        }
    },
    ['ash'] = {
        name = 'ash',
        label = 'Ash (Pallet Adventurer)',
        gender = 0,
        model = 'mp_m_freemode_01',
        description = 'The spirited Trainer striving to be the very best like no one ever was.',
        components = {
            [0]  = { drawable = 1, texture = 0 },
            [2]  = { drawable = 12, texture = 0 },  -- Hair (Messy black)
            [3]  = { drawable = 11, texture = 0 },  -- Trainer fingerless gloves
            [4]  = { drawable = 1, texture = 1 },   -- Light blue denim
            [5]  = { drawable = 44, texture = 2 },  -- Green adventure backpack
            [6]  = { drawable = 3, texture = 1 },   -- Blue/white runners
            [7]  = { drawable = 0, texture = 0 },
            [8]  = { drawable = 15, texture = 0 },  -- Inner tee
            [11] = { drawable = 14, texture = 1 }   -- Blue & white open collared vest
        },
        props = {
            [0] = { drawable = 9, texture = 1 }    -- Red & white League cap
        }
    },
    ['ethan'] = {
        name = 'ethan',
        label = 'Ethan (Johto Adventurer)',
        gender = 0,
        model = 'mp_m_freemode_01',
        description = 'The energetic Pokémon Trainer from New Bark Town.',
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
    ['brendan'] = {
        name = 'brendan',
        label = 'Brendan (Hoenn Ace)',
        gender = 0,
        model = 'mp_m_freemode_01',
        description = 'The intrepid field researcher and ace Trainer from Littleroot.',
        components = {
            [0]  = { drawable = 2, texture = 0 },
            [2]  = { drawable = 10, texture = 1 },
            [3]  = { drawable = 11, texture = 0 },  -- Trainer gloves
            [4]  = { drawable = 5, texture = 0 },   -- Athletic runner pants
            [5]  = { drawable = 40, texture = 1 },  -- Trail backpack
            [6]  = { drawable = 25, texture = 0 },  -- High traction trail sneakers
            [7]  = { drawable = 0, texture = 0 },
            [8]  = { drawable = 15, texture = 0 },
            [11] = { drawable = 26, texture = 0 }   -- Ruby/Emerald athletic zip
        },
        props = {
            [0] = { drawable = 17, texture = 0 }   -- Two-tone knit cap
        }
    },
    ['lucas'] = {
        name = 'lucas',
        label = 'Lucas (Sinnoh Explorer)',
        gender = 0,
        model = 'mp_m_freemode_01',
        description = 'The studious Pokémon Trainer and researcher from Twinleaf Town.',
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
    ['hilbert'] = {
        name = 'hilbert',
        label = 'Hilbert (Unova Ace)',
        gender = 0,
        model = 'mp_m_freemode_01',
        description = 'The urban Trainer and Hero of Ideals from Nuvema Town.',
        components = {
            [0]  = { drawable = 1, texture = 0 },
            [2]  = { drawable = 15, texture = 1 },
            [3]  = { drawable = 0, texture = 0 },
            [4]  = { drawable = 10, texture = 2 },  -- Khaki chinos
            [5]  = { drawable = 44, texture = 0 },  -- Urban messenger pack
            [6]  = { drawable = 4, texture = 0 },   -- Canvas skate shoes
            [7]  = { drawable = 0, texture = 0 },
            [8]  = { drawable = 15, texture = 0 },
            [11] = { drawable = 65, texture = 0 }   -- Denim zip jacket
        },
        props = {
            [0] = { drawable = 14, texture = 2 }   -- White/black visor cap
        }
    },
    ['calem'] = {
        name = 'calem',
        label = 'Calem (Kalos Elite)',
        gender = 0,
        model = 'mp_m_freemode_01',
        description = 'The stylish and refined Pokémon Trainer from Vaniville Town.',
        components = {
            [0]  = { drawable = 0, texture = 0 },
            [2]  = { drawable = 21, texture = 0 },
            [3]  = { drawable = 0, texture = 0 },
            [4]  = { drawable = 4, texture = 0 },   -- Slim designer pants
            [5]  = { drawable = 40, texture = 0 },  -- Designer courier pack
            [6]  = { drawable = 1, texture = 2 },   -- High-top designer runners
            [7]  = { drawable = 0, texture = 0 },
            [8]  = { drawable = 15, texture = 0 },
            [11] = { drawable = 7, texture = 0 }    -- Blue track jacket with white collar
        },
        props = {
            [0] = { drawable = 14, texture = 1 }   -- Cap with aviators
        }
    },
    ['rocket_m'] = {
        name = 'rocket_m',
        label = 'Team Rocket (Grunt Male)',
        gender = 0,
        model = 'mp_m_freemode_01',
        description = 'Dressed in the slick tactical uniform of the notorious Team Rocket.',
        components = {
            [0]  = { drawable = 3, texture = 0 },
            [2]  = { drawable = 4, texture = 0 },
            [3]  = { drawable = 11, texture = 0 },  -- Black combat gloves
            [4]  = { drawable = 31, texture = 0 },  -- Black tactical cargos
            [5]  = { drawable = 40, texture = 3 },  -- Tactical backpack
            [6]  = { drawable = 24, texture = 0 },  -- Heavy black combat boots
            [7]  = { drawable = 0, texture = 0 },
            [8]  = { drawable = 15, texture = 0 },
            [11] = { drawable = 31, texture = 1 }   -- Dark tactical combat top
        },
        props = {
            [0] = { drawable = 12, texture = 1 }   -- Black operative beret
        }
    },

    -- ================================================================
    -- FEMALE TRAINER PRESETS (mp_f_freemode_01)
    -- ================================================================
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
        label = 'Dawn (Sinnoh Coordinator)',
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
    ['may'] = {
        name = 'may',
        label = 'May (Hoenn Explorer)',
        gender = 1,
        model = 'mp_f_freemode_01',
        description = 'The cheerful Coordinator and adventure seeker from Petalburg.',
        components = {
            [0]  = { drawable = 20, texture = 0 },
            [2]  = { drawable = 14, texture = 1 },  -- Bob hairstyle
            [3]  = { drawable = 14, texture = 0 },  -- Trainer gloves
            [4]  = { drawable = 15, texture = 0 },  -- Athletic cyclist shorts
            [5]  = { drawable = 40, texture = 2 },  -- Emerald waist pack
            [6]  = { drawable = 3, texture = 1 },   -- Two-tone runner sneakers
            [7]  = { drawable = 0, texture = 0 },
            [8]  = { drawable = 14, texture = 0 },
            [11] = { drawable = 16, texture = 0 }   -- Red fitted athletic top
        },
        props = {
            [0] = { drawable = 13, texture = 0 }   -- Red trainer bandana wrap
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
    },
    ['rosa'] = {
        name = 'rosa',
        label = 'Rosa (Unova Star)',
        gender = 1,
        model = 'mp_f_freemode_01',
        description = 'The energetic and spirited Trainer from Aspertia City.',
        components = {
            [0]  = { drawable = 21, texture = 0 },
            [2]  = { drawable = 20, texture = 1 },  -- Odango buns hair
            [3]  = { drawable = 3, texture = 0 },
            [4]  = { drawable = 11, texture = 0 },  -- Sport tights with shorts
            [5]  = { drawable = 44, texture = 2 },  -- Round trainer bag
            [6]  = { drawable = 4, texture = 1 },   -- High-top active shoes
            [7]  = { drawable = 0, texture = 0 },
            [8]  = { drawable = 14, texture = 0 },
            [11] = { drawable = 27, texture = 0 }   -- Yellow hoodie over tee
        },
        props = {
            [0] = { drawable = 14, texture = 2 }   -- Sports visor
        }
    },
    ['gloria'] = {
        name = 'gloria',
        label = 'Gloria (Galar Challenger)',
        gender = 1,
        model = 'mp_f_freemode_01',
        description = 'The spirited Gym Challenger from Postwick with classic Galar style.',
        components = {
            [0]  = { drawable = 22, texture = 0 },
            [2]  = { drawable = 14, texture = 1 },  -- Classic bob
            [3]  = { drawable = 3, texture = 0 },
            [4]  = { drawable = 14, texture = 1 },  -- Tartan plaid skirt
            [5]  = { drawable = 40, texture = 3 },  -- Leather rucksack
            [6]  = { drawable = 25, texture = 0 },  -- Buckle oxfords
            [7]  = { drawable = 0, texture = 0 },
            [8]  = { drawable = 14, texture = 0 },  -- Collared shirt
            [11] = { drawable = 41, texture = 0 }   -- Green knit cardigan
        },
        props = {
            [0] = { drawable = 12, texture = 2 }   -- Knitted tam beret
        }
    },
    ['rocket_f'] = {
        name = 'rocket_f',
        label = 'Team Rocket (Grunt Female)',
        gender = 1,
        model = 'mp_f_freemode_01',
        description = 'Dressed in the sleek dark uniform of the notorious Team Rocket.',
        components = {
            [0]  = { drawable = 23, texture = 0 },
            [2]  = { drawable = 7, texture = 0 },   -- Sleek dark hair
            [3]  = { drawable = 14, texture = 0 },  -- Leather combat gloves
            [4]  = { drawable = 10, texture = 1 },  -- Combat skirt
            [5]  = { drawable = 40, texture = 1 },  -- Tactical courier bag
            [6]  = { drawable = 24, texture = 0 },  -- High combat lace-up boots
            [7]  = { drawable = 0, texture = 0 },
            [8]  = { drawable = 14, texture = 0 },
            [11] = { drawable = 31, texture = 1 }   -- Fitted tactical turtleneck
        },
        props = {
            [0] = { drawable = 12, texture = 1 }   -- Black tactical beret
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
    ClearPedProp(ped, 2)
    ClearPedProp(ped, 6)
    ClearPedProp(ped, 7)

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

-- Global helper alias and export
ApplyTrainerOutfit = PokeCore.Functions.ApplyTrainerOutfit
exports('ApplyTrainerOutfit', PokeCore.Functions.ApplyTrainerOutfit)
