local TP = {x=1687, y=452, z=9}

function onUse(cid, item, frompos, topos)
if (item.uid == 12012) and getPlayerItemCount(cid, 16660) == 1 then
doPlayerRemoveItem(cid, 16660, 1)
doTeleportThing(cid,TP)
return doPlayerSendTextMessage(cid, 23, "Voce conseguiu encontrar os itens supremos, continue por esse caminho. Poucos sairao vivos")
else
       doPlayerSendTextMessage(cid, 23, "Voce nao possui todos os itens necessarios para passar.")
return true
end
end
