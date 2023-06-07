local lendas = { -- id dos item / nome do guardian
    [3000] = {"Mew"},
    [223861] = {"Mewtwo"},
    [3002] = {"Articuno"},
    [3003] = {"Zapdos"},
    [3004] = {"Moltres"},
    [23861] = {"Entei"},
    [23860] = {"Suicune"},
    [23859] = {"Raikou"},
    [3008] = {"Ho-oh"},
    [30010] = {"Lugia"},
}
function onUse(player, item, fromPosition, target, toPosition, ishotkey)
slot = player:getSlotItem(CONST_SLOT_AMMO)
if not slot then
player:sendTextMessage(MESSAGE_STATUS_SMALL, "" .. player:getName() .. " Put the Guardian in the right slot" .." ")
return true
end
local lenda = lendas[item.itemid]
if not lenda then
player:sendTextMessage(MESSAGE_STATUS_SMALL, "" .. player:getName() .. " Sorry, ask adm to set up the guardian string!" .." ")
return true
elseif(player:getStorageValue(28723) == 1)then 
player:sendTextMessage(MESSAGE_STATUS_SMALL, "Have you ever used this guardian")
return true
else
local postion = player:getPosition()
local monster = Game.createMonster(lenda[1], postion)
if not monster then 
player:sendTextMessage(MESSAGE_STATUS_SMALL,"" ..player:getName() .." Sorry you can't summon, contact a member of staff!.")
return true 
end
local message = {"" .. player:getName() .. " Go Guardian : " .. lenda[1] .. ""}
player:sendTextMessage(MESSAGE_INFO_DESCR, "Have you ever used this guardian")
player:setStorageValue(28723, 1)
player:say(message[1], TALKTYPE_MONSTER_SAY)
item:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION,"[Name] : " .. lenda[1] .. 
"\n" .. "[Owner] : " .. player:getName() .. 
"\n" .. "[Last use] :" .. os.date() .. "")
local guardians = MonsterType(lenda[1])
if not guardian then return false end
guardians:nameDescription("Guardian " .. lenda[1] .. "")
guardians:name("Guardian " .. lenda[1] .. "")
monster:setMaster(player)
monster:setMaxHealth(70000000)
monster:setSkull(SKULL_GREEN)
monster:getPosition():sendMagicEffect(6)
monster:changeSpeed(600000)
speed = monster:getSpeed()
healt = monster:getHealth()
monster:say("GUARDIAN!" .. lenda[1] .. "", TALKTYPE_MONSTER_SAY)
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"You used the Guardian ( " .. lenda[1] .. " ).")
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Your Guardian is alive: " .. healt .. " / " .. monster:getMaxHealth() .. " wait for his life to fully load.")
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Guardian Speed " .. speed .. ".")
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Guardian owner " .. player:getName() .. ".")
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Last time the Guardian was used [" .. os.date() .. "].")
return true
end
end