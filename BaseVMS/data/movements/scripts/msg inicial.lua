function onStepIn(cid, item)
local msg = "###Bem vindo ao PokeChampions!###\n\nBoa Jornada.\n\n\n\nMais novidades vir�o!!" -- Mensagem que ser� mandada

if isPlayer(cid) then
doPlayerPopupFYI(cid, msg)
end
return true
end
