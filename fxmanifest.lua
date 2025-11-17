fx_version 'cerulean'
game 'gta5'

name 'BC-Stashes'
author 'BadCode'
description 'Custom stash locations with job/gang/player access for QBox + ox_inventory'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

dependencies {
    'ox_inventory',
    'ox_lib',
    'qbx_core'
}
