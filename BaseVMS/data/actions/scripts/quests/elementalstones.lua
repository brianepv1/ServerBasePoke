function onUse(cid, item)

    local t = {{
        uid = 53432,
        storage = 15344,
        recompensa = 22071,
        mensagem = "Contragulation! You reward is a Super Fire Stone."
    }, {
        uid = 53433,
        storage = 15344,
        recompensa = 22068,
        mensagem = "Contragulation! You reward is a Super Ice Stone."
    }, {
        uid = 53434,
        storage = 15344,
        recompensa = 22067,
        mensagem = "Contragulation! You reward is a Super Darkness Stone."
    }, {
        uid = 53438,
        storage = 15344,
        recompensa = 22072,
        mensagem = "Contragulation! You reward is a Super Water Stone."
    }}

    if item.uid == t[1].uid and getPlayerStorageValue(cid, t[1].storage) == -1 then
        doPlayerAddItem(cid, t[1].recompensa, 1)
        doPlayerSendTextMessage(cid, 22, t[1].mensagem)
        setPlayerStorageValue(cid, t[1].storage, 1)

    elseif item.uid == t[2].uid and getPlayerStorageValue(cid, t[2].storage) == -1 then
        doPlayerAddItem(cid, t[2].recompensa, 1)
        doPlayerSendTextMessage(cid, 22, t[2].mensagem)
        setPlayerStorageValue(cid, t[2].storage, 1)

    elseif item.uid == t[3].uid and getPlayerStorageValue(cid, t[3].storage) == -1 then
        doPlayerAddItem(cid, t[3].recompensa, 1)
        doPlayerSendTextMessage(cid, 22, t[3].mensagem)
        setPlayerStorageValue(cid, t[3].storage, 1)

    elseif item.uid == t[4].uid and getPlayerStorageValue(cid, t[4].storage) == -1 then
        doPlayerAddItem(cid, t[4].recompensa, 1)
        doPlayerSendTextMessage(cid, 22, t[4].mensagem)
        setPlayerStorageValue(cid, t[4].storage, 1)

    end
    return doPlayerSendCancel(cid, "Voc� ja fez esta quest.")
end
