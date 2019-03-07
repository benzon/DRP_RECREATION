ESX = nil
BikeRental = {}

TriggerEvent('esx:getSharedObject', function(obj)ESX = obj end)

RegisterServerEvent('drp_recreation:bikerental')
AddEventHandler('drp_recreation:bikerental', function(status)
    local Source = source
    local identifier = GetPlayerIdentifiers(Source)[1]
end)


ESX.RegisterServerCallback('drp_recreation:bikerental', function(source, cb, status)
    local Source = source
    local identifier = GetPlayerIdentifiers(Source)[1]
    if status == "check" then
        cb(has_value(BikeRental, identifier))
    elseif status then
        table.insert(BikeRental, identifier)
        cb(true)
    elseif not status then
        for i = 1, #BikeRental, 1 do
            if BikeRental[i] == identifier then
                table.remove(BikeRental, i)
                break
            end
        end
        cb(false)
    end
end)

ESX.RegisterServerCallback('drp_recreation:payment', function(source, cb, zone, itemId, itemType)
    local xPlayer = ESX.GetPlayerFromId(source)
    
    local price = Config.Zones[zone].Items[itemId].price
    if Config.Zones[zone].Free then
        if itemType == "weapon" then
            if Config.Zones[zone].Items[itemId].item == 'GADGET_PARACHUTE' then
                TriggerClientEvent('esx:removeWeapon', source, 'GADGET_PARACHUTE')
                xPlayer.addWeapon(Config.Zones[zone].Items[itemId].item, 1)
            else
                xPlayer.addWeapon(Config.Zones[zone].Items[itemId].item, 1)
            end
        end
        cb(true)
    else
        if xPlayer.getMoney() >= price then
            xPlayer.removeMoney(price)
            if itemType == "weapon" then
                TriggerClientEvent('esx:removeWeapon', source, 'GADGET_PARACHUTE')
                xPlayer.addWeapon(Config.Zones[zone].Items[itemId].item, 1)
            end
            cb(true)
        else
            cb(false)
        end
    end
end)

function has_value(tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    
    return false
end
