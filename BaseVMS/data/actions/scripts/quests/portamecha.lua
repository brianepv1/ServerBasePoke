function onUse(cid, item, fromPosition, itemEx, toPosition)
   if getPlayerLevel(cid) >= 550 then
        doTeleportThing(cid, {x=1340, y=718, z=8})
      else
         doPlayerSendCancel(cid, "Voce precisa ter o nivel 550 Para poder acessar a quest.")
       end
     return true 
end