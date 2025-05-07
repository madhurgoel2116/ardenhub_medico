fx_version 'cerulean'
game 'gta5'
author 'arduinodenis.it'
description 'Sistema di rianimazione con comando /medico'

client_scripts {
    'config.lua',
    'client.lua'
}

server_scripts {
    'config.lua',
    'server.lua'
}

dependencies {
    'es_extended',
    'esx_ambulancejob',
    'ox_lib'
}