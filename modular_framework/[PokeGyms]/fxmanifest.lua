fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Pika Studio'
description 'PokeFiveM - 8 Gym Leaders, Badge Case & Level Caps'
version '2.0.0'

shared_scripts {
    'shared/gyms_data.lua',
    'shared/pokedex_data.lua',
    'shared/utils.lua',
    'config.lua',
}

client_scripts {
    'client/gyms.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/gyms.lua',
}
