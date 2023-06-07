function onUse(cid, item, fromPosition, itemEx, toPosition)
local config = {
s = 11128, -- storage
level = 350, -- level minimo
time = 3600, -- tempo em minutos para voltar a abrir a chest
item = {{20904, 3},{12227, 1},{2145, 2},{12832, 1},{15128, 1},{13974, 1},{13988, 1},{13953, 1}} -- items sortiados(pode adicionar mais)
}
if getPlayerLevel(cid) < config.level then 
doPlayerSendCancel(cid, "Você deve ter pelo menos level ".. config.level .." para abrir a Chest.") 
elseif getPlayerStorageValue(cid, config.s) >= os.time() then
local minutos = math.floor((getPlayerStorageValue(cid, config.s) - os.time())/(60)) 
doPlayerSendCancel(cid, "Você deve esperar ".. (minutos < 0 and 0 or minutos) .." minutos para voltar a abrir o Bau.")
end
local r = math.random(1, #config.item) 
doPlayerAddItem(cid, config.item[r][1], config.item[r][2]) 
setPlayerStorageValue(cid, config.s, os.time()+config.time*60) 
return true
end