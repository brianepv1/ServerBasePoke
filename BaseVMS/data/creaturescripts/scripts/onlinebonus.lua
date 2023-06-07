function addOnlineBonus(cid, horas, bonus_contador)

   if not isPlayer(cid) then
   return false
   end  
   setPlayerStorageValue(cid, bonus_contador, getPlayerStorageValue(cid, bonus_contador) + 1)
   doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Parab�ns! Voc� passou 1 hora jogando sem sair do jogo, como recompensa recebeu 1x online b�nus.") 
   doSendPlayerExtendedOpcode(cid, 10, "ONLINE BONUS")
   addEvent(addOnlineBonus, horas * 3600 * 1000, cid, horas, bonus_contador)   
   
end

function onLogin(cid)

   local bonus_contador = 5984548 -- Storage que vai guardar quantos online bonus o char possui.
   local horas = 1 -- Quantidade de horas o char precisa ficar logado pra receber cada online bonus. 
   doPlayerSendTextMessage(cid,22,"Sistema de b�nus online: A cada 1 hora jogada sem deslogar do personagem, voc� recebe 1x online b�nus que pode ser trocado por alguns itens, alguns at� mesmo exclusivos. Aproveite!")
   addEvent(addOnlineBonus, horas * 3600 * 1000, cid, horas, bonus_contador) 

return true   
end