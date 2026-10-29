fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Pika Studio'
description 'PokeFiveM - Nurse Joy .URI Dialogue, Healing Jingle & PC Storage'
version '2.0.0'

ui_page 'ui/index.html'

shared_scripts {
    'shared/uri_engine.lua',
    'shared/pokedex_data.lua',
    'shared/utils.lua',
    'config.lua',
}

client_scripts {
    'client/centers.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/storage.lua',
}

files {
    'scripts/nurse_joy.uri',
    'ui/index.html',
    'ui/css/style.css',
    'ui/js/app.js',
}
