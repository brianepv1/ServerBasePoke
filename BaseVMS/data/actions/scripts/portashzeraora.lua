function onUse(cid, item, fromPosition, itemEx, toPosition)
   if getPlayerLevel(cid) >= 250 then
        doTeleportThing(cid, {x=1223,y=1036,z=7})
      else
         doPlayerSendCancel(cid, "Voce precisa ter o nivel 250 Para poder acessar a quest.")
       end
     return true 
end