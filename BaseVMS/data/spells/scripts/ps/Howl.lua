function onCastSpell(cid, var)

	if isSummon(cid) then return true end

	docastspell(cid, "Howl")

return true
end