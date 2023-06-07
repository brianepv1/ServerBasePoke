function onUse(cid, item, fromPosition, itemEx, toPosition)
   if getPlayerLevel(cid) >= 400 then
        doTeleportThing(cid, {x=2613,y=81,z=5})
      else
         doPlayerSendCancel(cid, "Voce precisa ter o nivel 400 Para poder acessar a quest.")
       end
     return true 
end