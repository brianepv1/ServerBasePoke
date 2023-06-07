function onUse(cid, item, frompos, item2, topos)
    local pokemon = "War Mamoswine"
    local price = 250
    local btype = "normal"
    if doPlayerRemoveItem(cid, 18918, price) then
        doPlayerSendTextMessage(cid, 27, "Usted compro un " .. pokemon .. "!")
        addPokeToPlayer(cid, pokemon, 0, nil, btype, true)
        doSendMagicEffect(getThingPos(cid), 29)
        doPlayerAddPremiumDays(cid, 10)
    else
        doPlayerSendTextMessage(cid, 27, "No tienes " .. price .. " " .. getItemNameById(18918) .. "!")
    end
    return true
end
