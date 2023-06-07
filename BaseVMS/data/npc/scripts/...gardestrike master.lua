local keywordHandler = KeywordHandler:new()

local npcHandler = NpcHandler:new(keywordHandler)

NpcSystem.parseParameters(npcHandler)

local talkState = {}

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end

function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end

function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end

function onThink() npcHandler:onThink() end

function creatureSayCallback(cid, type, msg)

if(not npcHandler:isFocused(cid)) then

return false

end

local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid


rank = {"a Gardestrike Fist", "a Gardestrike Tamer","a Gardestrike Fighter","a Gardestrike DeathHand","a Gardestrike Champion"}


		if msgcontains(msg, 'clan') or msgcontains(msg, 'Clan') then

		   if getPlayerStorageValue(cid, 86228) == 6 then

			  selfSay("You already are of the clan Gardestrike!", cid)

			  talkState[talkUser] = 0

			  return true

		   elseif getPlayerStorageValue(cid, 86228) >= 1 then

			  selfSay("You already are of another clan!", cid)

			  talkState[talkUser] = 0

			  return true  

		   end

			  selfSay("So you want to join in my clan... Are you sure that?", cid)

			  talkState[talkUser] = 2

		elseif (msgcontains(msg, 'yes') or msgcontains(msg, 'Yes')) and talkState[talkUser] == 2 then

		   if getPlayerLevel(cid) < 80 then

			  selfSay("You are too weak yet... You need to be atleast level 80 to enter in the clan!", cid)

			  talkState[talkUser] = 0

			  return true

		   end

		   selfSay("OK then... Now you are a great member of de clan Gardestrike!", cid)

		   setPlayerStorageValue(cid, 86228, 6)

		   setPlayerStorageValue(cid, 862281, 1)

		   setPlayerStorageValue(cid, 181614, 1)

		   talkState[talkUser] = 0

		elseif msgcontains(msg, 'rank') or msgcontains(msg, 'rank') then

		   if getPlayerStorageValue(cid, 86228) == 6 then

			  selfSay("So.. you want to move up of rank?", cid)

			  talkState[talkUser] = 3

		   else

			  selfSay("You aren't of the clan gardestrike! Get out of here!", cid)

			  talkState[talkUser] = 0

			  return true

		   end

		elseif (msgcontains(msg, 'yes') or msgcontains(msg, 'Yes')) and talkState[talkUser] == 3 then

		   level = 80

		   if (getPlayerStorageValue(cid, 862281)+1) == 2 then

			  level = 90

		   elseif (getPlayerStorageValue(cid, 862281)+1) == 3 then

			  level = 100

		   elseif (getPlayerStorageValue(cid, 862281)+1) == 4 then

			  level = 110

		   elseif (getPlayerStorageValue(cid, 862281)+1) == 5 then

			  level = 120

		   end


		   if getPlayerLevel(cid) < level then

			  selfSay("You are too weak yet... You need to be atleast level "..level.." to move up of rank!", cid)

			  talkState[talkUser] = 0

			  return true

		   end

		   if getPlayerStorageValue(cid, 862281) == 5 then

			  selfSay("You are already a master of our clan!", cid)

			  talkState[talkUser] = 0

			  return true

		   end

		   setPlayerStorageValue(cid, 862281, getPlayerStorageValue(cid, 862281)+1)

		   if getPlayerStorageValue(cid, 862281) == 5 then

			  setPlayerStorageValue(cid, 181628, 1)

		   end

		   selfSay("So here we are... You are now a "..rank[getPlayerStorageValue(cid, 862281)]..", rank "..getPlayerStorageValue(cid, 862281).." of our clan!", cid)	  

		   talkState[talkUser] = 0


		elseif msgcontains(msg, 'shiny') or msgcontains(msg, 'Shiny') then

		   if getPlayerSlotItem(cid, 8).uid <= 0 then

			  selfSay("Sorry, you don't have a pokemon in the main slot!", cid)

			  talkState[talkUser] = 0

		return true

		end										--alterado v1.4


		ball = getItemAttribute(getPlayerSlotItem(cid, 8).uid, "poke")

		if not isInArray({"Hitmonlee", "Hitmonchan", "Hitmontop"}, ball) then

		   selfSay("Put a Hitmonchan's pokeball or a Hitmonlee's pokeball or a Hitmontop's pokeball atleast +20 in main slot!", cid)

			  talkState[talkUser] = 0

			  return true							--alterado v1.4

		   end


		   if getPlayerStorageValue(cid, 86228) ~= 6 and ball == "Hitmontop" then

			  selfSay("You aren't of the clan Gardestrike! Get out of here!", cid)

			  talkState[talkUser] = 0

			  return true							--alterado v1.4

		   else

			  selfSay("So you want to transform your "..ball.." in a Shiny "..ball.."? It will cost 200k!", cid)

			  talkState[talkUser] = 4

		   end

		elseif (msgcontains(msg, 'yes') or msgcontains(msg, 'Yes')) and talkState[talkUser] == 4 then

		   if getPlayerSlotItem(cid, 8).uid <= 0 then

			  selfSay("Sorry, you don't have a pokemon in the main slot!", cid)

			  talkState[talkUser] = 0

		return true

		end

																			  --alterado v1.2

		if #getCreatureSummons(cid) >= 1 then

		   selfSay("Go back your pokemon!", cid)

			  talkState[talkUser] = 0

			  return true

		   end


		local pb = getPlayerSlotItem(cid, 8).uid


		if not isInArray({"Hitmonlee", "Hitmonchan", "Hitmontop"}, getItemAttribute(pb, "poke")) then	 --alterado v1.4

		   selfSay("Put a Hitmonchan's pokeball or a Hitmonlee's pokeball or a Hitmontop's pokeball atleast +20 in main slot!", cid)

			  talkState[talkUser] = 0

			  return true

		   end


		   if getPlayerStorageValue(cid, 86228) ~= 6 and getItemAttribute(pb, "poke") == "Hitmontop" then

			  selfSay("You aren't of the clan Gardestrike! Get out of here!", cid)

			  talkState[talkUser] = 0												 --alterado v1.4

			  return true

		   end


		   if not getItemAttribute(pb, "boost") or getItemAttribute(pb, "boost") < 20 then

			  selfSay("Sorry, your "..getItemAttribute(pb, "poke").." is not boosted +20!", cid)

			  talkState[talkUser] = 0

			  return true

		   end

										  --100000 = 1k, 1000000 = 10k, 10000000 = 100k

		   if doPlayerRemoveMoney(cid, 20000000) == true then

			  selfSay("So there is it! Enjoy!", cid)

			  local name = getItemAttribute(pb, "poke")

			  doItemSetAttribute(pb, "hp", 1)

			  doItemSetAttribute(pb, "poke", "Shiny "..getItemAttribute(pb, "poke"))

		doItemSetAttribute(pb, "description", "Contains a Shiny "..getItemAttribute(pb, "poke")..".")

		doItemEraseAttribute(pb, "boost")

		doTransformItem(getPlayerSlotItem(cid, 7).uid, fotos["Shiny "..name])

		if useKpdoDlls then

		  doCreatureExecuteTalkAction(cid, "/pokeread")

		   end

		talkState[talkUser] = 0

		return true

	   else

		   selfSay("You don't have enough money!", cid)

		   talkState[talkUser] = 0

		   return true

		  end

		end

return true

end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)

npcHandler:addModule(FocusModule:new())			
