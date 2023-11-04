---@meta

hudelements = {}

---[SHARED] Get an hud element by name (a copy)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/hudelements.lua#L107)
---
---@param name string hud element name
---@param retTbl table this table will be modified and returned. If nil, a new table will be created.
---@return table #returns the modified retTbl or the new hud element table
function hudelements.Get(name, retTbl) end

---[SHARED] Gets all hud elements matching the type of all the registered hud elements
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/hudelements.lua#L196)
---
---@param type string the hud element's type name
---@return table #returns all hud elements matching the type of all the registered hud elements
function hudelements.GetAllTypeElements(type) end

---[SHARED] Get a list of all the registered hud element types
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/hudelements.lua#L166)
---
---@return table #returns a list of all the registered hud element types
function hudelements.GetElementTypes() end

---[SHARED] Get a list (copy) of all registered hud elements
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/hudelements.lua#L152)
---
---@return table #registered hud elements
function hudelements.GetList() end

---[SHARED] Gets the real hud element table (not a copy)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/hudelements.lua#L144)
---
---@param name string hud element name
---@return table #returns the real hud element table
function hudelements.GetStored(name) end

---[SHARED] Gets the first element matching the type of all the registered hud elements
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/hudelements.lua#L183)
---
---@param type string the hud element's type name
---@return nil|table #returns the first element matching the type of all the registered hud elements
function hudelements.GetTypeElement(type) end

---[SHARED] Checks if name is based on base
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/hudelements.lua#L42)
---
---@param name table table to check
---@param base table base (fallback) table
---@return boolean #returns whether name is based on base
function hudelements.IsBasedOn(name, base) end

---[SHARED] Used to register your hud element with the engine.<br /> <b>This is done automatically for all the files in the <code>gamemodes/terrortown/gamemode/shared/hudelements</code> folder</b>
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/hudelements.lua#L66)
---
---@param t table hud element table
---@param name string hud element name
function hudelements.Register(t, name) end

---[SHARED] <p>Sets the child relation on all objects that have to be informed / are involved.</p> <p>This can either be a single parent <-> child relation or a parents <-> child relation, if the parent is a type. This function then will register the childid as a child to all elements with that type.</p> <p>A parent element is responsible for calling PerformLayout on its child elements!</p>
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/hudelements.lua#L221)
---
---@param childid number child hud element name
---@param parentid number parent hud element name
---@param parent_is_type boolean whether the parent is a type
function hudelements.RegisterChildRelation(childid, parentid, parent_is_type) end
