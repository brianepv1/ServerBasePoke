function onUse(cid, item, fromPosition, itemEx, toPosition)
   if getPlayerLevel(cid) >= 200 then
        doTeleportThing(cid, {x=1827,y=1806,z=8})
      else
         doPlayerSendCancel(cid, "Voce nao tem level 200+ para passar.")
       end
     return true 
end