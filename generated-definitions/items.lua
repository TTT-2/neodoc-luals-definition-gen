---@meta

items = {}

---[SHARED] Get an item by name (a copy)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/items.lua#L127)
---
---@param name string item name
---@param retTbl table this table will be modified and returned. If nil, a new table will be created.
---@return table #returns the modified retTbl or the new item table
function items.Get(name, retTbl) end

---[SHARED] Get a list of all the registered items
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/items.lua#L173)
---
---@return table #all registered items
function items.GetList() end

---[SHARED] Get a role item if it's available for this role
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/items.lua#L265)
---
---@param subrole number subrole id
---@param id string, number item id / name
function items.GetRoleItem(subrole, id) end

---[SHARED] Get all items for this role
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/items.lua#L245)
---
---@param subrole number subrole id
---@return table #role items table
function items.GetRoleItems(subrole) end

---[SHARED] Gets the real item table (not a copy)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/items.lua#L164)
---
---@param name string item name
---@return table #returns the real item table
function items.GetStored(name) end

---[SHARED] Checks if name is based on base
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/items.lua#L44)
---
---@param name table table to check
---@param base table base (fallback) table
---@return boolean #returns whether name is based on base
function items.IsBasedOn(name, base) end

---[SHARED] Checks whether the input is an item
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/items.lua#L188)
---
---@param val string, table, number item name / table / id
---@return boolean #returns true if the inserted table is an item
function items.IsItem(val) end

---[SHARED] Initialize old items and converts them to the new item system.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/items.lua#L289)
---
function items.MigrateLegacyItems() end

---[SHARED] Used to register your item with the engine.<br /> <b>This is done automatically for all the files in the <code>lua/terrortown/entities/items</code> folder</b>
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/items.lua#L68)
---
---@param t table item table
---@param name string item name
function items.Register(t, name) end

---[SHARED] Checks whether the input table has a specific item.<br /> This is calling @{table.HasValue} internally, but you don't have to tackle with the input value (<code>val</code>) type
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/items.lua#L216)
---
---@param tbl table target table
---@param val string, table, number item name / table / id
---@return boolean #whether the input table has a specific item
function items.TableHasItem(tbl, val) end
