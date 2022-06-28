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
	'html/imagenes/lspd.jpg',
	'html/imagenes/safd.jpg',
	'html/imagenes/lsc.jpg',
	'html/imagenes/taxi.jpg'
}

shared_scripts "config.lua"

client_scripts {
	'client/client.lua',
}

server_scripts {
	'server/server.lua',
}

escrow_ignore {
	'config.lua',
	'html/*.*'
}

dependencies {
	'es_extended',
}
