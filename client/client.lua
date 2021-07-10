--Client Main -- Tanky

--onStart
AddEventHandler('onClientResourceStart', function(ressourceName)

    if(GetCurrentResourceName() ~= ressourceName)then
        return
    end

    --Code
    print(ressourceName.." Started")

end)

--onStop
AddEventHandler('onClientResourceStop', function(ressourceName)

    if(GetCurrentResourceName() ~= ressourceName)then
        return
    end

    --Code
    print(ressourceName.." Stopped")

end)