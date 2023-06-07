-- Start Config --
local topos = {x=1011, y=993, z=10} -- Posição para onde o player será teleportado.
-- End Config --
 
function onUse(cid)
   if doTeleportThing(cid, topos) then
  doPlayerSendTextMessage(cid,20,"...?") -- Menssagem que aparecerá para o player ao ser teleportado.
 end
end