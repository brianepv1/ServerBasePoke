function onUse (cid,item,frompos,item2,topos)

        UID_DO_BAU = 3504
        STORAGE_VALUE = 3504
        ID_DO_PREMIO = 11447
        ID_DO_PREMIO2 = 2089
		ID_DO_PREMIO3 = 11641

        if getPlayerLevel(cid) >= 100 then
  if item.uid == UID_DO_BAU then
          queststatus = getPlayerStorageValue(cid,STORAGE_VALUE)
          if queststatus == -1 then
        doPlayerSendTextMessage(cid,22,"Parabens.") -- Msg que ira aparecer
        doPlayerAddItem(cid,ID_DO_PREMIO,3)
        doPlayerAddItem(cid,ID_DO_PREMIO2,1)
		doPlayerAddItem(cid,ID_DO_PREMIO3,1)
              doPlayerAddExperience(cid, 100000)  --premio
        setPlayerStorageValue(cid,STORAGE_VALUE,1)
          else
        doPlayerSendTextMessage(cid,22,"Ta vazio.")
          end
  end
        else
  doPlayerSendCancel(cid,'Somente lvl 100+')
        end
return 1
end