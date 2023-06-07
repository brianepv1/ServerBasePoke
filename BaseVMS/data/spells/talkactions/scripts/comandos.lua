local msg = [[
Server Info
|----------------Comandos------------------|
!afk on, ou !afk off.
!autoloot, para ver comandos do autoloot.
!bug, para retornar ao CP
!anuncio "msg", anunciar para todo o server.
"correr", para aumentar sua velocidade.
!pokeballs "pokemon" para ver balls usadas.
!report "msg", para reportar um bug.
!revert, reverte o ditto para sua forma.
!house
!luz 
!bank
!bless, para diminuir sua penalidade por morte
]]
function onSay(cid, words, param)
doPlayerPopupFYI(cid, msg)
end