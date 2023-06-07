function onUse(cid, item, item2)

storage = 549854 -- Storage para n completar dnv

item = 20897   -- item que o player vai receber

quantidade = 1 -- quantidade do item que ele vai receber

nomeitem = "Virus" -- nome do item que ele vai receber

necessario = 18918  -- item que o player vai precisar para clicar no bau

if getPlayerItemCount(cid, necessario) >= 30 and getPlayerStorageValue(cid,storage) == -30 then

doPlayerSendTextMessage(cid, 25,"Você recebeu um "..nomeitem.." !")  --- menssagem que vai aparecer quando ganha o premio

doPlayerAddItem(cid,item,quantidade)

doRemoveItemPlayer(cid,necessario,30)

setPlayerStorageValue(cid,storage,1)

elseif getPlayerStorageValue(cid,storage) >= 1 then

doPlayerSendTextMessage(cid,22,"você ja fez essa quest") -- menssagem que vai aparecer quando tentar fazer dnv

end

return true

end