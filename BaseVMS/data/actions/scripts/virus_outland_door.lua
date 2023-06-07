function onUse(cid, item, fromPosition, itemEx, toPosition)
    if getPlayerLevel(cid) >= 500 then
         doTeleportThing(cid, {x=985,y=931,z=10})
       else
          doPlayerSendCancel(cid, "You need minimun level of 500 to access to Virus Outland.")
        end
      return true 
 end