function onLogin(cid)

local rate = 1.5 -- 50 %
local config = {
welvip = "Voc� tem "..((rate - 1)*100).."% de EXP � mais!",
not_vip = "Torne-se VIP e ganhe "..((rate -1)*100).."% � mais de EXP! nosso site: pokemonroxy.servegame.com",
vip = isPremium(cid)
}

if (config.vip == TRUE) then
doPlayerSetExperienceRate(cid, rate)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.welvip)
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.not_vip)
end
return true
end
