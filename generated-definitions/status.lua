---@meta

---@class STATUS
STATUS = {}

---[CLIENT] Checks if a @{STATUS} is active
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_status.lua#L105)
---
---@param id string The index of the status
---@return boolean #Whether the status is active
function STATUS:Active(id) end

---[CLIENT] Adds a status to the currently active ones
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_status.lua#L38)
---
---@param id string The id of the registered @{STATUS}
---@param active_icon number The numeric id of a specific status icon
function STATUS:AddStatus(id, active_icon) end

---[CLIENT] Adds a timed status to the currently active ones
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_status.lua#L54)
---
---@param id string The id of the registered @{STATUS}
---@param duration number The duration of the @{STATUS}. If the time elapsed, the @{STATUS} will be removed automatically
---@param showDuration boolean Whether the duration should be shown
---@param active_icon number The numeric id of a specific status icon
function STATUS:AddTimedStatus(id, duration, showDuration, active_icon) end

---[CLIENT] Registers a @{STATUS}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_status.lua#L18)
---
---@return boolean #whether the creation was successfully
function STATUS:RegisterStatus(id, data) end

---[CLIENT] Checks if a @{STATUS} is registered
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_status.lua#L96)
---
---@param id string The index of the status
---@return boolean #Whether the status is registered
function STATUS:Registered(id) end

---[CLIENT] Clears the list of currently active @{STATUS}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_status.lua#L127)
---
function STATUS:RemoveAll() end

---[CLIENT] Removes a currently active status
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_status.lua#L113)
---
---@param id string The id of the registered @{STATUS}
function STATUS:RemoveStatus(id) end

---[CLIENT] Changes the active icon for a specifiv active effect for a given @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_status.lua#L79)
---
---@param id string The id of the registered @{STATUS}
---@param active_icon number The numeric id of a specific status icon
function STATUS:SetActiveIcon(id, active_icon) end

---[SERVER] Adds a status for a given @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_status.lua#L19)
---
---@param ply Player The @{Player} that should receive this status update
---@param id string The id of the registered @{STATUS}
---@param active_icon number The numeric id of a specific status icon
function STATUS:AddStatus(ply, id, active_icon) end

---[SERVER] Adds a times status for a given @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_status.lua#L48)
---
---@param ply Player The @{Player} that should receive this status update
---@param id string The id of the registered @{STATUS}
---@param duration number The duration of the @{STATUS}. If the time elapsed, the @{STATUS} will be removed automatically
---@param showDuration boolean Whether the duration should be shown
---@param active_icon number The numeric id of a specific status icon
function STATUS:AddTimedStatus(ply, id, duration, showDuration, active_icon) end

---[SERVER] Removes each status for a given @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_status.lua#L72)
---
---@param ply Player The @{Player} that should receive this status update
function STATUS:RemoveAll(ply) end

---[SERVER] Removes a status for a given @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_status.lua#L62)
---
---@param ply Player The @{Player} that should receive this status update
---@param id string The id of the registered @{STATUS}
function STATUS:RemoveStatus(ply, id) end

---[SERVER] Changes the active icon for a specifiv active effect for a given @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_status.lua#L32)
---
---@param ply Player The @{Player} that should receive this status update
---@param id string The id of the registered @{STATUS}
---@param active_icon number The numeric id of a specific status icon
function STATUS:SetActiveIcon(ply, id, active_icon) end
