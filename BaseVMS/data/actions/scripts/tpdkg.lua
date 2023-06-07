local TP = {x=1703, y=1235, z=9} --- lugar para onde vai ser teleportado

function onUse(cid, item, frompos, topos)
if (item.uid == 12003) and getPlayerItemCount(cid, 15485) == 1 and getPlayerItemCount(cid, 15486) ==1 and getPlayerItemCount(cid,15487) ==1 then
doPlayerRemoveItem(cid, 15485, 1)
doPlayerRemoveItem(cid, 15486, 1)
doPlayerRemoveItem(cid, 15487, 1) 
doTeleportThing(cid,TP)
return doPlayerSendTextMessage(cid, 23, "Voce conseguiu encontrar os itens supremos, continue por esse caminho. Poucos sairao vivos")
else
       doPlayerSendTextMessage(cid, 23, "Voce nao possui todos os itens necessarios para passar.")
return true
end
end

---item.uid== id do item que vai ser clicado
---getPlayerItemCount(cid, item que precisa ter na bag)
---doPlayerRemoveItem > comando para remover item da bag