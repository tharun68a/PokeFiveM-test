fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Pika Studio'
description 'PokeFiveM - Turn-Based Combat Engine & PvP Arena'
version '2.0.0'

ui_page 'ui/index.html'

shared_scripts {
    'shared/moves_data.lua',
    'shared/natures_data.lua',
    'shared/types_data.lua',
    'shared/pokedex_data.lua',
    'shared/utils.lua',
    'config.lua',
}

client_scripts {
    'client/battle.lua',
    'client/pvp.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/battle.lua',
    'server/pvp.lua',
}

files {
    'ui/index.html',
    'ui/css/style.css',
    'ui/js/app.js',
}
