Config = {}

--[[
    ['jobToAddAnnounce'] = {
        textOn = text is going to be displayed when ON announce,
        textOff = text is going to be displayed when OFF announce,
        icon = icon will be displayed, you can get it from: https://fontawesome.com,
        account = account where the money is going to be removed,
        cost = the cost of the announce, if 0 it wont remove money
    },
]]
Config.Announces = {
    ['police'] = {
        textOn = 'LSPD Disponible',
        textOff = 'LSPD No Disponible',
        icon = 'fa-solid fa-handcuffs',
        account = 'bank',
        cost = 100
    },
    ['mechanic'] = {
        textOn = 'Bennys Disponible',
        textOff = 'Bennys No Disponible',
        icon = 'fa-solid fa-wrench',
        account = 'bank',
        cost = 100
    },
    ['ambulance'] = {
        textOn = 'SAED Disponible',
        textOff = 'SAED No Disponible',
        icon = 'fa-solid fa-hospital',
        account = 'bank',
        cost = 100
    }
    -- ¡¡Add as much as you want!!
}

Config.Translations = {
    noJob = "Your job doesn´t allow this ad system...",
    noMoney = "You dont hace enough money to publish an ad right now."
}