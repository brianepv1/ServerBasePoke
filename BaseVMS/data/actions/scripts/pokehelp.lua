local config = {
    pokemons = {"Guadian Mewtwo"}, -- nome dos pokemons que podem ser sumonados,
    time = {summon = 30*60, cd = 6*60*60}, -- tempo de duração e tempo de cd
    level = 125, -- define o level mínimo para se usar o item
    storages = {summon = 5549, cd = 5550}
}
msg = {finish = "Your summon time is over.", begin = "You have now a summon for " .. config.time.summon/60 .. " minutes"}

function removePokemon(poke, cid)
    if isCreature(poke) then
        doRemoveCreature(poke)
        doCreatureSay(cid, msg.finish, TALKTYPE_MONSTER_SAY)
    end
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
    setPlayerStorageValue(cid, config.storages.cd, 0)
    if (getPlayerStorageValue(cid, config.storages.cd) - os.time()) <= 0 then
        if getPlayerLevel(cid) > config.level then
            pokemon = doCreateMonster(config.pokemons[math.random(1, #config.pokemons)], getCreaturePosition(cid))
            setPlayerStorageValue(cid, config.storages.cd, os.time() + config.time.cd)
            doConvinceCreature(cid, pokemon)
            doCreatureSay(cid, msg.begin, TALKTYPE_MONSTER_SAY)
            addEvent(removePokemon, config.time.summon*1000, pokemon, cid)
        else
            doPlayerSendCancel(cid, "You don't have enough level.")
        end
    else
        doPlayerSendCancel(cid, "Sorry, this item is on cooldown.")
    end
return true
end 