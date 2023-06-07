local items = {
  {itemId = 12227, count = 1, chance = 30}, -- ITEM, QUANTIDADE, CHANCE
  {itemId = 6569, count = 10, chance = 20},
  {itemId = 18918, count = 1, chance = 20},
  {itemId = 20904, count = 5, chance = 20},
  {itemId = 12832, count = 1, chance = 20},   
  {itemId = 22004, count = 1, chance = 20},
  {itemId = 24110, count = 1, chance = 10},
  {itemId = 18919, count = 5, chance = 1},     
}
local broadcastitems = {12547, 15685}

function onUse(cid, item, frompos, item2, topos)

  local totalChance, randomTable, randomNumber = 0, {}, 0

  for _, itemInfo in pairs (items) do
    randomTable[itemInfo.itemId] = {min = totalChance + 1, max = itemInfo.chance, count = itemInfo.count or 1}
    totalChance = totalChance + itemInfo.chance
  end

  randomNumber = math.random(1, totalChance)
  for itemId, itemInfo in pairs (randomTable) do
    local min, max = itemInfo.min, itemInfo.min + itemInfo.max
    if randomNumber >= min and randomNumber <= max then
      local newItem = doPlayerAddItem(cid, itemId, itemInfo.count, false)
      if not newItem then return doPlayerSendCancel(cid, "Voce nao tem espaco para receber o item!") end
      doPlayerRemoveItem(cid, 15136, 1)
	  local pos = {x=getPlayerPosition(cid).x+0, y=getPlayerPosition(cid).y+0, z=getPlayerPosition(cid).z+0}
	  doSendMagicEffect(pos, 684) -- Id do efeito.
      local iInfo = getItemInfo(itemId)
      doPlayerSendTextMessage(cid, 25, "Voce ganhou "..itemInfo.count.." "..iInfo.name.."")
      for i, broaditem in ipairs(broadcastitems) do
        if itemId==broaditem then doBroadcastMessage(getCreatureName(cid).." acabou de ganhar: "..itemInfo.count.." "..iInfo.name.." (Raro) na presente box.", 19) end
      end
      break
    end
  end
  return true
end