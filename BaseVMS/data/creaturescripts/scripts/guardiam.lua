local config = {
    pokemons = {"Guardian Mewtwo", "Mew"}, -- nome dos pokemons que podem ser sumonados,
    time = {summon = 1*60, cd = 2*60}, -- tempo de duração e tempo de cd
    level = 125, -- define o level mínimo para se usar o item
    storages = {summon = 5549, cd = 5550}
}
msg = {finish = "Acabou o Tempo.", begin = "Voce Sumonou Seu Guardian Por" .. config.time.summon/60 .. " Minutos"}

function removePokemon(poke, cid)
    if isCreature(poke) then
        doRemoveCreature(poke)
        doPlayerSay(cid, msg.finish, TALKTYPE_PLAYER_SAY)
   end
end
   

function onUse(cid, item, fromPosition, itemEx, toPosition)
    setPlayerStorageValue(cid, config.storages.cd, 0)
    if (getPlayerStorageValue(cid, config.storages.cd) - os.time()) <= 0 then
        if getPlayerLevel(cid) > config.level then
            pokemon = doCreateMonster(config.pokemons[math.random(1, #config.pokemons)], getCreaturePosition(cid))
            setPlayerStorageValue(cid, config.storages.cd, os.time() + config.time.cd)
            doConvinceCreature(cid, pokemon)
                 addEvent(function()
         if isPlayer(cid) then
        doPlayerSay(cid, "Eu Escolho Voce. I Choose You.")
       end
     end, 10) 
             addEvent(function()
            if isPlayer(cid) then
            doPlayerSay(cid, "Acabou o Tempo do Guardian. Finished Time Of Guardian.")
           end
    end, 10000)
            doPlayerSay(cid, msg.begin, TALKTYPE_PLAYER_SAY)
            addEvent(removePokemon, config.time.summon*1000, pokemon, cid)
        else
            doPlayerSendCancel(cid, "Voce Nao Tem Level Para Usar o Summon.")
        end
    else
        doPlayerSendCancel(cid, "Desculpe o Item Esta em Coowndown.")
    end
return true
end 