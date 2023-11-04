---@meta

---@class ORMOBJECT
ORMOBJECT = {}

---[SHARED] Deletes the given object from the database storage.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/orm.lua#L210)
---
---@return boolean #Returns true if the object was successfully deleted, false otherwise.
function ORMOBJECT:Delete() end

---[SHARED] Refreshes the object by setting all values to those saved in the database.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/orm.lua#L249)
---
---@return boolean #Returns true if refresh was successful, false otherwise.
function ORMOBJECT:Refresh() end

---[SHARED] Saves the data of the given object to the database storage.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/orm.lua#L229)
---
---@return boolean #Returns true if the object was successfully saved to the database, false otherwise.
function ORMOBJECT:Save() end
