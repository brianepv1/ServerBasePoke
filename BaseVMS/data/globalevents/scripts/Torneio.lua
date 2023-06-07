function onTimer()

    if #getPlayersInArea(torneio.area) > 1 then 
        doBroadcastMessage("[Torneio] O torneio desta vez n�o teve vencedor.") 
        return true 
    end 
    for _, pid in ipairs(getPlayersInArea(torneio.waitArea)) do 
        doTeleportThing(pid, torneio.tournamentFight) 
        doPlayerSendTextMessage(pid, 21, "[Torneio] O torneio come�ou.") 
    end 
    return true
end
