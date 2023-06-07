
local idHeldPointTier1 = 1234601
local idHeldPointTier2 = 1234602
local idHeldPointTier3 = 1234603
local idHeldPointTier4 = 1234604
local idHeldPointTier5 = 1234605
local idHeldPointTier6 = 1234606
local idHeldPointTier7 = 1234607
function onSay(cid, words, param)
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ">>>You have: " .. getPlayerStorageValue(cid, idHeldPointTier1) .. " Held Points Tier 1<<<")
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ">>>You have: " .. getPlayerStorageValue(cid, idHeldPointTier2) .. " Held Points Tier 2<<<")
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ">>>You have: " .. getPlayerStorageValue(cid, idHeldPointTier3) .. " Held Points Tier 3<<<")
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ">>>You have: " .. getPlayerStorageValue(cid, idHeldPointTier4) .. " Held Points Tier 4<<<")
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ">>>You have: " .. getPlayerStorageValue(cid, idHeldPointTier5) .. " Held Points Tier 5<<<")
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ">>>You have: " .. getPlayerStorageValue(cid, idHeldPointTier6) .. " Held Points Tier 6<<<")
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ">>>You have: " .. getPlayerStorageValue(cid, idHeldPointTier7) .. " Held Points Tier 7<<<") 
end
