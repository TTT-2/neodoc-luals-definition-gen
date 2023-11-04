---@meta

---@class HUD
HUD = {}

---[CLIENT] Applies the scaling
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/huds/base_huds/scalable_hud/cl_init.lua#L73)
---
function HUD:ApplyScale(scale) end

---[CLIENT] This function will return a table containing all keys that will be stored by the @{HUD:SaveData} function.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/huds/base_huds/scalable_hud/cl_init.lua#L30)
---
function HUD:GetSavingKeys() end

---[CLIENT] This will initialize the HUD, by calling @{HUDELEMENT:Initialize} on its elements, respecting the parent -> child relations. It will also call @{HUD:PerformLayout} before setting the HUDELEMENT.initialized parameter.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/huds/base_huds/scalable_hud/cl_init.lua#L19)
---
function HUD:Initialize() end

---[CLIENT] This function will load all saved keys from the Database and will then call @{HUDELEMENT:LoadData} on all elements, shown by the HUD. After that it will call @{HUD:PerformLayout}. This function is called when the HUDManager loads / changes to this HUD.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/huds/base_huds/scalable_hud/cl_init.lua#L50)
---
function HUD:LoadData() end

---[CLIENT] This will reset all elements of the HUD and call @{HUDELEMENT:Reset} on its elements. This will respect the parent -> child relation and only call this on non-child elements.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/huds/base_huds/scalable_hud/cl_init.lua#L102)
---
function HUD:Reset() end
