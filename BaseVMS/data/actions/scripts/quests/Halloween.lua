local posis = {
{'Volcanic',    {x=957, y=605, z=6}}, --nome de cada clan e a pos aonde o player desse clan tem q tar...
{'Seavell',     {x=959, y=606, z=6}},
{'Orebound',    {x=962, y=607, z=6}},
{'Wingeon',     {x=962, y=604, z=6}},
{'Naturia',     {x=966, y=605, z=6}},
}

local toPosi = {x=939, y=588, z=8} --pos pra onde os players serao teleportados

function onUse(cid, item, frompos, item2, topos)


for _, array in ipairs(posis) do
local p = getRecorderPlayer(array[2])
if not isPlayer(p) or getPlayerLevel(cid) <= 400 then
doPlayerSendTextMessage(cid, 27, "Algum dos players não está na posição correta ou não possui level 400!")
return true
end
end
for _, array in ipairs(posis) do
local p = getRecorderPlayer(array[2])
if isPlayer(p) then
doTeleportThing(p, toPosi)
doSendMagicEffect(getThingPos(p), 21)
end
end

return true
end