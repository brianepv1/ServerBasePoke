function onUse (cid,item,frompos,item2,topos)

        UID_DO_BAU = 12034
        STORAGE_VALUE = 53449
        ID_DO_PREMIO = 2160
		ID_DO_PREMIO2 = 2392
		ID_DO_PREMIO3 = 11447
		ID_DO_PREMIO4 = 11442
		ID_DO_PREMIO5 = 11441
        if getPlayerLevel(cid) >= 1 then
  if item.uid == UID_DO_BAU then
          queststatus = getPlayerStorageValue(cid,STORAGE_VALUE)
          if queststatus == -1 then
        doPlayerSendTextMessage(cid,22,"Voce pegou seus itens iniciais. Boa sorte em sua jornada!") -- Msg que ira aparecer
        doPlayerAddItem(cid,ID_DO_PREMIO,30)
        doPlayerAddItem(cid,ID_DO_PREMIO2,100)
        doPlayerAddItem(cid,ID_DO_PREMIO3,1)
        doPlayerAddItem(cid,ID_DO_PREMIO4,1)
		doPlayerAddItem(cid,ID_DO_PREMIO5,1)
                                doPlayerAddItem(cid,ID_DO_PREMIO6,1)
        setPlayerStorageValue(cid,STORAGE_VALUE,1)
          else
        doPlayerSendTextMessage(cid,22,"Ta vazio.")
          end
  end
        else
  doPlayerSendCancel(cid,'Somente lvl 300+')
        end
return 1
end