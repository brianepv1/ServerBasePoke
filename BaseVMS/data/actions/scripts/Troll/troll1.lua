-- Start Config --
local topos = {x=970, y=1067, z=8} -- Posição para onde o player será teleportado.
-- End Config --
 
function onUse(cid)
   if doTeleportThing(cid, topos) then
  doPlayerSendTextMessage(cid,20,"...?") -- Menssagem que aparecerá para o player ao ser teleportado.
 end
end