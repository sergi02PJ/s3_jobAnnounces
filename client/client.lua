RegisterNetEvent('s3_jobAnuncios:SendAlert')
AddEventHandler('s3_jobAnuncios:SendAlert', function(icon, texto)
	SendNUIMessage({ anuncio = true, job = icon, texto = texto })
end)