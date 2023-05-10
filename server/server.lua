RegisterServerEvent('lifestyle.send', function(data)
    local source = source
    local player = ESX.GetPlayerFromId(source)
    if data then
        if not data.token then 
            DropPlayer(source, '[NTS] Il bro prova a usare i trigger, non ti conveniva :/')
            return 
        end

        if Styles[tostring(data.stile)] then
            for _,v in pairs(Styles[tostring(data.stile)].accounts) do
                if player.getAccount(_) then
                    player.addAccountMoney(_, v, 'LifeStyle')
                end
            end

            for _,v in pairs(Styles[tostring(data.stile)].items) do
                if _ then
                    if v.tipo == 'item' then
                        AddItem(source, _, v.quant)
                    elseif v.tipo == 'auto' then
                        AddVehicle(source, _)
                    elseif v.tipo == 'arma' then
                        AddWeapon(source, _, v.quant, 0)
                    end
                end
            end

            MySQL.update.await('UPDATE users SET lifestyle = ? WHERE identifier = ?', {tostring(data.stile), player.identifier})
            Player(source).state:set('lifestyle', data.stile, true)
            player.set('lifestyle', data.stile)
            TriggerEvent('lifestyle.finished', data.stile)
            TriggerClientEvent('lifestyle.finished', source, data.stile)
        end
    end
end)

RegisterServerEvent('lifestyle.startnui')
AddEventHandler('lifestyle.startnui', function(player)
    TriggerClientEvent('lifestyle.startnui', player)
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(src, player)
	MySQL.single('SELECT * FROM users WHERE identifier = ?', {player.identifier}, function(query)
        if query.lifestyle and Styles[query.lifestyle] then
            Player(source).state:set('lifestyle', query.stile, true)
            player.set('lifestyle', query.stile)
        end
    end)
end)