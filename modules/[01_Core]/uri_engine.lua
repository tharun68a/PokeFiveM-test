-- ====================================================================
-- PokeFiveM Framework - .URI Language Runtime & Parser Engine
-- Developed by: Pika Studio
-- Autonomous Standalone Framework (Zero ESX Dependency)
-- Implements Fivemon .URI Language Standards
-- ====================================================================

URIEngine = URIEngine or {}
URIEngine.Registry = URIEngine.Registry or {}

-- Parse .URI text file into structured Lua table
function URIEngine.Parse(rawContent)
    if not rawContent or type(rawContent) ~= "string" then return nil end

    local ast = {
        npcs = {}
    }

    -- Find NPC definition blocks: npc "Name" { ... }
    for npcName, block in rawContent:gmatch('npc%s*"([^"]+)"%s*%{([^%}]+)%}') do
        local npcData = {
            name = npcName,
            dialogue = {},
            facilities = {},
            actions = {}
        }

        -- Parse model
        local model = block:match('model:%s*"([^"]+)"')
        if model then npcData.model = model end

        -- Parse role
        local role = block:match('role:%s*"([^"]+)"')
        if role then npcData.role = role end

        -- Parse sound
        local sound = block:match('sound:%s*"([^"]+)"')
        if sound then npcData.sound = sound end

        -- Parse animation
        local anim = block:match('animation:%s*"([^"]+)"')
        if anim then npcData.animation = anim end

        -- Parse jingle duration
        local duration = block:match('jingle_duration:%s*(%d+)')
        if duration then npcData.jingle_duration = tonumber(duration) end

        -- Parse dialogue block
        local dialogueBlock = block:match('dialogue:%s*%{([^%}]+)%}')
        if dialogueBlock then
            for k, v in dialogueBlock:gmatch('([%w_]+):%s*"([^"]+)"') do
                npcData.dialogue[k] = v
            end
        end

        -- Parse facilities / coords
        for facBlock in block:gmatch('%{([^%}]+)%}') do
            local facName = facBlock:match('name:%s*"([^"]+)"')
            local zone = facBlock:match('zone:%s*"([^"]+)"')
            local x, y, z, h = facBlock:match('coords:%s*%[%s*([%d%.%-]+)%s*,%s*([%d%.%-]+)%s*,%s*([%d%.%-]+)%s*,%s*([%d%.%-]+)%s*%]')
            if facName and x and y and z then
                table.insert(npcData.facilities, {
                    name = facName,
                    zone = zone,
                    x = tonumber(x),
                    y = tonumber(y),
                    z = tonumber(z),
                    heading = tonumber(h) or 0.0
                })
            end
        end

        table.insert(ast.npcs, npcData)
        URIEngine.Registry[npcName] = npcData
    end

    return ast
end

-- Load and register .uri file from resource with smart path resolution
function URIEngine.LoadURIFile(filePath)
    local content = LoadResourceFile(GetCurrentResourceName(), filePath)
    if not content then
        local baseName = filePath:match("([^/\\]+)$")
        if baseName then
            content = LoadResourceFile(GetCurrentResourceName(), "modules/[06_PokeCenter]/" .. baseName)
                   or LoadResourceFile(GetCurrentResourceName(), "scripts/" .. baseName)
        end
    end

    if not content then
        print(string.format('^1[URIEngine] Failed to load .uri file: %s^7', filePath))
        return nil
    end
    local parsed = URIEngine.Parse(content)
    print(string.format('^2[URIEngine] Successfully compiled and loaded .uri script: %s^7', filePath))
    return parsed
end

exports('LoadURIFile', URIEngine.LoadURIFile)
exports('GetURINPC', function(name) return URIEngine.Registry[name] end)
