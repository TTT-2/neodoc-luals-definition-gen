---@meta

ents.TTT = {}

---[SERVER] Checks whether the given map is able to import @{Entity} based on the map's data
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_ent_replace.lua#L123)
---
---@package
function ents.TTT.CanImportEntities(map) end

---[SERVER] Fixes parenting bug of broken @{Entity}, after the cleanup
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_ent_replace.lua#L74)
---
---@package
function ents.TTT.FixParentedPostCleanup() end

---[SERVER] Fixes parenting bug of broken @{Entity}, before the cleanup
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_ent_replace.lua#L50)
---
---@package
function ents.TTT.FixParentedPreCleanup() end

---[SERVER] Imports spawns from old TTT-style map spawn scrips.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_ent_replace.lua#L141)
---
---@param map string The map name
---@return table #A table of spawns
---@deprecated
---@package
function ents.TTT.ImportEntities(map) end

---[SERVER] Remove ZM ragdolls that don't work, AND old player ragdolls. Exposed because it's also done at BeginRound
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_ent_replace.lua#L20)
---
function ents.TTT.RemoveRagdolls(player_only) end

---[SERVER] Triggers the round state output for every map setting @{Entity}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_ent_replace.lua#L106)
---
---@param r number round state
---@param param any the data that is assigned to the new event / @{function}
---@package
function ents.TTT.TriggerRoundStateOutputs(r, param) end
