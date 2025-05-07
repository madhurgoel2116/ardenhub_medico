ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('ardenhub_medico:checkMoney')
AddEventHandler('ardenhub_medico:checkMoney', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local playerBank = xPlayer.getAccount('bank').money

    if playerBank >= Config.CostoRianimazione then
        xPlayer.removeAccountMoney('bank', Config.CostoRianimazione)
        TriggerClientEvent('ardenhub_medico:startRevive', source)
        TriggerClientEvent('esx:showNotification', source, 'Hai pagato $' .. Config.CostoRianimazione .. ' dalla tua banca per la rianimazione')
    else
        TriggerClientEvent('esx:showNotification', source, 'Non hai abbastanza soldi in banca! Servono $' .. Config.CostoRianimazione)
    end
end)