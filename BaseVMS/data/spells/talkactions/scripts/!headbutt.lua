function onSay(cid, words)
local msg = [[ Bom o sistema de Headbutt funciona da seguinte maneira:


�1- Voc� d� DEX em um pokemon e v� se ele tem a 
    habilidade de Headbutt.

�2- V� at� uma �rvore habitada que tem em todo o mapa.


�3- Solte seu Pokemon, e d� order, logo apos 
    clique na �rvore habitada.

�4- No mesmo instante vir� um ou mais pok�mons.




------ OBS: Pode dropar itens raros nesses pokemons que  ------
                  voc� retirar das �rvores.
]]

doPlayerPopupFYI(cid, msg)
return true
end