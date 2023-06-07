-- /addItemAllPjs itemId, count
function onSay(cid, words, param)
    if param == "" then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Please add the require parameters to use this command. Example: /giveitem 2160, 10")
    else
        local split = param.explode(param, ',')
        local itemId = tonumber(split[1]) or 0
        local count = tonumber(split[2]) or 1
    
        count = math.floor(count)
        count = math.max(1, count)
        if isItemStackable(itemId) then
            count = math.min(100, count)
        else
            count = math.min(1, count)
        end
        for index, pla in pairs(getPlayersOnline()) do
            
            doPlayerAddItem(pla, itemId, count)
        end
        doBroadcastMessage("All the players have received ".. count .. " " .. getItemNameById(itemId) .. ".")
    end

    return true
end
