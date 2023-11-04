---@meta

---@class ARMOR
ARMOR = {}

---[CLIENT] HANDLE ARMOR STATUS ICONS init icons
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_armor.lua#L10)
---
function ARMOR:Initialize() end

---[SERVER] Handles the @{ARMOR} of a @{Player}, called by @{GM:PlayerTakeDamage}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_armor.lua#L103)
---
---@param ply Player The @{Player} taking damage
---@param infl Entity The inflictor
---@param att Player, Entity The attacker
---@param amount number Amount of damage
---@param dmginfo CTakeDamageInfo Damage info
---@package
function ARMOR:HandlePlayerTakeDamage(ply, infl, att, amount, dmginfo) end

---[SERVER] Sets the initial @{Player} Armor, called in @{GM:TTTBeginRound} after (dumb) players are respawned. Therefore no armor has to be reset and it is safe that the player receives their armor.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_armor.lua#L82)
---
---@package
function ARMOR:InitPlayerArmor() end
