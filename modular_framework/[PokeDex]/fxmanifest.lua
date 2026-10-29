fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Pika Studio'
description 'PokeFiveM - Regional & National Pokédex System'
version '2.0.0'

ui_page 'ui/index.html'

shared_scripts {
    'shared/types_data.lua',
    'shared/pokedex_data.lua',
    'shared/utils.lua',
    'config.lua',
}

client_scripts {
    'client/main.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/pokemon.lua',
}

files {
    'ui/index.html',
    'ui/css/style.css',
    'ui/js/app.js',
}
