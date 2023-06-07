local tpId = 1387
local tps = {
    ["Registeel"] = {
        pos = {
            x = 1490,
            y = 527,
            z = 8
        },
        toPos = {
            x = 1526,
            y = 588,
            z = 8
        },
        time = 65
    }
}

function removeTp(tp)
    local t = getTileItemById(tp.pos, tpId)
    if t then
        doRemoveItem(t.uid, 1)
        doSendMagicEffect(tp.pos, CONST_ME_POFF)
    end
end

function onDeath(cid)
    local tp = tps[getCreatureName(cid)]
    if tp then
        doCreateTeleport(tpId, tp.toPos, tp.pos)
        doCreatureSay(cid, "You have" .. tp.time .. " seconds to enter to the portal to continue in the quest.", TALKTYPE_ORANGE_1)
        addEvent(removeTp, tp.time * 1000, tp)
    end
    return TRUE
end
