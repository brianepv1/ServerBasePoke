
CONFIG = {
    [1] = {message = "En caso de dudas use el Canal Help para pedir ayuda a los staff o a otros jugadores."},
	[2] = {message = "Bienvenido ( PokeToxic )", color = 19},
	[3]	= {message = "Join to our whatsapp group: https://chat.whatsapp.com/JKHmPQeBIyp1NyjUFmsut2"},
    [4] = {message = "Garantiza ya tu VIP, ganaras el doble de experiencia y la captura sera mas facil, y muchas otras ventajas!."},
	[5] = {message = "Pagina: http://poketoxic.servegame.com/"},
	[6] = {message = "PokeToxic!"},
	[7] = {message = "New shiny stone quest. This new quest is located in Island Walrain on left (<) in city Canavale."},
	[8] = {message = "To know all our commands use !comandos.",}
	}

function onThink()
    getRandom = math.random(1, #CONFIG)
    return doBroadcastMessage(CONFIG[getRandom].message, CONFIG[getRandom].color)
end
