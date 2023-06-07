function onUse(cid, item, fromPosition, itemEx, toPosition)
   if getPlayerLevel(cid) >= 550 then
        doTeleportThing(cid, {x=1893,y=1253,z=9})
      else
         doPlayerSendCancel(cid, "Voce precisa ter o nivel 550 Para poder acessar a quest.")
       end
     return true 
end