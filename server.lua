ESX = nil


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)




ESX.RegisterServerCallback('esx_documents:submitDocument', function(source, cb, data)

    local xPlayer = ESX.GetPlayerFromId(source)
    local db_form = nil;
    local _data = data;
        local playerId = getPlayerID(source)
        --local owners = {}
        --table.insert(owners, playerId)

        --print(data)
        --local status_data = { item = "lamp", x = lamp_position.x, y = lamp_position.y, z = lamp_position.z, heading = lamp_heading }

        MySQL.Async.insert("INSERT INTO user_documents (owner, data) VALUES (@owner, @data)", {['@owner'] = playerId, ['@data'] = json.encode(data)}, function(id)

            if id ~= nil then
                MySQL.Async.fetchAll('SELECT * FROM user_documents where id = @id', {['@id']=id}, function (result)
                    --print("Trying to dump: " .. dump(result))
                    if(result[1] ~= nil) then
                        db_form = result[1]
                        db_form.data = json.decode(result[1].data)
                        cb(db_form)
                    end
                end)
            else
                cb(db_form)
            end
        end)
end)

ESX.RegisterServerCallback('esx_documents:deleteDocument', function(source, cb, id)

    local db_document = nil;
    local playerId = getPlayerID(source)

    MySQL.Async.execute('DELETE FROM user_documents WHERE id = @id AND owner = @owner',
    {
        ['@id']  = id,
        ['@owner'] = playerId
    }, function(rowsChanged)

        if rowsChanged >= 1 then
            TriggerClientEvent('esx:showNotification', source, _U('document_deleted'))
            cb(true)
        else
            TriggerClientEvent('esx:showNotification', source, _U('document_delete_failed'))
            cb(false)
        end
        end)
end)




ESX.RegisterServerCallback('esx_documents:getPlayerDocuments', function(source, cb)

    local playerId = getPlayerID(source)
    local forms = {}

    MySQL.Async.fetchAll("SELECT * FROM user_documents WHERE owner = @owner", {['@owner'] = playerId}, function(result)

        if #result > 0 then

            for i=1, #result, 1 do

                local tmp_result = result[i]
                tmp_result.data = json.decode(result[i].data)

                table.insert(forms, tmp_result)
                --print(dump(tmp_result))
            end
            cb(forms)
        end

    end)

end)


ESX.RegisterServerCallback('esx_documents:getPlayerDetails', function(source, cb)

    local playerId = getPlayerID(source)
    local cb_data = nil

    MySQL.Async.fetchAll("SELECT firstname, lastname, dateofbirth FROM users WHERE identifier = @owner", {['@owner'] = playerId}, function(result)

        if result[1] ~= nil then
            cb_data = result[1]
            cb(cb_data)
        else
            cb(cb_data)
        end

    end)

end)


RegisterServerEvent('esx_documents:ShowToPlayer')
AddEventHandler('esx_documents:ShowToPlayer', function(targetID, aForm)

    TriggerClientEvent('esx_documents:viewDocument', targetID, aForm)

end)

RegisterServerEvent('esx_documents:CopyToPlayer')
AddEventHandler('esx_documents:CopyToPlayer', function(targetID, aForm)

    local _source   = source

    local _targetid = ESX.GetPlayerFromId(targetID).source
    local _aForm    = aForm
    local playerId  = getPlayerID(_targetid)

    MySQL.Async.insert("INSERT INTO user_documents (owner, data) VALUES (@owner, @data)", {['@owner'] = playerId, ['@data'] = json.encode(aForm)}, function(id)
            if id ~= nil then
                MySQL.Async.fetchAll('SELECT * FROM user_documents where id = @id', {['@id']=id}, function (result)
                    --print("Trying to dump: " .. dump(result))
                    if(result[1] ~= nil) then
                        db_form = result[1]
                        db_form.data = json.decode(result[1].data)
                        TriggerClientEvent('esx_documents:copyForm', _targetid, db_form)
                        TriggerClientEvent('esx:showNotification', _targetid, _U('copy_from_player'))
                        TriggerClientEvent('esx:showNotification', _source, _U('from_copied_player'))
                    else
                        TriggerClientEvent('esx:showNotification', _source, _U('could_not_copy_form_player'))
                    end
                end)
            else
                TriggerClientEvent('esx:showNotification', _source, _U('could_not_copy_form_player'))
            end
    end)

end)


function getPlayerID(source)
    local identifiers = GetPlayerIdentifiers(source)
    local player = getIdentifiant(identifiers)
    return player
end
function getIdentifiant(id)
    for _, v in ipairs(id) do
        return v
    end
end


function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end
