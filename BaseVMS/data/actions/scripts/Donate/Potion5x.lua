local config = {

    dd = 18918, -- id do diamond , quantidade

    ddd = 10, -- quantidade

    item = 7440, -- id do premio , quantidade

    quantidade = 1

}

function onUse(cid, item, frompos, item2, topos)

    if doPlayerRemoveItem(cid, config.dd, config.ddd) then

        doPlayerAddItem(cid, config.item, config.quantidade)

        doPlayerSendTextMessage(cid, 27, "Congratulations! Here is your Potion 5x donate!")

    else

        doPlayerSendCancel(cid, "You need " .. config.ddd .. ". ")

    end

    return TRUE

end
