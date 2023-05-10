fx_version "cerulean"
game "gta5"
lua54 'yes'
ui_page 'web/ui.html'

author 'Netscape Development'
description 'ESX Lifestyle System'
version '1.0.2'

files {
    'web/*',
    'web/**/*'
}

client_scripts {
    'client/*'
}

shared_scripts {
    'shared/*',
    '@es_extended/imports.lua'
}

server_scripts {
    '@oxmysql/lib/MySql.lua',
    'server/*'
}

escrow_ignore 'shared/*'