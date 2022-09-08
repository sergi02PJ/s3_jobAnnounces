ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand('anuncioOn', function(source, args)
	local xPlayer = ESX.GetPlayerFromId(source)
	
	sendAnnounce(xPlayer, "textOn")
end, false)

RegisterCommand('anuncioOff', function(source, args)
    local xPlayer = ESX.GetPlayerFromId(source)
	
    sendAnnounce(xPlayer, "textOff")
end, false)

sendAnnounce = function(xPlayer, type)
    local playerJob = xPlayer.getJob()

    if playerJob then
        local jobName = playerJob.name
        if Config.Announces[jobName] then
            local announce = Config.Announces[jobName]
            local adType = announce[type]

            if xPlayer.getAccount(announce.account).money >= announce.cost then
                xPlayer.removeAccountMoney(announce.account, announce.cost)
                TriggerClientEvent('s3_jobAnuncios:SendAlert', -1, announce.icon, adType)
            else
                xPlayer.showNotification(Config.Translations.noMoney)
            end
        else
            xPlayer.showNotification(Config.Translations.noJob)
        end
    end
end
