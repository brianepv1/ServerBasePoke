function onStepIn(cid, item)
local msg = "###Bem vindo ao PStage!###\n\nStaff: Matheus y Gregorio.\n\n\n\nUse o comando !sistemas para saber mais!!" -- Mensagem que ser� mandada

if isPlayer(cid) then
doPlayerPopupFYI(cid, msg)
end
return true
end
