function onUse(cid, item, frompos, item2, topos, pos)
 
local addons = {229}
local randomChance = math.random(1, 1)
 
if item2.itemid == 25055 then
doSendMagicEffect(getCreaturePosition(cid), 28)
doRemoveItem(item2.uid, 1)
doPlayerAddItem(cid, addons[randomChance], 1)
doPlayerSendTextMessage(cid, 27, "Usted gano un Addon!")
return true
 
end
end