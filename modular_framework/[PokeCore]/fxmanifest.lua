fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Pika Studio'
description 'PokeFiveM - Standalone Core, Player Bridge, Multicharacter & URI Engine'
version '2.0.0'

ui_page 'ui/index.html'

shared_scripts {
    'shared/core.lua',
    'shared/jobs.lua',
    'shared/items.lua',
    'shared/locale.lua',
    'shared/trainer_outfits.lua',
    'shared/uri_engine.lua',
    'shared/utils.lua',
    'config.lua',
}

client_scripts {
    'client/core.lua',
    'client/callbacks.lua',
    'client/notifications.lua',
    'client/player.lua',
    'client/multicharacter.lua',
    'client/bridge/esx.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/core.lua',
    'server/callbacks.lua',
    'server/player.lua',
    'server/multicharacter.lua',
    'server/events.lua',
    'server/inventory.lua',
    'server/commands.lua',
    'server/bridge/esx.lua',
}

files {
    'ui/index.html',
    'ui/css/style.css',
    'ui/js/app.js',
}
