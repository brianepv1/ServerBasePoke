function onUse(cid, item, fromPosition, itemEx, toPosition)
if (getPlayerStorageValue(cid, 120706072014) == EMPTY_STORAGE) then
doPlayerSendTextMessage(cid,22,"Voce ganhou pokebolas e um pouco de experiencia.") 
doPlayerAddExperience(cid,50000) -- quantidade de experiencia
doPlayerAddItem(cid,12344,100) 
doPlayerAddItem(cid,2392,100) 
doPlayerAddItem(cid,12227,1) 
doPlayerAddItem(cid,12349,100)
doPlayerAddItem(cid,2160,10)
doTeleportThing(cid, {x= 151, y= 126, z= 6}) -- posição para teleportar
setPlayerStorageValue(cid, 120706072014, 1)
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_HOLYDAMAGE)
else
doPlayerSendTextMessage(cid,22,"O bau esta vazio.")
end
return true
end