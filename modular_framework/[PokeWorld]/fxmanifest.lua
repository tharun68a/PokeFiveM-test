fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Pika Studio'
description 'PokeFiveM - Ambient Pokémon World, Route Banners & NPC Trainers'
version '2.0.0'

shared_scripts {
    'shared/quests_data.lua',
    'shared/utils.lua',
    'config.lua',
}

client_scripts {
    'client/world.lua',
    'client/markers.lua',
    'client/mounts.lua',
    'client/trade.lua',
    'client/daycare.lua',
    'client/quests.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/trade.lua',
    'server/daycare.lua',
    'server/quests.lua',
}
