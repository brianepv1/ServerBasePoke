local monsters = {"Pidgeot", "Psyduck", "Vileplume", "Fearow", "Hydreigon", "Gloom", "Golurk", "Tangela", "Marowak",
                  "SandSlash", "Charizard", "Blastoise", "Venusaur", "Tropius", "Gengar", "Simisage", "Slaking",
                  "Simisear", "Gyarados", "Togekiss", "Magmortar", "Hitmontop", "Aggron", "Porygon2", "Metagross",
                  "Alakazam", "Onix", "Gallade", "Tyranitar", "Dragonite"} -- Monstros que podem ser sorteados
local time_min, max = 10, 20 -- Em minutos
local premios, gold = {{24149, 1}, {24187, 1}}, 10000 -- {id do item, quantidade} que o jogador ganha e quantia de gold

function winMonsterEvent()
    local max_sto, winner = 0, 0
    local monster = getGlobalStorageValue(90904488)
    for _, pid in pairs(getPlayersOnline()) do
        local sto = getPlayerStorageValue(pid, 90904487)
        if sto > max_sto then
            max_sto = sto
            winner = pid
        end
    end
    if isPlayer(winner) then
        local artigo = getPlayerSex(winner) == 0 and "[Pokemon Hunter]: A player" or
                           "[Pokemon Hunter]: A player"
        doBroadcastMessage(artigo .. " " .. getCreatureName(winner) .. " defeated " ..
                               getPlayerStorageValue(winner, 90904487) .. " " .. monster ..
                               "s and win the Pokemon Hunter Event. Congratulations!", 25)
        for _, prize in pairs(premios) do
            doPlayerAddItem(winner, prize[1], prize[2])
        end
        doPlayerAddMoney(winner, gold)
    else
        doBroadcastMessage("[Pokemon Hunter]: Pokemon Hunter Event ended without a winner. Stay tuned for the next Pokemon Hunter Event")
    end
    setGlobalStorageValue(90904488, 0)
end

function onTimer()
    local random = math.random(1, #monsters)
    local time = math.random(time_min, max)
    for _, pid in pairs(getPlayersOnline()) do
        doPlayerSetStorageValue(pid, 90904487, 0)
    end
    setGlobalStorageValue(90904488, monsters[random])
    doBroadcastMessage("[Pokemon Hunter]: Pokemon Hunter Event has started! You have " .. time ..
                           " minutes. You need to hunt " .. monsters[random] ..
                           "! You need to defeat more " .. monsters[random] .. "'s than other players to win!",
        25)
    addEvent(winMonsterEvent, time * 1000 * 60)
    return true
end
