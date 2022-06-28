ESX  = nil

Citizen.CreateThread(function ()
	  while ESX == nil do
		  TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		  Citizen.Wait(0)
  	end
end)

RegisterNetEvent('s3_jobAnuncios:SendAlert')
AddEventHandler('s3_jobAnuncios:SendAlert', function(icon, texto)
	  SendNUIMessage({ anuncio = true, admin = false, job = icon, texto = texto })
end)
