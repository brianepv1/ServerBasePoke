function onUse(cid, item, frompos, item2, topos)
    local pokemon = "Fossil Kabutops"
    local price = 1
    local btype = "normal"
    if doPlayerRemoveItem(cid, 2092, price) then
        doPlayerSendTextMessage(cid, 27, "Voc� comprou um " .. pokemon .. "!")
        addPokeToPlayer(cid, pokemon, 0, nil, btype, true)
        doSendMagicEffect(getThingPos(cid), 29)
        doPlayerAddPremiumDays(cid, 10)
    else
        doPlayerSendTextMessage(cid, 27, "Voc� n�o tem " .. price .. " " .. getItemNameById(2092) .. "!")
    end
    return true
end
