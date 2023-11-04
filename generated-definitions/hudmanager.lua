---@meta

HUDManager = {}

---[CLIENT] Draws the current selected HUD
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_hud_manager.lua#L15)
---
function HUDManager.DrawHUD() end

---[CLIENT] Returns the current selected @{HUD}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_hud_manager.lua#L163)
---
function HUDManager.GetHUD() end

---[CLIENT] Initializes all @{HUD}s and loads the SQL stored data
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_hud_manager.lua#L203)
---
function HUDManager.LoadAllHUDS() end

---[CLIENT] Resets the current HUD if possible
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_hud_manager.lua#L191)
---
function HUDManager.ResetHUD() end

---[CLIENT] Sets the @{HUD} (if possible)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_hud_manager.lua#L179)
---
---@param name string The name of the HUD
function HUDManager.SetHUD(name) end

---[SERVER] Loads the data from a defined SQL table
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_hud_manager.lua#L96)
---
---@package
function HUDManager.LoadData() end

---[SERVER] Stores the data into a defined SQL table
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_hud_manager.lua#L72)
---
---@package
function HUDManager.StoreData() end
