function OnUse(cid, item)
    if #getCreatureSummons(cid) >= 1 then 
            doPlayerSendCancel(cid, "[Torneio] N�o pode passar por aqui com o pokemon fora da ball!") 
        else if #getPlayersInArea(torneio.area) > 1 then 
            doPlayerSendTextMessage(cid, 20 ,"Somente o ultimo sobrevivente pode passar por aqui.") 
            return true 
        end 
        doTeleportThing(cid, torneio.playerTemple) 
        doPlayerAddItem(cid,2160,3) 
        doPlayerSendTextMessage(cid, 21, "[Torneio] Jovem Treinador Parab�ns, voc� ganhou o torneio e ganhou [5] TDS + ["..getItemNameById(torneio.awardTournament).."] .") 
        setPlayerStorageValue(cid,130131,getPlayerStorageValue(cid,130131)+1) doPlayerSendTextMessage(cid,MESSAGE_EVENT_ORANGE,"[Torneio-Score] Voce Agora Tem ["..(getPlayerStorageValue(cid,130131) + 1).."] Torneio SCORES.") 
        doPlayerAddItem(cid, torneio.awardTournament, torneio.awardAmount) 
        return true 
    end 
end