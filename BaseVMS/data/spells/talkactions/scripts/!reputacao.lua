function onSay(cid, words)
local msg = [[ Bom o sistema de Reputa��o fuciona da seguinte forma:


�1- !rep (nome do player) - d� REP para o player.


�2- !myrep - consulta minha reputa��o.


�3- !rankrep - confere os REP's de quem est� online.


�4- Voc� pode ganhar muitos REP's ajudando as pessoas.



------ OBS: Pode haver eventos no server para quem tiver ------
             uma certa quantidade de reputa��o. 
]]

doPlayerPopupFYI(cid, msg)
return true
end