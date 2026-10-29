fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Pika Studio'
description 'PokeFiveM - Autonomous Standalone Pokémon RPG Framework for FiveM'
version '2.0.0'

ui_page 'ui/index.html'

shared_scripts {
    'shared/core.lua',
    'shared/jobs.lua',
    'shared/items.lua',
    'shared/locale.lua',
    'shared/trainer_outfits.lua',
    'shared/types_data.lua',
    'shared/natures_data.lua',
    'shared/moves_data.lua',
    'shared/pokedex_data.lua',
    'shared/gyms_data.lua',
    'shared/quests_data.lua',
    'shared/uri_engine.lua',
    'shared/utils.lua',
    'config.lua'
}

client_scripts {
    'client/core.lua',
    'client/callbacks.lua',
    'client/notifications.lua',
    'client/player.lua',
    'client/bridge/esx.lua',
    'client/multicharacter.lua',
    'client/main.lua',
    'client/spawner.lua',
    'client/throwing.lua',
    'client/battle.lua',
    'client/companion.lua',
    'client/mounts.lua',
    'client/centers.lua',
    'client/markers.lua',
    'client/gyms.lua',
    'client/pvp.lua',
    'client/trade.lua',
    'client/quests.lua',
    'client/daycare.lua',
    'client/world.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/core.lua',
    'server/callbacks.lua',
    'server/player.lua',
    'server/bridge/esx.lua',
    'server/multicharacter.lua',
    'server/events.lua',
    'server/inventory.lua',
    'server/commands.lua',
    'server/pokemon.lua',
    'server/storage.lua',
    'server/spawner.lua',
    'server/battle.lua',
    'server/gyms.lua',
    'server/pvp.lua',
    'server/trade.lua',
    'server/quests.lua',
    'server/daycare.lua'
}

files {
    'ui/index.html',
    'ui/css/style.css',
    'ui/js/app.js',
    'scripts/nurse_joy.uri'
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
