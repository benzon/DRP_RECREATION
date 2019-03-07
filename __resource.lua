resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

version '1.0'

description 'ESX Bike Rental Service by BenZoN - DanishRP'


client_scripts {
  '@es_extended/locale.lua',
  'locales/da.lua',
  'locales/en.lua',
  'config.lua',
  'client/client.lua'
}

server_scripts {
	'@es_extended/locale.lua',
  'locales/da.lua',
  'locales/en.lua',
	'config.lua',
	'server/server.lua'
}	
