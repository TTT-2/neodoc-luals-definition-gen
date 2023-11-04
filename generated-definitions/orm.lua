---@meta

orm = {}

---[SHARED] Returns an object relational model according to the specified databasetable. Does nothing if no databasetable with the given name exists.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/orm.lua#L25)
---
---@param tableName string The name of the table in the database to create a model for.
---@param force boolean If set to `true` the function will not return a cached version of the model.
---@return ORMMODEL|nil #Returns the model of the database table or nil if the database table does not exist.
function orm.Make(tableName, force) end
