local config = {
	
	dd = 18918, -- id do diamond , quantidade
	
	ddd = 100, --quantidade
	
	item = 22045, -- id do premio , quantidade
	
	quantidade = 1,
	
	}
	
    function onUse(cid, item, frompos, item2, topos)
	
	if doPlayerRemoveItem(cid, config.dd,config. ddd) then

	doPlayerAddItem(cid, config.item,config.quantidade)

	doPlayerSendTextMessage(cid, 27,"Parabens voce adquirio seu Vip Anual donate!")

	else

	doPlayerSendCancel(cid, "voce precisa dessa quantidade de pontos "..config.ddd..". ")   

	end

	return TRUE

	end