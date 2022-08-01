fx_version 'bodacious'
lua54 'yes'
game 'gta5'

name 's3_jobAnuncios'
author 'S3 Development - https://github.com/sergi02PJ/'
version 'v1'

ui_page {
    'html/ui.html',
}

files {
	'html/ui.html',
	'html/*.ogg',
	'html/js/app.js', 
	'html/css/style.css',
}

client_scripts {
	'client/client.lua', "config.lua"
}

server_scripts {
	'server/server.lua', "config.lua"
}

dependencies {
	'es_extended',
}
