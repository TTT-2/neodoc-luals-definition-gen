---@meta

WEPS = {}

---[SERVER] Called whenever a @{Player} drops a @{Weapon}, e.g. on death
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_weaponry.lua#L621)
---
---@param ply Player The player whose weapon is about to be dropped
---@param wep Weapon The weapon that is about to be dropped
---@param deathDrop boolean Set to true if this is a drop on death
---@param keepSelection boolean If set to true the current selection is kept if not dropped
function WEPS.DropNotifiedWeapon(ply, wep, deathDrop, keepSelection) end

---[SERVER] Forces a @{Model} pre-cache for each @{Weapon}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_weaponry.lua#L674)
---
function WEPS.ForcePrecache() end

---[SERVER] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_weaponry.lua#L694)
---
function WEPS.IsInstalled(cls) end

---[SHARED] Toggles the <code>disguised</code>
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_weaponry.lua#L113)
---
function WEPS.DisguiseToggle(ply) end

---[SHARED] Returns a table of ammo sorted by the available spawn types.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_weaponry.lua#L82)
---
---@return table #A table with all ammo sorted by their spawn type
function WEPS.GetAmmoForSpawnTypes() end

---[SHARED] Get the class of the weapon
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_weaponry.lua#L40)
---
---@return nil|string #weapon's class
function WEPS.GetClass(wep) end

---[SHARED] Returns a table of weapons sorted by the available spawn types.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_weaponry.lua#L53)
---
---@return table #A table with all weapons sorted by their spawn type
function WEPS.GetWeaponsForSpawnTypes() end

---[SHARED] Checks whether the table is a valid equipment (weapon)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_weaponry.lua#L31)
---
---@param wep table table that needs to be checked
---@return boolean #whether the table is a valid equipment (weapon)
function WEPS.IsEquipment(wep) end

---[SHARED] Get the type (<code>kind</code>) of a weapon class
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_weaponry.lua#L20)
---
---@param class string weapon class
---@return boolean #weapon type (<code>kind</code>)
function WEPS.TypeForWeapon(class) end
