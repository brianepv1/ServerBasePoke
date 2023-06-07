-- HELD FUSION: 3X FUSION TIER 6

local card_id = {13953, 13974, 13988} -- joga os id dos card aqui
local HFusionPointTier6 = 1234606

function onSay(cid, words, param)

if getPlayerLevel(cid) < 200 then
doPlayerSendTextMessage(cid, 26, "Voc� precisa ser n�vel 200+ para utilizar esse recurso.")
return true
end

-- 3X HELD FUSION POINTS --
if getPlayerStorageValue(cid, HFusionPointTier6) >= 3 then

-- REMOVE 3X HELD FUSION POINTS --
setPlayerStorageValue(cid, HFusionPointTier6, getPlayerStorageValue(cid, HFusionPointTier6) - 3)


--- ADD HELD ALEATORIO T6 ---
local w = math.random (1,#card_id)
doPlayerAddItem(cid, card_id[w])

doSendAnimatedText(getThingPos(cid), "HELD FUSION!", math.random(1, 255))

return true
else
doPlayerSendTextMessage(cid, 26, "Voc� precisa de 3x Held Fusion Points [Tier: 6] para fazer isso.")
return true
end
end