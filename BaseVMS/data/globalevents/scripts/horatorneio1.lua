function onTimer(cid, interval, lastExecution) 

doBroadcastMessage("As inscri��es para o Torneio abriu e fechar� daqui 15 minutos! fale com o NPC Torneio no CP para entrar no Torneio")
addEvent(doBroadcastMessage, 300000, "As inscri��es para o torneio est� aberta fechar� daqui 10 minuto ! fale com o NPC torneio para entrar no torneio!") 
addEvent(puxaParticipantes, 480000)  	
addEvent(doWave, 600000, true)            --alterado v1.8       

return true
end