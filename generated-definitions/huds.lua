---@meta

huds = {}

---[SHARED] Get an hud by name (a copy)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/huds.lua#L101)
---
---@param name string hud name
---@param retTbl table this table will be modified and returned. If nil, a new table will be created.
---@return table #returns the modified retTbl or the new hud table
function huds.Get(name, retTbl) end

---[SHARED] Get a list (copy) of all registered huds, that can be displayed (no abstract HUDs).
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/huds.lua#L146)
---
---@return table #available huds
function huds.GetList() end

---[SHARED] Get a list (copy) of all the registered HUDs including abstract HUDs.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/huds.lua#L162)
---
---@return table #all registered huds
function huds.GetRealList() end

---[SHARED] Gets the real hud table (not a copy)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/huds.lua#L138)
---
---@param name string hud name
---@return table #returns the real hud table
function huds.GetStored(name) end

---[SHARED] Checks if name is based on base
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/huds.lua#L42)
---
---@param name table table to check
---@param base table base (fallback) table
---@return boolean #returns whether name is based on base
function huds.IsBasedOn(name, base) end

---[SHARED] Used to register your hud with the engine.<br /> <b>This is done automatically for all the files in the <code>gamemodes/terrortown/gamemode/shared/huds</code> folder</b>
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/huds.lua#L66)
---
---@param t table hud table
---@param name string hud name
function huds.Register(t, name) end
