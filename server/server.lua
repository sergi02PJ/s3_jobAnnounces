ESX = exports.es_extended:getSharedObject()

players = {  }

RegisterNetEvent('esx:playerLoaded', function(src, xPlayer)
    players[src] = xPlayer
end)

RegisterNetEvent('esx:playerDropped', function(src)
    players[src] = nil
end)

RegisterNetEvent('onResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        for k, v in pairs(ESX.GetPlayers()) do
            players[v] = ESX.GetPlayerFromId(v)
        end
    end
end)

RegisterCommand('add', function(source, args)
    local announceType = ''

    if args[1] then
        if args[1] == 'open' then
            announceType = 'textOn'
        elseif args[1] == 'close' then
            announceType = 'textOff'
        end

        sendAnnounce(source, announceType)
    else
        players[source].showNotification('Argumentos invalidos, debes de introducir /add open o /add close')
    end
end)

function sendAnnounce(source, type)
    local playerJob = players[source].getJob()
    local jobName = playerJob.name
    if Config.Announces[jobName] then
        local announce = Config.Announces[jobName]
        local adType = announce[type]

        if players[source].getAccounts(announce.account).money >= announce.cost then
            players[source].removeAccountMoney(announce.account, announce.cost)
            for k, v in pairs(players) do
                v.triggerEvent('s3_jobAnuncios:SendAlert', announce.icon, adType) 
            end
        else
            players[source].showNotification(Config.Translations.noMoney) 
        end
    else
        players[source].showNotification(Config.Translations.noJob)
    end
end
