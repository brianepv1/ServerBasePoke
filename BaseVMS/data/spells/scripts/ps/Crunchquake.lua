function onCastSpell(cid, var)

	if isSummon(cid) then return true end

	docastspell(cid, "Crunchquake")

return true
end