-- HELD CONVERTER: Y-CURE TIER 2 --

function onSay(cid, words, param)

if getPlayerLevel(cid) < 200 then
doPlayerSendTextMessage(cid, 26, "Voc� precisa ser n�vel 200+ para utilizar esse recurso.")
return true
end

-- CURE TIER 2 --
if getPlayerItemCount(cid, 13984) >= 1 then

-- CURE TIER 2 --
doPlayerRemoveItem(cid, 13984, 1)

-- 
local HFusionPointTier1 = 1234602


setPlayerStorageValue(cid, HFusionPointTier1, getPlayerStorageValue(cid, HFusionPointTier1) + 1)


addEvent(doSendMagicEffect, 1 * 100, getCreaturePosition(cid), 640)
addEvent(doSendMagicEffect, 1 * 200, getCreaturePosition(cid), 661)
addEvent(doSendMagicEffect, 1 * 300, getCreaturePosition(cid), 35)
addEvent(doSendMagicEffect, 1 * 400, getCreaturePosition(cid), 640)
addEvent(doSendMagicEffect, 1 * 500, getCreaturePosition(cid), 661)
addEvent(doSendMagicEffect, 1 * 600, getCreaturePosition(cid), 39)
doSendMagicEffect(getCreaturePosition(cid), 640)
doSendMagicEffect(getCreaturePosition(cid), 661)
doSendMagicEffect(getCreaturePosition(cid), 207)


doSendAnimatedText(getThingPos(cid), "HELD CONVERTER!", math.random(1, 255))

return true
else
doPlayerSendTextMessage(cid, 26, "Voc� precisa de um Y-Cure (Tier: 2) para trocar por um Held Fusion Point (Tier: 2).")
return true
end
end