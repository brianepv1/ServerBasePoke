local days_gain = 365 -- Dias que ganham

function onUse (cid,item,frompos,item2,topos)

if not doRemoveItem(item.uid) then return true end

doPlayerAddPremiumDays(cid, days_gain)
doSendMagicEffect(getCreaturePosition(cid), 14)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voc� acaba de ganhar 1 ano de Premium Account, ter� �reas e bonus EXP exclusivas como benef�cio!")
return true
end