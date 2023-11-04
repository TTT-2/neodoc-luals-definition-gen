---@meta

roleselection = {}

---[SERVER] Returns all selectable @{ROLE}s based on the amount of @{Player}s 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_roleselection.lua#L258)
---
---@param maxPlys number amount of maximum @{Player}s (filtered!)
---@return table #a list of all selectable @{ROLE}s
function roleselection.GetAllSelectableRolesList(maxPlys) end

---[SERVER] Returns the current amount of selected/already selected @{ROLE}s. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_roleselection.lua#L179)
---
---@param subrole number subrole id of a @{ROLE}'s index
---@return number #amount
function roleselection.GetCurrentRoleAmount(subrole) end

---[SERVER] Returns a list of all selectable players 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_roleselection.lua#L235)
---
---@param plys table list of @{Player}s that should be filtered.
---@return table #list of filtered players
function roleselection.GetSelectablePlayers(plys) end

---[SERVER] Returns a list of selectable @{ROLE}s (already filtered by amount of maximum available roles) based on the amount of @{Player}s
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_roleselection.lua#L344)
---
---@param maxPlys number amount of maximum @{Player}s (filtered!). Insert `nil` if it should get calculated
---@param rolesAmountList table list of @{ROLE}s as key and selectable amount of these roles as value
---@return table #a list of filtered selectable @{ROLE}s
function roleselection.GetSelectableRolesList(maxPlys, rolesAmountList) end

---[SERVER] Loads every layer from the SQL database
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_roleselection.lua#L49)
---
function roleselection.LoadLayers() end

---[SERVER] Saves every layer into the SQL database
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_roleselection.lua#L134)
---
function roleselection.SaveLayers() end

---[SERVER] Select selectable @{ROLE}s for a given list of @{Player}s
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_roleselection.lua#L822)
---
---@param plys table list of @{Player}s. `nil` to calculate automatically (all players)
---@param maxPlys number amount of maximum @{Player}s. `nil` to calculate automatically
function roleselection.SelectRoles(plys, maxPlys) end
