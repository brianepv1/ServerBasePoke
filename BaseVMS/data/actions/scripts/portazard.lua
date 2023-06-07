function onUse(cid, item, fromPosition, itemEx, toPosition)
   if getPlayerLevel(cid) >= 350 then
        doTeleportThing(cid, {x=1092,y=1110,z=9})
      else
         doPlayerSendCancel(cid, "Voce precisa ter o nivel 350 Para poder acessar a quest.")
       end
     return true 
end