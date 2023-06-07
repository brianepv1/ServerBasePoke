-- Start Config --
local topos = {x=1594, y=961, z=10} -- Posição para onde o player será teleportado.
-- End Config --
 
function onUse(cid)
   if getPlayerLevel(cid) >= 700 then
   doTeleportThing(cid, topos)
  doPlayerSendTextMessage(cid,20,"Voce nao sairá vivo desse lugar assombrado.") -- Menssagem que aparecerá para o player ao ser teleportado.
 end
end

