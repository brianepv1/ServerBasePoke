local poke = {"Slowking", "Virus Alakazam", "Mega Wobbuffet", "Shiny Wobbuffet", "Shiny Xatu", "Mega Alakazam", "Mega Slowbro", "Shiny Abra", "Shiny Mr. Mime", "Hypno", "Shiny Hypno", "Natu", "Xatu", "Abra",
 "Gardevoir", "Shiny Gardevoir", "Kadabra", "Alakazam", "Shiny Abra", "Shiny Alakazam", "Mr. Mime", "Gallade", "Ralts", "Kirlia", "Claydol", "Elgyem", "Slowbro", "Slowpoke", "Exeggcute", "Exeggutor", "Drowzee", "Starmie", "Jynx", "Virus Gallade"}  --alterado v1.9
local etele = 0
local cdtele = 0

local config = {
premium = true, -- se precisa ser premium account (true or false) ALTERE AQUI PARA PREMIUM OU FREE
battle = true	-- se precisa estar sem battle (true). Se colocar false, poder� usar teleport no meio de batalhas
}

local places = {
[1] = {name = "Saffron", id = 1},
[2] = {name = "Cerulean", id = 2},
[3] = {name = "Lavender", id = 3},
[4] = {name = "Fuchsia", id = 4},
[5] = {name = "Celadon", id = 5},
[6] = {name = "Pewter", id = 6},
[7] = {name = "Pallet", id = 9},
[8] = {name = "Viridian", id = 8},
[9] = {name = "Vermilion", id = 7},
[10] = {name = "Cinnabar", id = 10},
[11] = {name = "Larosse", id = 16},
[12] = {name = "Canavale", id = 15},
[13] = {name = "Orre", id = 17},
[14] = {name = "Alagoinha", id = 20},
[15] = {name = "Castelia", id = 21},
[16] = {name = "Goldenrod", id = 22},
[17] = {name = "Azalea", id = 23},
[18] = {name = "Violet", id = 24},
[19] = {name = "Cherrygrove", id = 25},
[20] = {name = "Olivine", id = 26},
[21] = {name = "Ecruteak", id = 27},
[22] = {name = "Mahogany", id = 28},
[23] = {name = "Cianwood", id = 29},
[24] = {name = "Newbark", id = 30},
[25] = {name = "Blackthorn", id = 31},
}

function onSay(cid, words, param)

	if #getCreatureSummons(cid) == 0 then
		doPlayerSendCancel(cid, "You need a pokemon to use teleport.")
	return true
	end

	if not isInArray(poke, getCreatureName(getCreatureSummons(cid)[1])) then
	return 0
	end
	
    if getPlayerStorageValue(cid, 22545) == 1 then      --golden arena
       doPlayerSendCancel(cid, "You can't do that while the golden arena!")
    return true
    end
    
    if getPlayerStorageValue(cid, 212124) >= 1 then         --alterado v2.6
       return doPlayerSendCancel(cid, "You can't do it with a pokemon with mind controlled!")
    end

    if getPlayerStorageValue(cid, 52480) >= 1 then
       return doPlayerSendCancel(cid, "You can't do it while a duel!")  --alterado v2.6
    end
    
	if exhaustion.get(cid, etele) and exhaustion.get(cid, etele) > 0 then
		local tempo = tonumber(exhaustion.get(cid, etele)) or 0
		local min = math.floor(tempo)
		doPlayerSendCancel(cid, "Your pokemon is tired, wait "..getStringmytempo(tempo).." to teleport again.")
	return true
	end

	if config.premium and not isPremium(cid) then
		doPlayerSendCancel(cid, "Only premium members are allowed to use teleport.")
	return true
	end

	if config.battle and getCreatureCondition(cid, CONDITION_INFIGHT) then
		doPlayerSendCancel(cid, "Your pokemon can't concentrate during battles.")
	return true
	end

	if (param == '') then
		local str = ""
		str = str .. "Places to go :\n\nHouse\n"
			for a = 1, #places do
				str = str..""..places[a].name.."\n"
			end
		doShowTextDialog(cid, 7416, str)
	return true
	end

	local item = getPlayerSlotItem(cid, 8)
	local nome = getPokeballName(item.uid)
	local summon = getCreatureSummons(cid)[1]
	local lastppos = getThingPos(cid)
	local lastspos = getThingPos(summon)
	local telepos = {}
	local myplace = ""
	local townid = 0

	if string.lower(param) == "house" then

		if not getHouseByPlayerGUID(getPlayerGUID(cid)) then
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "You don't own a house.")
		return true
		end

		telepos = getHouseEntry(getHouseByPlayerGUID(getPlayerGUID(cid)))
		myplace = "our home"

	else

		for x = 1, #places do
			if string.find(string.lower(places[x].name), string.lower(param)) then
				townid = places[x].id
				myplace = places[x].name
			end
		end

		if myplace == "" then
			doPlayerSendCancel(cid, "That place doesn't exist.")
		return true
		end

	end

	if myplace ~= "" and townid > 0 then
		telepos = getTownTemplePosition(townid)
	end

	if getDistanceBetween(getThingPos(cid), telepos) <= 15 then
		doPlayerSendCancel(cid, "You are too near to the place you want to go!")
	return true
	end

	doSendMagicEffect(getThingPos(summon), 29)
	doSendMagicEffect(getThingPos(cid), 29)

	doTeleportThing(cid, telepos, false)

	local pos2 = getClosestFreeTile(cid, getPosByDir(getThingPos(cid), SOUTH))

	doTeleportThing(summon, pos2, false)

	doSendMagicEffect(getThingPos(cid), 29)

	doCreatureSay(cid, ""..nome..", teleport to "..myplace.."!", 1)
	doCreatureSay(cid, ""..nome..", teleport to "..myplace.."!", 1, false, 0, lastppos)
	doCreatureSay(summon, "TELEPORT!", TALKTYPE_MONSTER)
	doCreatureSay(summon, "TELEPORT!", TALKTYPE_MONSTER, false, 0, lastspos)

	doCreatureSetLookDir(cid, SOUTH)
	doCreatureSetLookDir(summon, SOUTH)

	doSendMagicEffect(getThingPos(summon), CONST_ME_TELEPORT)
	exhaustion.set(cid, etele, cdtele)

return true
end 