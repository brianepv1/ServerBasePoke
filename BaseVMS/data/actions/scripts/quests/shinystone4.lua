function onUse (cid,item,frompos,item2,topos)

        UID_DO_BAU = 3612
        STORAGE_VALUE = 3612
        ID_DO_PREMIO = 20904
        ID_DO_PREMIO1 = 6569

        if getPlayerLevel(cid) >= 200 then
  if item.uid == UID_DO_BAU then
          queststatus = getPlayerStorageValue(cid,STORAGE_VALUE)
          if queststatus == -1 then
        doPlayerSendTextMessage(cid,22,"Parabens voce completou a Shiny Stone quest4.") -- Msg que ira aparecer
         	doPlayerAddItem(cid,ID_DO_PREMIO,2)
           doPlayerAddItem(cid,ID_DO_PREMIO1,10)
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