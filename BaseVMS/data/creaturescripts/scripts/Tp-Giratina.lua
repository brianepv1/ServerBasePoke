local tpId = 1387
local tps = {
	["Giratina"] = {pos = {x=1703, y=256, z= 7}, toPos = {x=1701, y=256, z= 7}, time = 65},
}

function removeTp(tp)
	local t = getTileItemById(tp.pos, tpId)
	if t then
		doRemoveItem(t.uid, 1)
		doSendMagicEffect(tp.pos, CONST_ME_POFF)
	end
end

function onDeath(cid)
	local tp = tps[getCreatureName(cid)]
	if tp then
		doCreateTeleport(tpId, tp.toPos, tp.pos)
		doCreatureSay(cid, "O portal irá sumir em"..tp.time.." segundos.", TALKTYPE_ORANGE_1)
		addEvent(removeTp, tp.time*1000, tp)
	end
	return TRUE
end