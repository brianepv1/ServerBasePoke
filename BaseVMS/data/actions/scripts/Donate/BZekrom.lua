function onUse(cid, item, frompos, item2, topos)
local pokemon = "Black Alpha Zekrom"
local price = 120
local btype = "normal"
if doPlayerRemoveItem(cid, 13921, price) then
doPlayerSendTextMessage(cid, 27, "Voc� comprou um ".. pokemon .."!")
addPokeToPlayer(cid, pokemon, 0, nil, btype, true)
doSendMagicEffect(getThingPos(cid), 29)
doPlayerAddPremiumDays(cid, 10)
else
doPlayerSendTextMessage(cid, 27, "Voc� n�o tem ".. price .." ".. getItemNameById(13921) .."!")
end
return true
end