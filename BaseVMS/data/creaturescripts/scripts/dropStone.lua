local effect = 169                                --by brun123    --alterado v1.9 \/  --creditos-- Night Wolf --
local correx = 1 -- correcao de x
local correy = 1 -- correcao de y

local function func(cid, position, corpseid, effect)
    if not isCreature(cid) then return true end
	  
     local corpse = getTileItemById(position, corpseid).uid
	if corpse <= 1 then return end
    if not isContainer(corpse) then return true end
    for slot = 0, (getContainerSize(corpse)-1) do
        local item = getContainerItem(corpse, slot)
        if item.uid <= 1 then return end
        if isStone(item.itemid) then
			return doSendMagicEffect({x = position.x + correx, y = position.y + correy, z = position.z}, effect)
        end
    end
end

function onKill(cid, target, lastHit) 
    if not ehMonstro(target) then return true end
	
    local corpse = getMonsterInfo(getCreatureName(target)).lookCorpse    
    addEvent(func, 5, getCreatureSummons(cid)[1], getThingPos(target), corpse, effect)
return true
end