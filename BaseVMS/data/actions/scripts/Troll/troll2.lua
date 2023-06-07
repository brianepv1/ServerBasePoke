-- Start Config --
local topos = {x=1077, y=1030, z=10} -- Posição para onde o player será teleportado.
-- End Config --
 
function onUse(cid)
   if doTeleportThing(cid, topos) then
  doPlayerSendTextMessage(cid,20,"...?") -- Menssagem que aparecerá para o player ao ser teleportado.
 end
end