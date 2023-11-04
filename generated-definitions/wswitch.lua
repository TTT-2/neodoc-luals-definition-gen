---@meta

---@class WSWITCH
WSWITCH = {}

---[CLIENT] Switch to the currently selected weapon
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_wepswitch.lua#L206)
---
function WSWITCH:ConfirmSelection(noHide) end

---[CLIENT] Hide the weapon switcher
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_wepswitch.lua#L198)
---
function WSWITCH:Disable() end

---[CLIENT] Set the current index of the weapon switch
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_wepswitch.lua#L114)
---
---@param idx number the new index
function WSWITCH:DoSelect(idx) end

---[CLIENT] Show the weapon switcher
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_wepswitch.lua#L168)
---
function WSWITCH:Enable() end

---[CLIENT] Allow for suppression of the attack command
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_wepswitch.lua#L227)
---
function WSWITCH:PreventAttack() end

---[CLIENT] Instantly select a slot and switch to it, without spending time in menu
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_wepswitch.lua#L249)
---
function WSWITCH:SelectAndConfirm(slot) end

---[CLIENT] Increases the current index of the weapon switch
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_wepswitch.lua#L73)
---
function WSWITCH:SelectNext() end

---[CLIENT] Decreases the current index of the weapon switch
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_wepswitch.lua#L92)
---
function WSWITCH:SelectPrev() end

---[CLIENT] Select a specific slot. Numeric key access to direct slots.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_wepswitch.lua#L127)
---
function WSWITCH:SelectSlot(slot) end

---[CLIENT] Sets the current index of the weapon switch and updates the weapon cache
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_wepswitch.lua#L64)
---
---@param idx number the new index
function WSWITCH:SetSelected(idx) end

---[CLIENT] Updates the weapon switcher
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_wepswitch.lua#L236)
---
---@package
function WSWITCH:Think() end

---[CLIENT] Updates the weapon cache
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_wepswitch.lua#L41)
---
function WSWITCH:UpdateWeaponCache() end
