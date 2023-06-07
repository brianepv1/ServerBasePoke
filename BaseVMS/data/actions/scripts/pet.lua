function onUse(cid, item, frompos, item2, topos)

local dolls = {
[22334] = {pet = "Entei"},
[11207] = {pet = "Suicune"},
[5791] = {pet = "Raikou"},
}

local go = dolls[item.itemid]
local summon = getCreatureSummons(cid)
---------------------------------------------------
if not (getTilePzInfo(getCreaturePosition(cid))) then
if #summon >= 1 then
for _, pid in ipairs(summon) do
doRemoveCreature(pid)
doCreatureSay(cid, ""..go.pet..", Recuar!", TALKTYPE_ORANGE_1)
end
return true
end

if item.itemid == 22334 then
if getPlayerStorageValue(cid, 28763) == 1 then
doConvinceCreature(cid, doSummonCreature(go.pet, getCreaturePosition(cid)))
doCreatureSay(cid, ""..go.pet..", GO!", TALKTYPE_ORANGE_1)
doSendAnimatedText(getPlayerPosition(cid), "Failed!", 180)
end
end 

if item.itemid == 11256 then
if getPlayerStorageValue(cid, 4444) == 1 then
doConvinceCreature(cid, doSummonCreature(go.pet, getCreaturePosition(cid)))
doCreatureSay(cid, ""..go.pet..", GO!", TALKTYPE_ORANGE_1)
else doPlayerSendTextMessage(cid, 19, "Voce precisa da quest para usar esse PET!")
doSendAnimatedText(getPlayerPosition(cid), "Failed!", 180)
end
end

if item.itemid == 11207 then
if getPlayerStorageValue(cid, 4445) == 1 then
doConvinceCreature(cid, doSummonCreature(go.pet, getCreaturePosition(cid)))
doCreatureSay(cid, ""..go.pet..", GO!", TALKTYPE_ORANGE_1)
else 
doPlayerSendTextMessage(cid, 19, "Voce precisa fazer a quest para usar esse PET!")
doSendAnimatedText(getPlayerPosition(cid), "Failed!", 180)
end
end

else
doPlayerSendTextMessage(cid, 19, "Voce nao pode sumonar seu PET em Protect Zone!")
doSendAnimatedText(getPlayerPosition(cid), "Failed!", 180)
return true
end
end