
local TP = {x=365, y=93, z=8}

function onUse(cid, item, frompos, topos)
if (item.uid == 13009) and getPlayerItemCount(cid, 2141) == 1 then
doPlayerRemoveItem(cid, 2141, 1)
doTeleportThing(cid,TP)
return doPlayerSendTextMessage(cid, 23, "Voce conseguiu encontrar os itens supremos, continue por esse caminho. Poucos sairao vivos")
else
       doPlayerSendTextMessage(cid, 23, "Voce nao possui todos os itens necessarios para passar.")
return true
end
end

