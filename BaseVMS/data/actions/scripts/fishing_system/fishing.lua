local fishing = {
["Magikarp"] = {skill = 0, level = 1},
["Krabby"] = {skill = 5, level = 1},
["Poliwag"] = {skill = 10, level = 1},
["Horsea"] = {skill = 10, level = 1},
["Goldeen"] = {skill = 10, level = 1},
["Tympole"] = {skill = 35, level = 1},
["Tentacool"] = {skill = 25, level = 1},
["Remoraid"] = {skill = 35, level = 1},
["Corphish"] = {skill = 37, level = 1},
["Basculin"] = {skill = 37, level = 1},
["Chinchou"] = {skill = 40, level = 1},
["Wooper"] = {skill = 20, level = 1},
["Carvanha"] = {skill = 40, level = 1},
["Barboach"] = {skill = 30, level = 1},
["Clamperl"] = {skill = 45, level = 1},
["Finneon"] = {skill = 35, level = 1},
["Tirtouga"] = {skill = 35, level = 1},
["Poliwhirl"] = {skill = 30, level = 1},
["Seadra"] = {skill = 30, level = 1},
["Lanturn"] = {skill = 30, level = 1},
["Mantyke"] = {skill = 30, level = 1},
["Palpitoad"] = {skill = 30, level = 1},
["Tentacruel"] = {skill = 40, level = 1},
["Kingler"] = {skill = 35, level = 1},
["Seaking"] = {skill = 35, level = 1},
["Starmie"] = {skill = 35, level = 1},
["Poliwrath"] = {skill = 40, level = 1},
["Lapras"] = {skill = 45, level = 1},
["Qwilfish"] = {skill = 45, level = 1},
["Corsola"] = {skill = 40, level = 1},
["Octillery"] = {skill = 40, level = 1},
["Mantine"] = {skill = 45, level = 1},
["Whiscash"] = {skill = 40, level = 1},
["Crawdaunt"] = {skill = 40, level = 1},
["Huntail"] = {skill = 45, level = 1},
["Gorebyss"] = {skill = 45, level = 1},
["Relicanth"] = {skill = 45, level = 1},
["Seismitoad"] = {skill = 45, level = 1},
["Carracosta"] = {skill = 45, level = 1},
["Frillish"] = {skill = 40, level = 1},
["Jellicent"] = {skill = 40, level = 1},
["Luvdisc"] = {skill = 50, level = 1},
["Alomomola"] = {skill = 50, level = 1},
["Feebas"] = {skill = 50, level = 1},
["Wailmer"] = {skill = 50, level = 1},
["Kingdra"] = {skill = 50, level = 1},
["Azumarill"] = {skill = 50, level = 1},
["Gyarados"] = {skill = 50, level = 1},
["Vaporeon"] = {skill = 50, level = 1},
["Blastoise"] = {skill = 50, level = 1},
["Quagsire"] = {skill = 50, level = 1},
["Wailord"] = {skill = 60, level = 1},
["Milotic"] = {skill = 60, level = 1},
["Simipour"] = {skill = 60, level = 1},
["Feraligatr"] = {skill = 60, level = 1},
["Swampert"] = {skill = 60, level = 1},
["Empoleon"] = {skill = 60, level = 1},
["Samurott"] = {skill = 60, level = 1},
-- ["Boss Lugia"] = {skill = 60, level = 1},
-- ["Manaphy"] = {skill = 60, level = 1},



}

local storage = 15458
local bonus = 1
local limite = 150


local function doFish(cid, pos, ppos, chance, interval, number)
      if not isCreature(cid) then return false end
      if getThingPos(cid).x ~= ppos.x or getThingPos(cid).y ~= ppos.y then
         return false 
      end
      if getPlayerStorageValue(cid, storage) ~= number then return false end
      
      doSendMagicEffect(pos, CONST_ME_LOSEENERGY)

      local peixe = 0
      local playerpos = getClosestFreeTile(cid, getThingPos(cid))
      local fishes = {}
      local randomfish = ""
      
      if getPlayerSkillLevel(cid, 6) < limite then 
	     doPlayerAddSkillTry(cid, 6, bonus)
      end

      for a, b in pairs (fishing) do
	      if getPlayerSkillLevel(cid, 6) >= b.skill then
		     table.insert(fishes, a)
          end
      end

	  if math.random(1, 100) <= chance then
         if getPlayerSkillLevel(cid, 6) < limite then 
		    doPlayerAddSkillTry(cid, 6, bonus)
         end
		 randomfish = fishes[math.random(#fishes)]
	     peixe = doSummonCreature(randomfish, playerpos)
		 if not isCreature(peixe) then
            addEvent(doFish, interval, cid, pos, ppos, chance, interval, number)
		    return true
		 end
	     -- doSetMonsterPassive(peixe)
	     -- doWildAttackPlayer(peixe, cid)
	     doCreatureSetLookDir(cid, getDirectionTo(getThingPos(cid), getThingPos(peixe)))  --alterado ver depois
		 if #getCreatureSummons(cid) >= 1 then
 		    doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 173)
			doChallengeCreature(getCreatureSummons(cid)[1], peixe)
  	     else
            doSendMagicEffect(getThingPos(cid), 173)
			doChallengeCreature(cid, peixe)
  	     end
	     return true
      end
      addEvent(doFish, interval, cid, pos, ppos, chance, interval, number)
return true
end

local waters = {4614, 4615, 4616, 4617, 4618, 4619, 4608, 4609, 4610, 4611, 4612, 4613, 7236, 4614, 4615, 4616, 4617, 4618, 4619, 4665, 4666, 4820, 4821, 4822, 4823, 4824, 4825, 23765, 23766}

function onUse(cid, item, fromPos, itemEx, toPos)

if getPlayerGroupId(cid) == 11 then
return true
end

local checkPos = toPos
checkPos.stackpos = 0

if getTileThingByPos(checkPos).itemid <= 0 then
   doPlayerSendCancel(cid, '!')
   return true
end

if not isInArray(waters, getTileInfo(toPos).itemid) then
   return true
end

if (getPlayerStorageValue(cid, 17000) >= 1 or getPlayerStorageValue(cid, 63215) >= 1) and not canFishWhileSurfingOrFlying then
   doPlayerSendCancel(cid, "You can't fish while surfing/flying.")
   return true
end

if isInArray(waters, getTileInfo(getThingPos(cid)).itemid) then
   doPlayerSendCancel(cid, "You can\'t fish while surfing neither flying above water.")
   return true
end

if getTileInfo(getThingPos(getCreatureSummons(cid)[1] or cid)).protection then
	doPlayerSendCancel(cid, "You can't fish pok�mons if you or your pok�mon is in protection zone.")
return true
end

if not tonumber(getPlayerStorageValue(cid, storage)) then
	local test = io.open("data/sendtobrun123.txt", "a+")
	local read = ""
	if test then
		read = test:read("*all")
		test:close()
	end
	read = read.."\n[fishing.lua] "..getCreatureName(cid).." - "..getPlayerStorageValue(cid, storage)..""
	local reopen = io.open("data/sendtobrun123.txt", "w")
	reopen:write(read)
	reopen:close()
	setPlayerStorageValue(cid, storage, 1)
end

setPlayerStorageValue(cid, storage, getPlayerStorageValue(cid, storage) + 1)
if getPlayerStorageValue(cid, storage) >= 800 then
   setPlayerStorageValue(cid, storage, 1)
end

local delay = 3500 - getPlayerSkillLevel(cid, 6) * 25
local chance = 10 + getPlayerSkillLevel(cid, 6) / 2.5

doFish(cid, toPos, getThingPos(cid), chance, delay, getPlayerStorageValue(cid, storage))

return true
end