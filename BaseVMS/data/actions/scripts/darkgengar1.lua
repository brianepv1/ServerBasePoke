function onUse (cid,item,frompos,item2,topos)
pos = {x=0, y=0, z=0}

        UID_DO_BAU = 12000
        STORAGE_VALUE = 12000
        ID_DO_PREMIO = 15485

        if getPlayerLevel(cid) >= 200 then
  if item.uid == UID_DO_BAU then
          queststatus = getPlayerStorageValue(cid,STORAGE_VALUE)
          if queststatus == -1 then
		doSendMagicEffect(pos, CONST_ME_TELEPORT)
        doPlayerSendTextMessage(cid,22,"Parabens você pegou o seu gastly.") -- Msg que ira aparecer
        doPlayerAddItem(cid,ID_DO_PREMIO,1)
              doPlayerAddExperience(cid, 100000)  --premio
        setPlayerStorageValue(cid,STORAGE_VALUE,1)
          else
        doPlayerSendTextMessage(cid,22,"Ta vazio.")
          end
  end
        else
  doPlayerSendCancel(cid,'Somente lvl 200+')
        end
return 1
end