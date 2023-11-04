---@meta

---@class CLGAMEMODEMENU
CLGAMEMODEMENU = {}

---[CLIENT] Adds another submenu class to the list of submenus.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu.lua#L109)
---
---@param submenu CLGAMEMODESUBMENU The new submenu class
function CLGAMEMODEMENU:AddSubmenu(submenu) end

---[CLIENT] Returns the reference to the submenu class if available.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu.lua#L87)
---
---@param name string The name of the class (usually the type defined by the filename)
---@return table #Returns the reference to the found submenu class
function CLGAMEMODEMENU:GetSubmenuByName(name) end

---[CLIENT] Returns the whole table with all submenus to this menu.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu.lua#L78)
---
---@return table #A table with all found submenus
function CLGAMEMODEMENU:GetSubmenus() end

---[CLIENT] Returns a table with references to all registered and visible submenu classes of this menu. They are visible if they are registered and @{CLGAMEMODEMENU:ShouldShow()} returns true.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu.lua#L50)
---
---@return table #Returns a table of all registered and visible submenus
function CLGAMEMODEMENU:GetVisibleSubmenus() end

---[CLIENT] Sets the whole submenu table.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu.lua#L101)
---
---@param submenuTable table The new submenu class table
function CLGAMEMODEMENU:SetSubmenuTable(submenuTable) end
