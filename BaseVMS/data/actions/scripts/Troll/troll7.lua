local TP = {x=1062, y=992, z=10}

function onUse(cid, item, frompos, topos)
if (item.uid == 13006) and getPlayerItemCount(cid, 16583) == 1 and getPlayerItemCount(cid, 16583) ==1 and getPlayerItemCount(cid,16583) ==1 then
doPlayerRemoveItem(cid, 16583, 1)
doPlayerRemoveItem(cid, 16583, 1)
doPlayerRemoveItem(cid, 16583, 1)
doTeleportThing(cid,TP)
return doPlayerSendTextMessage(cid, 23, "Voce conseguiu encontrar os itens supremos, continue por esse caminho. Poucos sairao vivos")
else
       doPlayerSendTextMessage(cid, 23, "Voce nao possui todos os itens necessarios para passar.")
return true
end
end
