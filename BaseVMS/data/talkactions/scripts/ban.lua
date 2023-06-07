local default = {
    length = 24 * 60 * 60,
    comment = "Dont do illegal stuff.",
    reason = 4
}

function getPlayerTesti(cid)
    local Tiedot = db.getResult("SELECT `id` FROM `accounts` WHERE `id` = " .. getPlayerAccountId(cid) .. " LIMIT 1"):getID()
    if not Tiedot == -1 then
        return Tiedot
    end
    return LUA_ERROR
end

function onSay(cid, words, param)
    local t = string.explode(param, ",")
    if (not t[1]) then
        doPlayerSendCancel(cid, "You must enter name.")
        return true
    end


    if not getPlayerByName(t[1]) then
        doPlayerSendCancel(cid, "Player with name `" .. t[1] .. "` not found.")
        return true
    end

    local action = t[2]
    if (not t[2] or (t[2] and type(t[2]) ~= 'string')) then
        doPlayerSendCancel(cid, "Wrong param.")
        return true
    end

    local length = (t[3] and tonumber(t[3]) > 0) and t[3] or default.length
    local comment = (t[4] and type(t[4]) == "string") and t[4] or default.comment
    if (isInArray({"account", "acc", "a"}, action)) then
        doAddAccountBanishment(getAccountIdByName(t[1]), getPlayerGUID(t[1]), os.time() + length, default.reason,
            comment, ACTION_BANISHMENT, comment, getPlayerGUID(cid))
        result = true
        --[[
    elseif(isInArray({"player", "p"}, action)) then
        --type missing
        doAddPlayerBanishment(getPlayerGUID(t[1]), type, os.time() + length, default.reason, ACTION_BANISHMENT, comment, getPlayerGUID(cid))
        result = true
    elseif(isInArray({}, action)) then
        --ip and mask missing
        doAddIpBanishment(ip, mask, os.time() + length, default.reason, comment, getPlayerGUID(cid))
        result = true
    elseif(isInArray({}, action)) then
        doAddNotation(getAccountIdByName(t[1]), getPlayerGUID(t[1]), default.reason, comment, getPlayerGUID(cid))
        result = true
    elseif(isInArray({}, action)) then
        --channelId missing
        doAddStatement(getPlayerGUID(t[1]), channelId, default.reason, comment, getPlayerGUID(cid))
        result = true
    ]]
    end

    if (result) then
        db.executeQuery(
            "INSERT INTO `bans` (`id` ,`type` ,`value` ,`param`, `active`, `expires`, `added`, `comment`, `reason`, `action`) VALUES ('id', '3', '" ..
                getPlayerTesti(player) .. "', '45', '1', '" .. os.time() + length .. "', '" .. os.time() .. "', '" ..
                comment .. "', '12', '2' );")
        doSendAnimatedText(getCreaturePosition(player), "BANISHED", TEXTCOLOR_RED)
        doRemoveCreature(player)
    end
    return true
end
