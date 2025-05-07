ESX = exports["es_extended"]:getSharedObject()

local isDead = false
local isReviving = false

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
end)

RegisterCommand('medico', function()
    if not isDead then
        ESX.ShowNotification('Puoi usare questo comando solo quando sei morto!')
        return
    end

    if isReviving then
        ESX.ShowNotification('Stai già ricevendo cure mediche!')
        return
    end

    TriggerServerEvent('ardenhub_medico:checkMoney')
end)

RegisterNetEvent('ardenhub_medico:startRevive')
AddEventHandler('ardenhub_medico:startRevive', function()
    isReviving = true
    
    if exports['ox_lib']:progressCircle({
        duration = Config.RianimazioneTimer * 1000,
        label = 'Rianimazione in corso...',
        position = 'bottom',
        useWhileDead = true,
        canCancel = false,
        disable = {
            move = true,
            car = true,
            combat = true,
            mouse = false
        },
        anim = {
            dict = 'mini@cpr@char_a@cpr_str',
            clip = 'cpr_pumpchest',
            flag = 49,
            blendIn = 3.0,
            blendOut = 1.0,
            playbackRate = 0
        },
    }) then
        TriggerEvent('esx_ambulancejob:revive')
    end
    
    isReviving = false
end)

Citizen.CreateThread(function()
    while true do
        Wait(500)
        if NetworkIsPlayerActive(PlayerId()) then
            local playerPed = PlayerPedId()
            isDead = IsEntityDead(playerPed)
        end
    end
end)