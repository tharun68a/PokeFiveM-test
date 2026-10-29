-- ====================================================================
-- PokeFiveM Framework - Pokémon World Environment Controller
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- Converts GTA V Story Mode into a Peaceful, Authentic Pokémon World
-- ====================================================================

local currentZoneName = nil

-- 1. Ambient Population & Dispatch Suppression Loop
CreateThread(function()
    -- Permanently disable all 15 police dispatch services
    for i = 1, 15 do
        EnableDispatchService(i, false)
    end

    while true do
        local player = PlayerId()

        -- Completely suppress GTA Wanted Levels & Police
        SetMaxWantedLevel(0)
        SetPlayerWantedLevel(player, 0, false)
        SetPlayerWantedLevelNow(player, false)
        SetDispatchCopsForPlayer(player, false)
        SetCreateRandomCops(false)
        SetCreateRandomCopsNotOnScenarios(false)
        SetCreateRandomCopsOnScenarios(false)

        -- Suppress chaotic GTA highway traffic and aggressive civilians
        -- Keeps the world peaceful, open, and populated by Pokémon & Trainers
        SetVehicleDensityMultiplierThisFrame(0.0)
        SetRandomVehicleDensityMultiplierThisFrame(0.0)
        SetParkedVehicleDensityMultiplierThisFrame(0.02)
        SetPedDensityMultiplierThisFrame(0.05)
        SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)

        -- Remove ambient sirens, garbage trucks, and boats
        SetGarbageTrucks(false)
        SetRandomBoats(false)
        CancelCurrentPoliceReport()

        Wait(0)
    end
end)

-- 2. Pokémon World Regions & Route Banner HUD
local PokemonRegions = {
    ['AIRP'] = 'Kanto Airport & Flight Gate',
    ['ALAMO'] = 'Lake of Rage & Alamo Waters',
    ['ALTA'] = 'Saffron City Outskirts',
    ['ARMYB'] = 'Team Rocket Fortress (Fort Zancudo)',
    ['BANHAMC'] = 'Route 3 - Banham Canyon Pass',
    ['BEACH'] = 'Vermilion Coast & Vespucci Beach',
    ['BHAMCA'] = 'Route 4 - Banham Valley',
    ['BRADP'] = 'Route 5 - Braddock Pass',
    ['BRADT'] = 'Route 5 - Braddock Tunnel',
    ['BURTON'] = 'Celadon City Commercial Quarter',
    ['CALI'] = 'Mt. Silver Foothills',
    ['CHAMH'] = 'Chamberlain Pokémon Grounds',
    ['CHIL'] = 'Mt. Coronet (Mount Chiliad Wilderness)',
    ['CHU'] = 'Chumash Coastal Reserve',
    ['CMSW'] = 'Route 12 - Chiliad Mountain Wilderness',
    ['CYPRE'] = 'Cypress Pokémon Industrial Zone',
    ['DAVIS'] = 'Davis Training Gym District',
    ['DELBE'] = 'Route 19 - Del Perro Sea Route',
    ['DELPE'] = 'Celadon Pier & Del Perro Plaza',
    ['DELSOL'] = 'Sol Pokémon Canals',
    ['DOWNT'] = 'Goldenrod Downtown Metro',
    ['DTVINE'] = 'Saffron City Boulevard',
    ['EAST_V'] = 'East Saffron Hills',
    ['EBURO'] = 'El Burro Pokémon Heights',
    ['ELGORL'] = 'El Gordo Lighthouse & Route 13',
    ['ELYSIAN'] = 'Cinnabar Island Marine Port',
    ['GALFISH'] = 'Fisherman Cove & Galilee Dock',
    ['GOLF'] = 'National Pokémon Park (Golf Grounds)',
    ['GRAPES'] = 'Moomoo Farm & Grapeseed Meadows',
    ['GREATC'] = 'Route 8 - Great Chaparral Savanna',
    ['HARBOR'] = 'Vermilion Harbor & Sea Transit',
    ['HAWICK'] = 'Hawick PokéMart Shopping District',
    ['HORS'] = 'Pokémon Grand Stadium (Vinewood Racetrack)',
    ['HUMLAB'] = 'Silph Co. Research Facility (Humane Labs)',
    ['JAIL'] = 'Team Rocket Detention Complex (Bolingbroke)',
    ['KOREAT'] = 'Little Goldenrod Quarter',
    ['LACT'] = 'Land Act Reservoir & Power Plant (Zapdos Perch)',
    ['LAGO'] = 'Route 9 - Zancudo River Marsh',
    ['LDAM'] = 'Land Act Dam & Water Reserve',
    ['LEGSQU'] = 'Pallet Town Central (Legion Square)',
    ['LMESA'] = 'La Mesa Trade Depot',
    ['LOSPUER'] = 'Puerta Marine Port',
    ['MIRR'] = 'Mirror Park Lake',
    ['MORN'] = 'Morningwood Pokémon Reserve',
    ['MOVIE'] = 'Pokéstar Studios (Richards Majestic)',
    ['MTCHIL'] = 'Mt. Coronet Summit',
    ['MTGORDO'] = 'Mt. Moon (Mount Gordo Peak)',
    ['MTJOSE'] = 'Mt. Chimney (Mount Josiah)',
    ['MURRI'] = 'Murrieta Bluffs & Route 6',
    ['NCHU'] = 'North Chumash Coastal Route',
    ['NOOSE'] = 'Pokémon League Security HQ',
    ['OCEANA'] = 'Great Pacific Sea Route',
    ['PALCOV'] = 'Paleto Bay Secret Shore',
    ['PALETO'] = 'Paleto Town & North Gym Outpost',
    ['PALFOR'] = 'Viridian Forest (Paleto Woods)',
    ['PALHIGH'] = 'Palomino Mountain Trail',
    ['PALMPOW'] = 'Kanto Power Plant (Palmer-Taylor)',
    ['PALSPA'] = 'Palomino Coastal Route',
    ['PBLUFF'] = 'Pacific Bluffs Nature Reserve',
    ['PBOX'] = 'Pallet Town Pokémon Center (Pillbox Hill)',
    ['PROCOPIO'] = 'Procopio Sea Beach',
    ['RANCHO'] = 'Rancho Trainer Grounds',
    ['RGLEN'] = 'Richman Glen Pokémon Pasture',
    ['RICHM'] = 'Richman Hills Estate Reserve',
    ['ROCKF'] = 'Rockford Hills Pokémon Plaza',
    ['RTRAK'] = 'Redwood Motocross Track',
    ['SANCHIA'] = 'San Chianski Mountain Pass',
    ['SANDY'] = 'Cinnabar Desert (Sandy Shores)',
    ['SKID'] = 'Mission Row Downtown Sector',
    ['SLAB'] = 'Stab City Desert Camp',
    ['STAD'] = 'Los Santos Pokémon League Arena (Maze Bank)',
    ['STRAW'] = 'Strawberry Residential Quarter',
    ['TATAMO'] = 'Tataviam Mountain Ridge',
    ['TERMINA'] = 'Southern Island Sea Port',
    ['TEXTI'] = 'Textile City Craft Quarter',
    ['TONGVAH'] = 'Tongva Hills Vineyards & Berry Groves',
    ['TONGVAP'] = 'Tongva Valley Forest Trail',
    ['VCANA'] = 'Vespucci Canals Water Route',
    ['VESP'] = 'Vespucci Seafront Promenade',
    ['VINE'] = 'Vinewood Hills Pokémon Reserve',
    ['WINDF'] = 'Ron Alternates Wind Farm (Electric Biome)',
    ['WVINE'] = 'West Vinewood Residential Quarter',
    ['ZANCUDO'] = 'Zancudo River Wetland Sanctuary',
    ['ZP_ORT'] = 'Port of Los Santos Shipping Bay',
    ['ZQ_UAR'] = 'Davis Quartz Rock Quarry (Onix Habitat)'
}

CreateThread(function()
    while true do
        Wait(2500)
        local ped = PlayerPedId()
        if DoesEntityExist(ped) and not IsEntityDead(ped) then
            local coords = GetEntityCoords(ped)
            local zone = GetNameOfZone(coords.x, coords.y, coords.z)

            if zone and zone ~= currentZoneName then
                currentZoneName = zone
                local regionTitle = PokemonRegions[zone] or ('Route ' .. string.upper(zone))

                -- Show subtle on-screen route notification
                BeginTextCommandThefeedPost("STRING")
                AddTextComponentSubstringPlayerName(string.format("~y~[POKÉMON WORLD]~w~\nEntering ~b~%s~w~", regionTitle))
                EndTextCommandThefeedPostTicker(false, true)
            end
        end
    end
end)

-- 3. Ambient NPC Pokémon Trainers Placed Along Routes
local WorldTrainers = {
    {
        name = "Youngster Joey",
        title = "Rookie Trainer",
        coords = vector4(288.75, -572.24, 43.18, 160.0), -- Legion Square / Pallet Town
        model = `a_m_y_beach_01`,
        dialogue = "My Rattata is in the top percentage of all Rattata! Want to battle?",
        starter = 19 -- Rattata
    },
    {
        name = "Bug Catcher Sammy",
        title = "Bug Enthusiast",
        coords = vector4(-1338.25, -1538.52, 4.42, 35.0), -- Vespucci Promenade
        model = `a_m_y_hiker_01`,
        dialogue = "I caught a Caterpie in the park! Bug Pokémon grow super fast!",
        starter = 10 -- Caterpie
    },
    {
        name = "Ace Trainer Cynthia",
        title = "Pokémon Champion",
        coords = vector4(380.12, 332.45, 103.57, 180.0), -- Downtown PokéMart Plaza
        model = `a_f_y_business_02`,
        dialogue = "Every Pokémon has immense potential. Take good care of your party, Trainer!",
        starter = 25 -- Pikachu
    },
    {
        name = "Hiker Brock",
        title = "Rock-Type Specialist",
        coords = vector4(1850.15, 3680.45, 34.28, 290.0), -- Sandy Shores Desert
        model = `a_m_m_hillbilly_01`,
        dialogue = "My willpower is as solid as bedrock! Keep training your Pokémon every day!",
        starter = 74 -- Geodude
    }
}

CreateThread(function()
    for _, tr in ipairs(WorldTrainers) do
        RequestModel(tr.model)
        while not HasModelLoaded(tr.model) do Wait(20) end

        local ped = CreatePed(4, tr.model, tr.coords.x, tr.coords.y, tr.coords.z - 1.0, tr.coords.w, false, true)
        SetEntityHeading(ped, tr.coords.w)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        SetModelAsNoLongerNeeded(tr.model)

        -- Blip
        local blip = AddBlipForCoord(tr.coords.x, tr.coords.y, tr.coords.z)
        SetBlipSprite(blip, 480)
        SetBlipScale(blip, 0.65)
        SetBlipColour(blip, 5)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(string.format("Trainer: %s", tr.name))
        EndTextCommandSetBlipName(blip)

        -- Save created ped reference
        tr.entity = ped

        -- ox_target interaction
        if GetResourceState('ox_target') == 'started' then
            exports.ox_target:addLocalEntity(ped, {
                {
                    name = 'pokefivem_talk_' .. tr.name,
                    icon = 'fas fa-comments',
                    label = 'Talk with ' .. tr.name,
                    distance = 2.5,
                    onSelect = function()
                        TriggerEvent('pokefivem:client:notify', string.format('[%s]: "%s"', tr.name, tr.dialogue), 'info', 6000)
                    end
                }
            })
        end
    end

    local defeatedTrainers = {}

    -- Floating Trainer Overhead Indicator & Line-of-Sight Alert Loop
    while true do
        local pPed = PlayerPedId()
        local pCoords = GetEntityCoords(pPed)
        local sleep = 500

        for _, tr in ipairs(WorldTrainers) do
            local dist = #(pCoords - vector3(tr.coords.x, tr.coords.y, tr.coords.z))
            if dist < 15.0 then
                sleep = 0
                local tag = defeatedTrainers[tr.name] and "~g~[✓] " or "~y~[ ! ] "
                DrawText3D(tr.coords.x, tr.coords.y, tr.coords.z + 1.05, string.format("%s~w~%s ~b~(%s)", tag, tr.name, tr.title))

                -- Line of Sight Battle Trigger (If not yet defeated and within 8 meters)
                if not defeatedTrainers[tr.name] and dist < 8.5 and not InBattle and tr.entity and DoesEntityExist(tr.entity) then
                    local fwd = GetEntityForwardVector(tr.entity)
                    local diff = pCoords - vector3(tr.coords.x, tr.coords.y, tr.coords.z)
                    local len = #(diff)
                    local dot = (len > 0.01) and ((fwd.x * diff.x + fwd.y * diff.y) / len) or 0

                    -- Trainer is looking towards player (dot > 0.45) with clear vision
                    if dot > 0.45 and HasEntityClearLosToEntity(tr.entity, pPed, 17) then
                        defeatedTrainers[tr.name] = true

                        PlaySoundFrontend(-1, "Beep_Red", "DLC_HEIST_HACKING_SNAKE_SOUNDS", true)
                        TriggerEvent('pokefivem:client:notify', string.format('[%s]: "%s"', tr.name, tr.dialogue), 'error', 5000)

                        -- Brief pause and initiate Trainer Battle
                        SetTimeout(1200, function()
                            local starterData = GetPokedexEntry(tr.starter)
                            local opponent = {
                                pokedex_id = tr.starter,
                                name = starterData and starterData.name or "Rattata",
                                level = 12,
                                trainer_name = tr.name,
                                hp = 45,
                                maxHp = 45,
                                moves = {
                                    { name = "Quick Attack", type = "Normal", power = 40, accuracy = 100, currentPp = 30, maxPp = 30 },
                                    { name = "Tackle", type = "Normal", power = 40, accuracy = 100, currentPp = 35, maxPp = 35 }
                                }
                            }
                            TriggerClientEvent('pokefivem:client:startWildBattle', opponent)
                        end)
                    end
                end
            end
        end
        Wait(sleep)
    end
end)

