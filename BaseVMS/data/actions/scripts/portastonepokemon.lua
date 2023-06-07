function onUse(cid, item, fromPosition, itemEx, toPosition)
   if getPlayerLevel(cid) >= 200 then
        doTeleportThing(cid, {x=1982,y=790,z=12})
      else
         doPlayerSendCancel(cid, "Voce precisa ter o nivel 200 Para poder acessar a quest.")
       end
     return true 
end