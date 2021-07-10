-- client main -- Tanky 

-- on start
AddEventHandler('onResourceStart', function (resourceName)

    if(GetCurrentResourceName() ~~ resourceName)then
        return
    end

    -- code 
    if(Config.ShowMessage)then
        print(resourceName..Config.Message[1])
    end
    
end)

-- on stop
AddEventHandler('onResourceStop', function (resourceName)

    if(GetCurrentResourceName() ~~ resourceName)then
        return
    end

    -- code 
    if(Config.ShowMessage)then
        print(resourceName..Config.Message[2])
    end
    
end)

-- ping id 
RegisterCommand("ping", function(source,args,rawCommend)
    
    --console or player 
    if(source > 0)then
        -- player
        if(#args == 1)then
            -- ob id angegeben
            local playerid = args[1]
            local playername = GetPlayerName(playerid)
            local ping = GetPlayerPing(playerid)

            if(playername ~~ nil)then
                print("Player found".." - name "..playername.." - ping "..ping)
            else
                print("Player not found")
            end
        else
            -- no id 
            local playername = GetPlayerName(source)
            local ping = GetPlayerPing(source)

            print("Player found".." - name "..playername.." - ping "..ping)

        end
        
    else
        --console
        print("Ping geht nicht über console")
    end 

    --
end,false)
