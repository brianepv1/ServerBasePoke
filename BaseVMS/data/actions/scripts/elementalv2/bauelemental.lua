local config = {
	
	dd = 16583, -- id do diamond , quantidade
	
	ddd = 3, --quantidade
	
	item = 6569, -- id do premio , quantidade
	
	quantidade = 10,
	
	}
	
    function onUse(cid, item, frompos, item2, topos)
	
	if doPlayerRemoveItem(cid, config.dd,config. ddd) then

	doPlayerAddItem(cid, config.item,config.quantidade)

	doPlayerSendTextMessage(cid, 27,"Parabens voce adquirio seu Rary Candy !")

	else

	doPlayerSendCancel(cid, "voce precisa dessa quantidade de items "..config.ddd..". ")   

	end

	return TRUE

	end