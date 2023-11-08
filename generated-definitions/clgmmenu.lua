---@meta


---[CLIENT] Filters the list with a searchText and returns full list if nothing is entered.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu.lua#L131)
---
---@return menuClasses #Returns a list of all matching submenus, needs to be indexed with ascending numbers
function CLGMMENU:GetMatchingSubmenus(searchText) end

---[CLIENT] Checks if the menu has a searchbar enabled.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu.lua#L119)
---
---@return boolean #Return true if searchbar should be available
function CLGMMENU:HasSearchbar() end

---[CLIENT] Checks if this menu has any visible submenus. They are visible if they are registered and @{CLGAMEMODEMENU:ShouldShow()} returns true.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu.lua#L40)
---
---@return boolean #Returns true if there is at least one visible submenu
function CLGMMENU:HasVisibleSubmenus() end

---[CLIENT] Called after the class is initialized and has finished inheriting.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu.lua#L177)
---
function CLGMMENU:Initialize() end

---[CLIENT] Used to define whether this menu is available for all or only for admins.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu.lua#L70)
---
function CLGMMENU:IsAdminMenu() end

---[CLIENT] Determines the used searchfunction, when a HasSearchbar returns true. Parameters for that function are submenuClasses and the searchText Per default only titles are searched and compared to the searchtext in lowercase letters.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu.lua#L164)
---
---@return boolean #Returns if the searchText is somewhere matched inside the submenuClass
function CLGMMENU:MatchesSearchString(submenuClass, searchText) end

---[CLIENT] Used to define whether a menu should be shown at all. By default this excludes admin menus for non admin players and menus without any content.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu.lua#L23)
---
---@return boolean #Returns true if this menu should be visible
function CLGMMENU:ShouldShow() end
