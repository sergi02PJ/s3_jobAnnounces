fx_version 'bodacious'
game 'gta5'

lua54 'yes'

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

shared_script 'config.lua'

client_script 'client/*.lua'

server_script 'server/server.lua'

dependency 'es_extended'