-- ====================================================================
-- PokeFiveM Framework - Shared Core Object
-- Developed by: Pika Studio
-- Independent, Modular FiveM Framework (Zero ESX Dependency)
-- ====================================================================

PokeCore = {}
PokeCore.Shared = {}
PokeCore.Functions = {}
PokeCore.Config = {}

-- Utility: Deep Table Copy
function PokeCore.Shared.CopyTable(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[PokeCore.Shared.CopyTable(orig_key)] = PokeCore.Shared.CopyTable(orig_value)
        end
        setmetatable(copy, PokeCore.Shared.CopyTable(getmetatable(orig)))
    else
        copy = orig
    end
    return copy
end

-- Utility: Round number
function PokeCore.Shared.Round(value, numDecimalPlaces)
    if not numDecimalPlaces then return math.floor(value + 0.5) end
    local power = 10 ^ numDecimalPlaces
    return math.floor((value * power) + 0.5) / power
end

-- Utility: Trim string
function PokeCore.Shared.Trim(s)
    return (s:gsub("^%s*(.-)%s*$", "%1"))
end

-- Random string generator (e.g. for citizenid or serials)
function PokeCore.Shared.RandomStr(length)
    if length <= 0 then return '' end
    return PokeCore.Shared.RandomStr(length - 1) .. string.char(math.random(97, 122))
end

function PokeCore.Shared.RandomInt(length)
    if length <= 0 then return '' end
    return PokeCore.Shared.RandomInt(length - 1) .. math.random(0, 9)
end

-- Export core getter
function GetCoreObject()
    return PokeCore
end
