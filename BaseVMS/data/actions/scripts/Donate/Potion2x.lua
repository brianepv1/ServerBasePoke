local config = {

    dd = 18918, -- id do diamond , quantidade

    ddd = 4, -- quantidade

    item = 7439, -- id do premio , quantidade

    quantidade = 1

}

function onUse(cid, item, frompos, item2, topos)

    if doPlayerRemoveItem(cid, config.dd, config.ddd) then

        doPlayerAddItem(cid, config.item, config.quantidade)

        doPlayerSendTextMessage(cid, 27, "Congratulations! Here is your Potion 2x donate!")

    else

        doPlayerSendCancel(cid, "voce precisa dessa quantidade de pontos " .. config.ddd .. ". ")

    end

    return TRUE

end