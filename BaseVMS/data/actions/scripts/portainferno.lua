function onUse(cid, item, fromPosition, itemEx, toPosition)
   if getPlayerLevel(cid) >= 700 then
        doTeleportThing(cid, {x=551,y=904,z=9})
      else
         doPlayerSendCancel(cid, "Voce precisa ter o nivel 700 Para poder acessar a quest.")
       end
     return true 
end