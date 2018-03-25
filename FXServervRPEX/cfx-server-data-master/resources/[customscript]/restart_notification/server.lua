-- Made by FAXES
AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/svrlist' then
        TriggerClientEvent('RestartList', player)
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/svr 5' then --                        <- Command used to display the message          Message displayed server wide.
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n SERVIDOR REINICIANDO EM 5 MINUTOS \n Porfavor encerre seu RP, para não ter problemas. \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/svr 10' then --                        <- Command used to display the message          Message displayed server wide.
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n SERVIDOR REINICIANDO EM 10 MINUTOS \n Porfavor encerre seu RP, para não ter problemas. \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/svr now' then
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n SERVIDOR SENDO REINICIADO \n Porfavor entre no server  \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)
-- Made by FAXES