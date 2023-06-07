function onUse (cid,item,frompos,item2,topos)

        UID_DO_BAU = 3610
        STORAGE_VALUE = 3610
        ID_DO_PREMIO = 20904

        if getPlayerLevel(cid) >= 200 then
  if item.uid == UID_DO_BAU then
          queststatus = getPlayerStorageValue(cid,STORAGE_VALUE)
          if queststatus == -1 then
        doPlayerSendTextMessage(cid,22,"Parabens voce completou a Shiny Stone Quest2.") -- Msg que ira aparecer
         	doPlayerAddItem(cid,ID_DO_PREMIO,2)
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