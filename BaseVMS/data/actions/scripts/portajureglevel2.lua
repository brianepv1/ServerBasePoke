function onUse(cid, item, fromPosition, item2, toPosition)

	local teleport = {x=1839, y=1790, z=11}-- Coordenadas para onde o player irá ser teleportado.
	local item1 = 2151 -- ID do item3 que o player precisa para ser teleportado.
	
	if getPlayerItemCount(cid,item1) >= 10 then
		doPlayerRemoveItem(cid, item1, 10)
				doTeleportThing(cid, teleport)
			else
				doPlayerSendTextMessage(cid, 23, "Sorry, you need a "..getItemNameById(item3).." to enter.")
				doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
				return true
			end
end
