

```lua 
    -- enable nui in client side
    TriggerEvent('lifestyle.startnui')

    -- get lifestyle in client side
    LocalPlayer.state.lifestyle

    -- on select client side
    AddEventHandler('lifestyle.finished', function(lifestyle)
    
    end)

    -- enable nui in server side
    TriggerEvent('lifestyle.startnui', player_source)

    -- get lifestyle in server side
    Player(source).state.lifestyle
    -- framework version
    xPlayer.variables.lifestyle

    -- on select server side
    AddEventHandler('lifestyle.finished', function(lifestyle)
    
    end)
```