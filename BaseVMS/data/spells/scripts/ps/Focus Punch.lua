function onCastSpell(cid, var)

	if isSummon(cid) then return true end

	docastspell(cid, "Focus Punch")

return true
end