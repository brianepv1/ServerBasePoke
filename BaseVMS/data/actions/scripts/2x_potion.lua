function onUse(cid, item, frompos, item2, topos)

    local time = 1800 -- Tempo que durar em segundos ' 30 minutes'
    local texto = 'Boost experience at 20% for 30 minutes.' -- Texto que  receber ao usar a potion.
    textofinal = 'Boost experience done.' -- Texto que ira receber quando o efeito da potion acabar.
    local exp = 50 -- O quanto que voce quer que dobre sua experiencia, por exemplo 2 is 2% as rates do seu server.
    expfinal = 1 -- No mude, isso  para a experiencia voltar ao normal.
    local stor = 12132

    if item.itemid == 7439 then
        doRemoveItem(item.uid, 1)
        doPlayerSetExperienceRate(cid, exp)
        doSendMagicEffect(frompos, 13)
        doPlayerSendTextMessage(cid, 22, texto)
        addEvent(potion, time * 1000, cid)
        setPlayerStorageValue(cid, stor, os.time() + time)
    end
end

function potion(pos, cid)
    doPlayerSetExperienceRate(pos, expfinal)
    doPlayerSendTextMessage(pos, 22, textofinal)
end
