local npcHandler = NpcHandler:new(keywordHandler) NpcSystem.parseParameters(npcHandler) local talkState = {} function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end function onThink() npcHandler:onThink() end function creatureSayCallback(cid, type, msg) if(not npcHandler:isFocused(cid)) then return false end local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid if msgcontains(msg, 'torneio') or msgcontains(msg, 'enter') then selfSay('Você quer participar do torneio por ['..torneio.price..'] dollars? [sim/Yes]', cid) talkState[talkUser] = 2 elseif talkState[talkUser] == 2 then if msgcontains(msg, 'yes') or msgcontains(msg, 'sim') then if os.date("%X") < torneio.startHour or os.date("%X") > torneio.endHour then selfSay('As inscrições para o torneio terminaram, volte amanhã AS 08:00 ou 18:00 para nova inscriçao!.', cid) return true end if doPlayerRemoveMoney(cid, torneio.price) then doTeleportThing(cid, torneio.waitPlace) setPlayerStorageValue(cid,130130,1) doPlayerSendTextMessage(cid, 21, "Bem-vindo, esta é a sala de espera, você espera aqui enquanto o torneio não começa. hora de início: {"..torneio.endHour.."}.") else selfSay('Voce nao Tem Dinheiro ('..torneio.price..').', cid) end else selfSay('Voce nao quer participar do Torneio? Vem no Proximo Dia / Todos os Dias as [08:00;18:00]!', cid) talkState[talkUser] = 0 end end end npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback) npcHandler:addModule(FocusModule:new())