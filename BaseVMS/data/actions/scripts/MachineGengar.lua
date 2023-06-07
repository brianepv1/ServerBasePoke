function onUse(cid, item, frompos, item2)

    UID_DO_BAU = 12033
    STORAGE_VALUE = 16659
    ID_DO_PREMIO = 22100

    if getPlayerLevel(cid) >= 600 then
        if item.uid == UID_DO_BAU then
            queststatus = getPlayerStorageValue(cid, STORAGE_VALUE)
            if queststatus == -1 then
                doPlayerSendTextMessage(cid, 22, "Congratulations for complete Key Darkrai Quest.") -- Msg que ira aparecer
                doPlayerAddItem(cid, ID_DO_PREMIO, 1)
                doPlayerAddExperience(cid, 1000000) -- premio
                setPlayerStorageValue(cid, STORAGE_VALUE, 1)
            else
                doPlayerSendTextMessage(cid, 22, "You can only get 1 reward for Key Darkrai Quest.")
            end
        end
    else
        doPlayerSendCancel(cid, 'Somente lv 600+')
    end
    return 1
end
