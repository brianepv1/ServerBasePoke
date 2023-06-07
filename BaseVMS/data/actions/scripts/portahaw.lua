function onUse(cid, item, fromPosition, itemEx, toPosition)
   if getPlayerLevel(cid) >= 500 then
        doTeleportThing(cid, {x=1831,y=637,z=8})
      else
         doPlayerSendCancel(cid, "Voce precisa ter o nivel 500 Para poder acessar a quest.")
       end
     return true 
end