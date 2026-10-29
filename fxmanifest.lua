fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Pika Studio'
description 'PokeFiveM - Autonomous Standalone Pokémon RPG Framework for FiveM'
version '2.1.0'

ui_page 'ui/index.html'

shared_scripts {
    'config.lua',
    'modules/[01_Core]/shared.lua',
    'modules/[01_Core]/locale.lua',
    'modules/[01_Core]/jobs.lua',
    'modules/[01_Core]/uri_engine.lua',
    'modules/[01_Core]/utils.lua',
    'modules/[02_PokeDex]/pokedex_data.lua',
    'modules/[03_PokeBattle]/types_data.lua',
    'modules/[03_PokeBattle]/natures_data.lua',
    'modules/[03_PokeBattle]/moves_data.lua',
    'modules/[07_PokeGyms]/gyms_data.lua',
    'modules/[08_PokeWorld]/quests_data.lua',
    'modules/[09_PokeEvolution]/evolution_data.lua',
    'modules/[10_PokeInventory]/items.lua',
    'modules/[10_PokeInventory]/trainer_outfits.lua'
}

client_scripts {
    -- [01_Core]
    'modules/[01_Core]/client.lua',
    'modules/[01_Core]/callbacks_client.lua',
    'modules/[01_Core]/notifications.lua',
    'modules/[01_Core]/player_client.lua',
    'bridge/es_extended/client.lua',
    'modules/[01_Core]/multichar_client.lua',

    -- [03_PokeBattle]
    'modules/[03_PokeBattle]/client.lua',
    'modules/[03_PokeBattle]/pvp_client.lua',

    -- [04_PokeSpawner]
    'modules/[04_PokeSpawner]/client.lua',
    'modules/[04_PokeSpawner]/throwing.lua',

    -- [05_PokeCompanion]
    'modules/[05_PokeCompanion]/companion_client.lua',
    'modules/[05_PokeCompanion]/mounts_client.lua',

    -- [06_PokeCenter]
    'modules/[06_PokeCenter]/centers_client.lua',
    'modules/[06_PokeCenter]/daycare_client.lua',

    -- [07_PokeGyms]
    'modules/[07_PokeGyms]/client.lua',

    -- [08_PokeWorld]
    'modules/[08_PokeWorld]/world_client.lua',
    'modules/[08_PokeWorld]/pokestops_client.lua',
    'modules/[08_PokeWorld]/fishing_client.lua',
    'modules/[08_PokeWorld]/raids_client.lua',
    'modules/[08_PokeWorld]/foraging_client.lua',
    'modules/[08_PokeWorld]/quests_client.lua',

    -- [09_PokeEvolution]
    'modules/[09_PokeEvolution]/client.lua',

    -- [10_PokeInventory]
    'modules/[10_PokeInventory]/trade_client.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',

    -- [01_Core]
    'modules/[01_Core]/server.lua',
    'modules/[01_Core]/callbacks_server.lua',
    'modules/[01_Core]/player_server.lua',
    'bridge/es_extended/server.lua',
    'modules/[01_Core]/multichar_server.lua',
    'modules/[01_Core]/events.lua',
    'modules/[01_Core]/commands.lua',

    -- [03_PokeBattle]
    'modules/[03_PokeBattle]/server.lua',
    'modules/[03_PokeBattle]/pvp_server.lua',

    -- [04_PokeSpawner]
    'modules/[04_PokeSpawner]/server.lua',

    -- [05_PokeCompanion]
    'modules/[05_PokeCompanion]/pokemon_server.lua',

    -- [06_PokeCenter]
    'modules/[06_PokeCenter]/daycare_server.lua',
    'modules/[06_PokeCenter]/storage_server.lua',

    -- [07_PokeGyms]
    'modules/[07_PokeGyms]/server.lua',

    -- [08_PokeWorld]
    'modules/[08_PokeWorld]/pokestops_server.lua',
    'modules/[08_PokeWorld]/fishing_server.lua',
    'modules/[08_PokeWorld]/raids_server.lua',
    'modules/[08_PokeWorld]/foraging_server.lua',
    'modules/[08_PokeWorld]/quests_server.lua',

    -- [09_PokeEvolution]
    'modules/[09_PokeEvolution]/server.lua',

    -- [10_PokeInventory]
    'modules/[10_PokeInventory]/server.lua',
    'modules/[10_PokeInventory]/trade_server.lua'
}

files {
    'ui/index.html',
    'ui/css/style.css',
    'ui/js/app.js',
    'modules/[06_PokeCenter]/nurse_joy.uri'
}

exports {
    'GetCoreObject',
    'GetSharedObject',
    'getSharedObject',
    'GetPlayerParty',
    'GetPlayerPokemon',
    'GivePokemon',
    'GiveItem',
    'StartWildBattle',
    'StartPvPBattle',
    'OpenPC',
    'OpenPokedex'
}

server_exports {
    'GetCoreObject',
    'GetSharedObject',
    'getSharedObject',
    'GivePokemonToPlayer',
    'GetPlayerPartyData',
    'HealPlayerParty',
    'AddPokemonExp'
}
