RegisterNUICallback('lifestyle.conferma', function(data)
    if data and Styles[tostring(data.stile)] then
        SetNuiFocus(false, false)
        TriggerServerEvent('lifestyle.send', data)
    end
end)

RegisterNetEvent('lifestyle.startnui', function()
    SetNuiFocus(true, true)
    SendNUIMessage({action = 'open_nui', styles = Styles, lang = Lang})
end)

RegisterNetEvent('lifestyle.finished')
AddEventHandler('lifestyle.finished', function(stile)
    RequestCutscene(Styles[tostring(stile)].anim or 'mp_intro_mcs_10_a1', 31, 1)
    repeat Wait(0) until CanRequestAssetsForCutsceneEntity()
    SetCutscenePedComponentVariationFromPed("MP_1", PlayerPedId(), 0)
    RegisterEntityForCutscene(PlayerPedId(), "MP_1", 0, 0, 64)
    RegisterEntityForCutscene(PlayerPedId(), "MP_2", 3, 0, 64)
    RegisterEntityForCutscene(PlayerPedId(), "MP_3", 3, 0, 64)
    RegisterEntityForCutscene(PlayerPedId(), "MP_4", 3, 0, 64)
    repeat Wait(0) until HasCutsceneLoaded()
    StartCutscene(4)
end)