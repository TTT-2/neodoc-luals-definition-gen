---@meta


---[CLIENT] Function to overwrite if the menu should have a button panel.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu/base_gamemodesubmenu.lua#L35)
---
---@return boolean #Returns if this submenu has a button panel
function CLGMSUBMENU:HasButtonPanel() end

---[CLIENT] Called after the class is initialized and has finished inheriting.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu/base_gamemodesubmenu.lua#L44)
---
function CLGMSUBMENU:Initialize() end

---[CLIENT] This function is used to populate the submenu on open/refresh.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu/base_gamemodesubmenu.lua#L14)
---
---@param parent Panel The parent panel
function CLGMSUBMENU:Populate(parent) end

---[CLIENT] This function is used to populate the button panel of a submenu on open/refresh.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu/base_gamemodesubmenu.lua#L25)
---
---@param parent Panel The parent panel
function CLGMSUBMENU:PopulateButtonPanel(parent) end

---[CLIENT] Used to define whether this submenu should be shown at all.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/menus/gamemode/base_gamemodemenu/base_gamemodesubmenu.lua#L54)
---
---@return boolean #Returns true if this submenu should be visible
function CLGMSUBMENU:ShouldShow() end
