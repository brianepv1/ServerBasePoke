function onStepIn(cid, item, position, fromPosition)
    if not isPlayer(cid) then
       return true
    end

    if item.actionid == 19456 and not isPremium(cid) then
        doTeleportThing(cid, fromPosition, TRUE)
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,"Voc� n�o � vip!")
        doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
       return true
    end
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,"Voc� � vip e pode passar.")
   return true
end