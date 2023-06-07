function onUse (cid,item,frompos,item2,topos)
pos = {x=0, y=0, z=0}

        UID_DO_BAU = 5559
        STORAGE_VALUE = 85831
        ID_DO_PREMIO = 25053
        ID_DO_PREMIO2 = 24844

        if getPlayerLevel(cid) >= 400 then
  if item.uid == UID_DO_BAU then
          queststatus = getPlayerStorageValue(cid,STORAGE_VALUE)
          if queststatus == -1 then
        doPlayerSendTextMessage(cid,22,"Parabens vocÃª completou a Halloween!") -- Msg que ira aparecer
        doPlayerAddItem(cid,ID_DO_PREMIO,12)
		        doPlayerAddItem(cid,ID_DO_PREMIO2,1)
              doPlayerAddExperience(cid, 100000000)  --premio
        setPlayerStorageValue(cid,STORAGE_VALUE,1)
          else
        doPlayerSendTextMessage(cid,22,"Ta vazio.")
          end
  end
        else
  doPlayerSendCancel(cid,'Somente lvl 400+')
        end
return 1
end