function onSay(cid, words)
local msg = [[ Bom o sistema de Clan funciona da seguinte maneira:


�1- V� ate o PvP, logo acima voc� vai encotrar v�rias entradas.


�2- L� ir�o ter as �reas de clans.


�3- Entre na qual voc� acha que o tipo � melhor.


�4- Logo ap�s fale com o NPC "hi" depois "clan" depois "yes".




------ OBS: Vantagens: o pokemon do tipo do clan que voc� est�, ------
                 ele ter� ataques mais fortes.
]]

doPlayerPopupFYI(cid, msg)
return true
end