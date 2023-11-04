---@meta

ttt2net = {}

---[CLIENT] This will call all registered listeners for a specific path. The function will exit if oldval and newval are the same. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_network_sync.lua#L217)
---
---@param path any The path that this update was executed on
---@param oldval any The old value, before the update
---@param newval any The new value, after the update
function ttt2net.CallOnUpdate(path, oldval, newval) end

---[CLIENT] Prints out all ttt2net related tables, for debugging purposes.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_network_sync.lua#L94)
---
function ttt2net.Debug() end

---[CLIENT] Get the current value of a specific path. This path starts at the root of the data_storage table and thus does not include the "global"/"players" key to descend into these subtrees. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_network_sync.lua#L25)
---
---@param path any The path to get the value from (this is the absolute path from the root so "global"/"players" etc is not yet included)
---@return any #The value at the given path or nil if the path does not exist, the value is actually nil or there is no metadata entry for the path
function ttt2net.Get(path) end

---[CLIENT] The same as @{ttt2net.Get} but this will take care of prepending the key to access the global values. Global values are generally accessible synced values, that the server sends to its clients. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_network_sync.lua#L49)
---
---@param path any The path to get the value from (no need to prepend a "global" as this will be done already)
---@return any #The value at the given path or nil if the path does not exist, the value is actually nil or there is no metadata entry for the path
function ttt2net.GetGlobal(path) end

---[CLIENT] The same as @{ttt2net.Get} but this will take care of prepending the key to access the player specific values. Player specific values are synced values on player entities (can be thought of as data per player that this client knows of), that the server sends to its clients. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_network_sync.lua#L74)
---
---@param path any The path to get the value from (no need to prepend a "players" etc. as this will be done already)
---@param The Entity player from which we want to get the data
---@return any #The value at the given path or nil if the path does not exist, the value is actually nil or there is no metadata entry for the path
function ttt2net.GetOnPlayer(path, The) end

---[CLIENT] This will read the data from the current network message efficiently based on the metadata parameter. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_network_sync.lua#L303)
---
---@param metadata table The meta data table for the data that is expected
---@return any #The data that was read
function ttt2net.NetReadData(metadata) end

---[CLIENT] Reads a meta data table from the current network message. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_network_sync.lua#L280)
---
---@return table #The metadata table
function ttt2net.NetReadMetaData() end

---[CLIENT] Reads a path table from the current network message. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_network_sync.lua#L269)
---
---@return table #The path table
function ttt2net.NetReadPath() end

---[CLIENT] Registers a callback for a specific path. The callback is called, when the value on that path was updated. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_network_sync.lua#L331)
---
function ttt2net.OnUpdate(path, func) end

---[CLIENT] This will register a callback for updates to a global data entry. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_network_sync.lua#L365)
---
---@param path any The path to register the callback on
---@param func function The callback function that should be executed
function ttt2net.OnUpdateGlobal(path, func) end

---[CLIENT] This will register a callback for updates to a player specific data entry. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_network_sync.lua#L388)
---
---@param path any The path to register the callback on
---@param ply Entity The player that this data entry is from
---@param func function The callback function that should be executed
function ttt2net.OnUpdateOnPlayer(path, ply, func) end

---[CLIENT] Request a full state update from the server.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_network_sync.lua#L259)
---
function ttt2net.RequestFullStateUpdate() end

---[SERVER] This will return the data table as the given client would receive it. This will build up a data tree as it would be found on the client, with the overrides for the specific client. This will work recursively!
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L657)
---
---@param client Entity The client/entity to get the data for
---@param curTable table This is the current metadata table. This should start with the complete metadata table, otherwise the path has to be adjusted, see the description.
---@param path table The current path to the curTable based on the root of the data table
function ttt2net.DataTableWithOverrides(client, curTable, path) end

---[SERVER] Prints out all ttt2net related tables, for debugging purposes.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L518)
---
function ttt2net.Debug() end

---[SERVER] Returns the currently saved value for a given path. When no client parameter is given, this will return the default value, otherwise it will return the override value or nil, when no override is found. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L359)
---
---@param path any The path to get the value from
---@param client Entity The client/entity to get the value for
---@return any|nil #The value found at the given path
function ttt2net.Get(path, client) end

---[SERVER] Returns the currently saved value for a given path. This will do the same as {@ttt2net.Get} but will first prepend the "global" keyword to the path. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L421)
---
---@param path any The path to get the value from
---@param client Entity The client/entity to get the value for
---@return any|nil #The value for the given path
function ttt2net.GetGlobal(path, client) end

---[SERVER] Returns the currently saved value for a given path on a specific player. This will do the same as {@ttt2net.Get} but will first prepend the needed keywords to the path. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L498)
---
---@param path any The path to get the value from
---@param ply Entity The client/entity to save the value on
---@param client Entity The client/entity to get the value for
---@return any|nil #The value for the given path
function ttt2net.GetOnPlayer(path, ply, client) end

---[SERVER] Returns the currently saved value for a given path. When no client parameter is given, this will return the default value, otherwise it will first look for an override value and only return the default value, when no override is found. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L385)
---
---@param path any The path to get the value from
---@param client Entity The client/entity to get the value for
---@return any|nil #The value that a client knows
function ttt2net.GetWithOverride(path, client) end

---[SERVER] This is used to write a value to the current network message, based on the given metadata.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L762)
---
---@param metadata table The metadata for the given value
---@param val any The value to send, can also be nil
function ttt2net.NetWriteData(metadata, val) end

---[SERVER] This is used to write a metadata table to the current network message. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L738)
---
---@param metadata table The metadata to send
function ttt2net.NetWriteMetaData(metadata) end

---[SERVER] This is used to write a path table to the current network message. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L729)
---
---@param path table The path table to send
function ttt2net.NetWritePath(path) end

---[SERVER] Checks if two meta data tables are equal. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L82)
---
---@param meta1 table first meta table
---@param meta2 table second meta table
---@return boolean #Returns true if they are equal false if not
function ttt2net.NetworkMetaDataTableEqual(meta1, meta2) end

---[SERVER] This will be used to clear out all client specific overrides for a path, so that only the default value is set. This will also automatically sync the new value to the clients that previously had an override value. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L252)
---
---@param path table The path to clear out all overrides on.
function ttt2net.RemoveOverrides(path) end

---[SERVER] This is used to clear out all overrides that a specific client has, based on the given metadata tree. It will traverse the whole data tree and remove all override entries for the client. This will work recursively! The curTable param is mapped directly to the data storage layout, so when you only want to clear overrides on a subtree, you have to provide a path to that starting point, to allow the function to work correctly. Otherwise leave the path empty, when the whole metadata table is given. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L569)
---
---@param client Entity The client/entity to clear all overrides for
---@param curTable table This is the current metadata table. This should start with the complete metadata table, otherwise the path has to be adjusted, see the description.
---@param path table The current path to the curTable based on the root of the data table
function ttt2net.RemoveOverridesForClient(client, curTable, path) end

---[SERVER] This will be used to clear out all client specific overrides for a path, so that only the default value is set. This will also prepend the "global" keyword to the path, otherwise it will do the same as {@ttt2net.RemoveOverrides}. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L309)
---
---@param path table The path to clear out all overrides on.
function ttt2net.RemoveOverridesGlobal(path) end

---[SERVER] This will be used to clear out all client specific overrides for a path on a player/entity object, so that only the default value is set. This will also prepend the needed keywords to the path, otherwise it will do the same as {@ttt2net.RemoveOverrides}. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L333)
---
---@param path table The path to clear out all overrides on.
---@param ply Player, Entity The player/entity object that will be cleared
function ttt2net.RemoveOverridesOnPlayer(path, ply) end

---[SERVER] This will reset all known data for a client and remove all entries related to this client. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L594)
---
---@param client Entity The client to remove
function ttt2net.ResetClient(client) end

---[SERVER] This will send a data update to either the specified client/list of clients or all known initialized clients. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L612)
---
---@param path any The path to send the update for
---@param client Player, table The client/list of clients or nil to send this to all known clients
function ttt2net.SendDataUpdate(path, client) end

---[SERVER] Send a full state update to the client/list of clients or all known clients if not specified. This will send the metadata table and the specific data table (with respect to the overrides) to the clients.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L688)
---
---@param client Player, table The client/list of clients or nil for all known clients, to send the update to
function ttt2net.SendFullStateUpdate(client) end

---[SERVER] This will send a metadata update for the specified path to all initialized clients. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L536)
---
---@param path any The path to send a metadata update for
function ttt2net.SendMetaDataUpdate(path) end

---[SERVER] This is used to set a value in the data table for a specific path, it can take an additional meta data object, which represents the type of the data to be set. This will automatically create the metadata entry if it does not exist and is provided as a parameter. This can only be left empty, when the path already has a valid metadata entry. This will automatically synchronize the new data to the clients. When the additional client parameter is set, the data will be saved as an override for that specific client/entity. This will also take care of syncing the value to all registered NWVars, if the path leads to a player specific key. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L195)
---
---@param path any The path to set the data for
---@param meta table, nil The metadata for the path (or empty to use an existing metadata entry)
---@param value any The value to save
---@param client Entity The client/entity to set this value for (overrides the default value)
function ttt2net.Set(path, meta, value, client) end

---[SERVER] This is used to set a value in the data table for a specific path and works the same as {@ttt2net.Set}, but it will prepend the "global" keyword to the path. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L446)
---
---@param path any The path to set the data for
---@param meta table, nil The metadata for the path
---@param value any The value to save
---@param client Entity The client/entity to set this value for (overrides the default value)
function ttt2net.SetGlobal(path, meta, value, client) end

---[SERVER] This will set the meta data for a path. The meta data is used to describe the type of the table entry (the data).  A valid metadata table should provide at least the type field, which is a string with one of the following values: ["string", "int", "bool", "float", "table"]. For the "int" type there is also the "unsigned" field, which can be set to true. There is also the "bits" field, which can be used to synchronize data more efficiently as this will only impact the transport/synchronization of the data and describe how many bits are needed to sync this number. This can also be used to remove an entry, by passing nil as the metadata. This will also automatically synchronize the new metadata information to the clients (only if it differs from before).
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L105)
---
---@param path any The path that this meta data is associated with
---@param metadata table The metadata table
function ttt2net.SetMetaData(path, metadata) end

---[SERVER] This will set the metadata for a specific path and prepend the path with the "global" keyword. For more information look at {@ttt2net.SetMetaData}. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L138)
---
---@param path any The path this meta data is associated with (already includes the "global" keyword)
---@param metadata table The metadata table
function ttt2net.SetMetaDataGlobal(path, metadata) end

---[SERVER] This will set the metadata for a specific path on a player and prepend needed keywords. For more information look at {@ttt2net.SetMetaData}. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L162)
---
---@param path any, table The path this meta data is associated with (already includes the needed keywords)
---@param metadata table, nil The metadata table
---@param ply Player, Entity The player/entity to set the value on
function ttt2net.SetMetaDataOnPlayer(path, metadata, ply) end

---[SERVER] This is used to set a value in the data table for a specific path on a specific player/entity and works the same as {@ttt2net.Set}, but it will prepend the needed keywords to the path. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L472)
---
---@param path any The path to set the data for
---@param meta table, nil The metadata for the path
---@param value any The value to save
---@param ply Entity The player/entity that this data is associated to
---@param client Entity The client/entity to set this value for (as an override for the default value)
function ttt2net.SetOnPlayer(path, meta, value, ply, client) end

---[SERVER] Set a NWVar to be synced with a specific path in the "players" storage (as the NWVars are also saved on entities). When the NWVar is changed, the value is also updated in the synced data table. And when the data table is updated, the value is also set for the NWVar.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L807)
---
---@param path any The path to sync the nwvar with
---@param meta table, nil The metadata
---@param nwent Entity The entity that this NWVar is saved on
---@param nwkey string The key of the NWVar
function ttt2net.SyncWithNWVar(path, meta, nwent, nwkey) end
