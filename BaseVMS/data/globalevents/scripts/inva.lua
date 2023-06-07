local i = {
["16:20"] = {nome = "Shiny Invasion", pos = {x=1106, y=946, z=10}, monster = {"4 Shiny Flygon", "4 Shiny Magmortar"}},
["16:25"] = {nome = "Shiny Invasion", pos = {x=1116, y=946, z=10}, monster = {"4 Shiny Electivire", "4 Shiny Aggron"}},
["16:30"] = {nome = "Shiny Invasion", pos = {x=1132, y=946, z=10}, monster = {"4 Shiny Salamence", "4 Shiny hydreigon"}},
["16:35"] = {nome = "Shiny Invasion", pos = {x=1122, y=946, z=10}, monster = {"4 Shiny Blissey", "4 Shiny Mylotic"}},
["13:06"] = {nome = "Boss Invasion", pos = {x=1654, y=1096, z=7}, monster = {"1 Boss Lugia"}},
}

function onThink(interval, lastExecution)
hours = tostring(os.date("%X")):sub(1, 5)
tb = i[hours]
if tb then
	doBroadcastMessage(hours .. " - " .. tb.nome .. " In�ciou.")
	for _,x in pairs(tb.monster) do
		for s = 1, tonumber(x:match("%d+")) do
			doSummonCreature(x:match("%s(.+)"), tb.pos)
		end
	end
end
return true
end