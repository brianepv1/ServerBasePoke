function onUse(cid, item, frompos, item2, topos)

    UID_DO_BAU = 3615
    STORAGE_VALUE = 3615
    ID_DO_PREMIO = 22129
    ID_DO_PREMIO1 = 6569

    if getPlayerLevel(cid) >= 400 then
        if item.uid == UID_DO_BAU then
            queststatus = getPlayerStorageValue(cid, STORAGE_VALUE)
            if queststatus == -1 then
                doPlayerSendTextMessage(cid, 22, "Contragolutions for complete Machine Gengar quest.") -- Msg que ira aparecer
                doPlayerAddItem(cid, ID_DO_PREMIO, 1)
                doPlayerAddItem(cid, ID_DO_PREMIO1, 10)
                doPlayerAddExperience(cid, 100000) -- premio
                setPlayerStorageValue(cid, STORAGE_VALUE, 1)
            else
                doPlayerSendTextMessage(cid, 22, "You can only get 1 reward for Machine Gengar Quest.")
            end
        end
    else
        doPlayerSendCancel(cid, 'Somente lvl 400+')
    end
    return 1
end
