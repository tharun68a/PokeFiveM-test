-- ====================================================================
-- PokeFiveM Framework - Client Multicharacter Controller (ox_lib Native)
-- Developed by: Pika Studio
-- Standalone Architecture (Zero ESX Dependency)
-- ====================================================================

local charCam = nil
local inCharSelect = false

-- Initialize Multicharacter on Session Start
CreateThread(function()
    while not NetworkIsSessionActive() do Wait(250) end
    Wait(500)

    if Config.Multicharacter and Config.Multicharacter.Enabled then
        TriggerEvent('pokefivem:client:openMulticharacter')
    else
        TriggerServerEvent('pokefivem:server:playerLoaded')
    end
end)

-- Open Multicharacter Selection Interface
RegisterNetEvent('pokefivem:client:openMulticharacter', function()
    inCharSelect = true
    local ped = PlayerPedId()

    -- Setup Cinematic Camera
    DoScreenFadeOut(300)
    while not IsScreenFadedOut() do Wait(10) end

    local camCoords = Config.Multicharacter.CameraCoords or vector4(-1392.21, -590.45, 30.32, 210.0)
    SetEntityCoords(ped, camCoords.x, camCoords.y, camCoords.z - 1.0, false, false, false, false)
    FreezeEntityPosition(ped, true)
    SetEntityVisible(ped, false, false)

    if not charCam then
        charCam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
        SetCamCoord(charCam, camCoords.x, camCoords.y, camCoords.z + 1.2)
        SetCamRot(charCam, -5.0, 0.0, camCoords.w, 2)
        SetCamActive(charCam, true)
        RenderScriptCams(true, false, 0, true, true)
    end

    DoScreenFadeIn(800)
    Wait(400)

    -- Request Characters from Server
    PokeCore.Functions.TriggerCallback('pokefivem:multichar:getCharacters', function(characters)
        DisplayCharacterMenu(characters)
    end)
end)

-- Build ox_lib Context Menu
function DisplayCharacterMenu(characters)
    local maxSlots = (Config.Multicharacter and Config.Multicharacter.MaxSlots) or 4
    local options = {}

    local charMap = {}
    for _, c in ipairs(characters or {}) do
        charMap[c.slot] = c
    end

    for slot = 1, maxSlots do
        local c = charMap[slot]
        if c then
            local charinfo = c.charinfo or {}
            local name = (charinfo.firstname or "Red") .. " " .. (charinfo.lastname or "Trainer")
            local badgesCount = (c.metadata and c.metadata.badges and #c.metadata.badges) or 0
            local pokedollars = (c.accounts and c.accounts.pokedollars) or 0

            table.insert(options, {
                title = string.format("Slot %d: %s", slot, name),
                description = string.format("ID: %s | Team: %d Pokémon | Badges: %d | ₽%d", c.citizenid, c.pokemonCount or 0, badgesCount, pokedollars),
                icon = 'fas fa-user-check',
                arrow = true,
                onSelect = function()
                    OpenCharacterSubMenu(c)
                end
            })
        else
            table.insert(options, {
                title = string.format("Slot %d: [Empty Slot]", slot),
                description = "Click to create a brand new Pokémon Trainer profile.",
                icon = 'fas fa-user-plus',
                arrow = true,
                onSelect = function()
                    OpenCreateCharacterDialog()
                end
            })
        end
    end

    if GetResourceState('ox_lib') == 'started' and lib and lib.registerContext then
        lib.registerContext({
            id = 'pokefivem_multichar_menu',
            title = '⚡ PokeFiveM Trainer Selection',
            canClose = false,
            options = options
        })
        lib.showContext('pokefivem_multichar_menu')
    else
        -- Native Fallback: Select first character or create new
        if characters and #characters > 0 then
            TriggerServerEvent('pokefivem:server:selectCharacter', characters[1].citizenid)
        else
            TriggerServerEvent('pokefivem:server:createCharacter', { firstname = "Red", lastname = "Trainer", gender = 0, birthdate = "2000-01-01" })
        end
    end
end

-- Character Options SubMenu
function OpenCharacterSubMenu(character)
    local charinfo = character.charinfo or {}
    local name = (charinfo.firstname or "Red") .. " " .. (charinfo.lastname or "Trainer")

    lib.registerContext({
        id = 'pokefivem_char_submenu',
        title = name .. ' (' .. character.citizenid .. ')',
        menu = 'pokefivem_multichar_menu',
        options = {
            {
                title = '▶ Start Journey as ' .. name,
                description = 'Enter the Pokémon world with this trainer.',
                icon = 'fas fa-play',
                onSelect = function()
                    TriggerServerEvent('pokefivem:server:selectCharacter', character.citizenid)
                end
            },
            {
                title = '🗑 Delete Trainer Profile',
                description = 'Permanently delete this trainer and all stored Pokémon.',
                icon = 'fas fa-trash',
                onSelect = function()
                    local alert = lib.alertDialog({
                        header = 'Delete Trainer?',
                        content = string.format('Are you sure you want to permanently delete **%s**?\nThis will remove all associated Pokémon and PC Storage.', name),
                        centered = true,
                        cancel = true
                    })
                    if alert == 'confirm' then
                        TriggerServerEvent('pokefivem:server:deleteCharacter', character.citizenid)
                    else
                        lib.showContext('pokefivem_char_submenu')
                    end
                end
            }
        }
    })
    lib.showContext('pokefivem_char_submenu')
end

-- Create Character Dialog
function OpenCreateCharacterDialog()
    local input = lib.inputDialog('Create New Pokémon Trainer', {
        { type = 'input', label = 'First Name', placeholder = 'e.g. Ash', required = true, min = 2, max = 16 },
        { type = 'input', label = 'Last Name', placeholder = 'e.g. Ketchum', required = true, min = 2, max = 16 },
        { type = 'select', label = 'Gender', options = { { value = 0, label = 'Male' }, { value = 1, label = 'Female' } }, default = 0 },
        { type = 'date', label = 'Date of Birth', format = 'YYYY-MM-DD', default = true }
    })

    if input then
        local charData = {
            firstname = input[1],
            lastname = input[2],
            gender = input[3],
            birthdate = input[4]
        }
        DoScreenFadeOut(300)
        Wait(400)
        TriggerServerEvent('pokefivem:server:createCharacter', charData)
    else
        lib.showContext('pokefivem_multichar_menu')
    end
end

-- Spawn Selected Character Handler
RegisterNetEvent('pokefivem:client:spawnSelectedCharacter', function(playerData)
    inCharSelect = false
    local ped = PlayerPedId()

    -- Destroy Camera
    if charCam then
        RenderScriptCams(false, true, 500, true, true)
        DestroyCam(charCam, false)
        charCam = nil
    end

    local pos = playerData.position or Config.Player.DefaultSpawn
    SetEntityCoords(ped, pos.x, pos.y, pos.z, false, false, false, false)
    SetEntityHeading(ped, pos.heading or 75.0)
    FreezeEntityPosition(ped, false)
    SetEntityVisible(ped, true, false)
    SetEntityInvincible(ped, false)

    DoScreenFadeIn(1000)
end)

