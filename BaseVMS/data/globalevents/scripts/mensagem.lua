MESSAGES = {
    "Download the lasted Client on our page: http://poketoxic.servegame.com/",
    "Became a Vip Player an receive hugh benefits in our game, if you wanna see our benefits use !vantagensvip or !vantagens.",
    "We have android APK for mobile game! Download it in our page: http://poketoxic.servegame.com/download",
    "To know all our commands use !comandos.",
    "Support 24/7 in our whatsapp group: https://chat.whatsapp.com/JKHmPQeBIyp1NyjUFmsut2",
    "Tip: To do Mega Box Quest - You have to get 100 leaf piece, 100 water pieces and 100 fire pieces. You can get it in Outland and Terrallende.",
    "Use !opshop to see your Online Points.",
    "Use !heldpoints to see your Held Points.",
    "Join to our whatsapp group: https://chat.whatsapp.com/JKHmPQeBIyp1NyjUFmsut2"    
}

function onThink(interval, lastExecution)
    doBroadcastMessage(MESSAGES[math.random(1, #MESSAGES)], 22)
    return TRUE
end
