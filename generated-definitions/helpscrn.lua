---@meta

---@class HELPSCRN
HELPSCRN = {}

---[CLIENT] Builds the content area, the data has to be set previously.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_help.lua#L275)
---
function HELPSCRN:BuildContentArea() end

---[CLIENT] Returns the name of the currently opened menu, returns nil if no menu is opened.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_help.lua#L251)
---
---@return string #The id of the opened menu or nil
function HELPSCRN:GetOpenMenu() end

---[CLIENT] Checks whether there is a valid menu frame object to see if the menu is visible.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_help.lua#L383)
---
---@return boolean #Returns true if the menu is visible
function HELPSCRN:IsVisible() end

---[CLIENT] Sets up the data for the content area without actually building the area.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_help.lua#L266)
---
---@param parent Panel The parent panel
---@param submenuClass table The submenu class
function HELPSCRN:SetupContentArea(parent, submenuClass) end

---[CLIENT] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_help.lua#L244)
---
function HELPSCRN:Show() end

---[CLIENT] Opens the help screen
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_help.lua#L170)
---
function HELPSCRN:ShowMainMenu() end

---[CLIENT] Opens the help sub screen.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_help.lua#L316)
---
---@param menuClass table The class of the submenu
function HELPSCRN:ShowSubmenu(menuClass) end

---[CLIENT] Unhides the helpscreen if it was hidden.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_help.lua#L372)
---
function HELPSCRN:Unhide() end
