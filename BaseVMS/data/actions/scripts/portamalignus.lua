function onUse(cid, item, fromPosition, itemEx, toPosition)
   if getPlayerLevel(cid) >= 450 then
        doTeleportThing(cid, {x=1670,y=1067,z=6})
      else
         doPlayerSendCancel(cid, "Voce precisa ter o nivel 450 Para poder acessar a quest.")
       end
     return true 
end