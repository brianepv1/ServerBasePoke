function onCastSpell(cid, var)

	if isSummon(cid) then return true end

	docastspell(cid, "Supersonic")

return true
end