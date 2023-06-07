local config = {
    
    name = "Mewtwo", -- Nome do Summon
    max = 1, -- M�ximo de summons
    exaust_sto = 5555, -- Storage que contabiliza o exaust
    exaust_time = 3600 -- Segundos de Exaust
    
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
    local pos = getCreaturePosition(cid)
        if not exhaustion.check(cid, config.exaust_sto) then
            if table.maxn(getCreatureSummons(cid)) <= config.max then
                local target = doCreateMonster(config.name, pos)
                doConvinceCreature(cid, target)

                setPlayerStorageValue(target, 239192936, 1)
                doPlayerSendTextMessage(cid, 27, "Voce invocou o monstro ".. config.name .."!!")
                doSendMagicEffect(pos, CONST_ME_TELEPORT)
                exhaustion.set(cid, config.exaust_sto, config.exaust_time)
                return true
            else
                doPlayerSendTextMessage(cid, 27, "Voc� ja tem a quantidade m�xima de summons ativos!")
                doSendMagicEffect(pos, POFF)
                return false 
            end
        else
            doPlayerSendTextMessage(cid, 27, "Exhaustion!! Wait ".. exhaustion.get(cid, config.exaust_sto) .." seconds.")
            doSendMagicEffect(pos, POFF)
            return false
        end
    return true
end