ui_page 'html/form.html'

files {
	'html/form.html',
	'html/img/seal.png',
	'html/img/document.jpg',
	'html/img/signature.png',
	'html/img/cursor.png',
	'html/css.css',
	'html/language.js',
	'html/script.js',
	'html/jquery-3.4.1.min.js',
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'config.lua',
	'locales/gr.lua',
	'server.lua',
}
 
client_scripts {
	'@es_extended/locale.lua',
	'locales/gr.lua',
	'config.lua',
	'GUI.lua',
	'client.lua',
}