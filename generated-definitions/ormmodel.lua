---@meta

---@class ORMMODEL
ORMMODEL = {}

---[SHARED] Retrieves all saved objects of the model from the database.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/orm.lua#L82)
---
---@return table|nil #Returns an array of all found @{ORMOBJECT}s or nil in case of an error.
function ORMMODEL:All() end

---[SHARED] Retrieves a specific object by their primarykey from the database.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/orm.lua#L109)
---
---@param primaryValue string, table The value(s) of the primarykey to search for.
---@return table|nil #Returns the table of the found @{ORMOBJECT}s or nil in case of an error.
function ORMMODEL:Find(primaryValue) end

---[SHARED] Creates a new object of the model.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/orm.lua#L140)
---
---@param data table Preexisting data the object should be initialized with.
---@return ORMOBJECT #The created object.
function ORMMODEL:New(data) end

---[SHARED] Retrieves all saved objects of the model with the given filters from the database.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/orm.lua#L169)
---
---@param filters table An array of filters. Each filter should contain a `column`, `op`, `value` and `concat`(if it is not the last filter).
---@return table|nil #Returns an array of all found @{ORMOBJECT}s or nil in case of an error.
function ORMMODEL:Where(filters) end
