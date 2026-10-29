fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Pika Studio'
description 'PokeFiveM Native es_extended Drop-in Compatibility Bridge'
version '2.0.0'

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

exports {
    'getSharedObject',
    'GetSharedObject'
}

server_exports {
    'getSharedObject',
    'GetSharedObject'
}

