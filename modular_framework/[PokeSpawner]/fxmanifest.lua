fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Pika Studio'
description 'PokeFiveM - Open World Wild Pokémon Spawner & ox_target'
version '2.0.0'

shared_scripts {
    'shared/pokedex_data.lua',
    'shared/utils.lua',
    'config.lua',
}

client_scripts {
    'client/spawner.lua',
    'client/throwing.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/spawner.lua',
}
