function onUse(cid, item, frompos, item2, topos)
local pokemon = "Litleo"
local price = 1
local btype = "normal"
if doPlayerRemoveItem(cid, 2089, price) then
doPlayerSendTextMessage(cid, 27, "Você comprou um ".. pokemon .."!")
addPokeToPlayer(cid, pokemon, 0, nil, btype, true)
doSendMagicEffect(getThingPos(cid), 29)
doPlayerAddPremiumDays(cid, 10)
else
doPlayerSendTextMessage(cid, 27, "Você não tem ".. price .." ".. getItemNameById(2089) .."!")
end
return true
end