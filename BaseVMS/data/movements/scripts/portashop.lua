local porta = {22737, 22738, 22739, 22741} -- porta fechada, porta pouco aberta, porta meio aberta, porta aberta
local pos = {x = 1029, y = 1075, z = 7} -- local onde vai fica a porta
local delay = 150 -- ela vai demorar 0.1 segundos para fica totalmente aberta ou totalmente fechada
local action = 54548 -- action que ta no .xml, se muda la vai ter que muda aqui também
 
function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
    if getTileItemById(pos, porta[1]).uid > 0 then
        for i = 1, (#porta - 1) do
            addEvent(function()
				if getTileItemById(pos, porta[i]).uid ~= 0 then
					doTransformItem(getTileItemById(pos, porta[i]).uid, porta[i + 1])
				end
            end, i * delay)
        end
    end
    return true
end 
 
function onStepOut(cid, item, position, lastPosition, fromPosition, toPosition, actor)
    local tab = {}
    for _, pid in ipairs(getPlayersOnline()) do
        if getTileInfo(getCreaturePosition(pid)).actionid == action then
            table.insert(tab, pid)
        end
		if getCreatureSummons(pid) ~= nil then
			for _, sid in pairs (getCreatureSummons(pid)) do
				if getTileInfo(getCreaturePosition(sid)).actionid == action then
					table.insert(tab, sid)
				end
			end
		end
    end
    if #tab == 0 then
        if getTileItemById(pos, porta[#porta]).uid > 0 then
            for i = 1, (#porta - 1) do
                addEvent(function()
					if getTileItemById(pos, porta[(#porta - i) + 1]).uid ~= 0 then
						doTransformItem(getTileItemById(pos, porta[(#porta - i) + 1]).uid, porta[(#porta - i)])
					end
                end, i * delay)
            end
        end
    end
    return true
end