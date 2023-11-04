---@meta

database = {}

---[CLIENT] Is automatically called internally when a client joins, can be called by a player to force an update, but is normally not necessary
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/database.lua#L874)
---
---@param OnReceiveFunc function the function that is called when the registered databases are received
---@package
function database.GetRegisteredDatabases(OnReceiveFunc) end

---[CLIENT] Get the stored key value of the given database if it exists on the server or was already cached
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/database.lua#L905)
---
---@param accessName string the chosen networkable name of the sql table
---@param itemName string the name or primaryKey of the item inside of the sql table
---@param key string the name of the key in the database
---@param OnReceiveFunc function The function that gets called with the following parameters: boolean, whether the database table exists; any?, the value of the requested item
function database.GetValue(accessName, itemName, key, OnReceiveFunc) end

---[CLIENT] Request to reset the database on the server
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/database.lua#L989)
---
---@param accessName string the chosen networkable name of the sql table
function database.Reset(accessName) end

---[CLIENT] Request to set the value for a key of an item of an sql-table on the server
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/database.lua#L967)
---
---@param accessName string the chosen networkable name of the sql table
---@param itemName string the name or primaryKey of the item inside of the sql table
---@param key string the name of the key in the database
---@param value any the value you want to set in the database
function database.SetValue(accessName, itemName, key, value) end

---[SERVER] Get the stored table database if it exists and was registered
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/database.lua#L1271)
---
---@param accessName string the chosen networkable name of the sql table
---@return boolean #if the requested table was successfully registered in the sql datatable
function database.GetTable(accessName) end

---[SERVER] Get the stored key value of the given database if it exists and was registered
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/database.lua#L1185)
---
---@param accessName string the chosen networkable name of the sql table
---@param itemName string the name or primaryKey of the item inside of the sql table, if not given selects whole sql table
---@param key string the name of the key in the database, is ignored when no itemName is given, if not given selects whole item
---@return boolean #if the requested item and/or key was successfully registered in the sql datatable
function database.GetValue(accessName, itemName, key) end

---[SERVER] Call this when you want to setup a database that needs to be accessible by server and client If you dont call this function before anything else, it wont work. Choose any name as accessName so that others can easily use it.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/database.lua#L1105)
---
---@param databaseName string the real name of the database
---@param accessName string the name to quickly access databases and differentiate between a pseudo used accessName and the migrated actual databaseName
---@param savingKeys table the savingKeys = {keyName = {typ, bits, default, ..}, ..} defining the keyNames and their information
---@param accessLevel number the access level needed to get values of a database, defined in `TTT2_DATABASE_ACCESS_`-enums (_ANY, _ADMIN, _SERVER)
---@param additionalData table the data that doesnt belong to a database but might be needed for other purposes like enums
---@return boolean #isSuccessful if the database exists and is successfully registered
function database.Register(databaseName, accessName, savingKeys, accessLevel, additionalData) end

---[SERVER] Reset the database and send a message to the client
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/database.lua#L1416)
---
---@param accessName string the chosen networkable name of the sql table
---@param plyID64 string the player steam ID 64. Leave this empty when calling on the server. This only makes sure values are only set by superadmins
function database.Reset(accessName, plyID64) end

---[SERVER] This is called upon receiving a get request from a player to send a value back
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/database.lua#L1145)
---
---@param requestData table = {plyID64, identifier, index, itemName, key} contains player and the data they requested
---@package
function database.ReturnGetValue(requestData) end

---[SERVER] Use this to set item-specific defaults, to save storage space in the sql database also syncs this to the clients
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/database.lua#L1375)
---
---@param accessName string the chosen networkable name of the sql table
---@param itemName string the name or primaryKey of the item inside of the sql table
---@param key string the name of the key in the database
---@param value any the value you want to set in the database
function database.SetDefaultValue(accessName, itemName, key, value) end

---[SERVER] Set the value for a key of an item of an sql-table also sends it to the clients
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/database.lua#L1285)
---
---@param accessName string the chosen networkable name of the sql table
---@param itemName string the name or primaryKey of the item inside of the sql table
---@param key string the name of the key in the database
---@param value any the value you want to set in the database
---@param plyID64 string the player steam ID 64. Leave this empty when calling on the server. This only makes sure values are only set by superadmins
function database.SetValue(accessName, itemName, key, value, plyID64) end

---[SERVER] Synchronizes all registered Databases with the given players defined by the plyIdentifier
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/database.lua#L1065)
---
---@param plyIdentifier string the player identifier to determine who receives the message, defined in `SEND_TO_PLY_`-enums or can be a plyID64
---@param identifier string the identifier used to get correct onreceive functions
---@package
function database.SyncRegisteredDatabases(plyIdentifier, identifier) end

---[SHARED] Adds a callback to be called when the given sql table entries change
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/database.lua#L237)
---
---@param accessName string the chosen accessName registered for a given database. HAS NOT TO BE the real database-name! And does not have to be registered yet!
---@param itemName string The name of the item in the database. Leave `nil` if you want a callback for every item
---@param key string The name of the key in the database. Leave `nil` if you want a callback for every key
---@param The function callback function(accessName, itemName, key, oldValue, newValue), it's only called if the value actually changed
---@param identifier string An identifier by which you can remove the callback more granular
function database.AddChangeCallback(accessName, itemName, key, The, identifier) end

---[SHARED] Gets either an item-specific or key-specific default value
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/database.lua#L122)
---
---@param accessName string the chosen accessName registered for a given database. HAS NOT TO BE the real database-name!
---@param itemName string the name of the item in the database
---@param key string the name of the key in the database
---@return any #the defaultValue
function database.GetDefaultValue(accessName, itemName, key) end

---[SHARED] Removes a callback if an identifier was registered
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/database.lua#L283)
---
---@param accessName string the chosen accessName registered for a given database. HAS NOT TO BE the real database-name!
---@param itemName string The name of the item in the database. Leave `nil` if you want to remove callbacks for every item with the given identifier
---@param key string The name of the key in the database. Leave `nil` if you want to remove callbacks for every key with the given identifier
---@param identifier string The identifier by which the callbacks to remove are filtered
function database.RemoveChangeCallback(accessName, itemName, key, identifier) end
