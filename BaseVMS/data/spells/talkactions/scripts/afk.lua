local FRASES = {"Off-Line!", "Ya vuelvo!", "Estoy afk!", "Fuera del game!", "vuelvo en 1 min!"} -- Auto-Mensagens.
local TEMPO = 2 -- Intervalo de Tempo em segundos.
local function doSendAutoMessage(cid, pos)
if (isCreature(cid) == TRUE) then
npos = getThingPos(cid)
if (pos.x == npos.x) and (pos.y == npos.y) and (pos.z == npos.z) then
doSendAnimatedText(pos, FRASES[math.random(#FRASES)], math.random(255))
doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
addEvent(doSendAutoMessage, TEMPO*1000, cid, npos)
end
end
end
function onSay(cid, words, param)
pos = getThingPos(cid)
doSendAnimatedText(pos, FRASES[math.random(#FRASES)], math.random(255))
doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
doCreatureSay(cid, "Afk, deixe mensagem privado quee assim que voltar retorno.", TALKTYPE_ORANGE_1)
doPlayerPopupFYI(cid, "Voce esta afk! Ande para sair!")
addEvent(doSendAutoMessage, TEMPO*1000, cid, pos)
return TRUE
end