---@meta

entspawn = {}

---[SERVER] Handles the spawn of player, ammo and weapon entites. Normaly called in @{GM:PostCleanupMap}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawn.lua#L248)
---
---@package
function entspawn.HandleSpawns() end

---[SERVER] To check if forced random spawns are available.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawn.lua#L38)
---
---@return boolean #if forced random spawns are enabled
function entspawn.IsForcedRandomSpawnEnabled() end

---[SERVER] Removes all spawn entities that are found on the map. It also returns a table of all special entities that might be defined in a classic TTT spawn script if classic spawn mode is enabled. These retuned entities are then spawned with the new spawn system.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawn.lua#L119)
---
---@return table #spawnTable A table of entities that should be spawned additionally
function entspawn.RemoveMapEntities() end

---[SERVER] Enable or disable forced random spawns for 'env_entity_maker' spawning non available random spawns at map start.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawn.lua#L30)
---
---@param enable boolean The state to set it to.
function entspawn.SetForcedRandomSpawn(enable) end

---[SERVER] Spawns weapon and ammo entities on provided spawn point table. The spawn point table already has the entity types defined.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawn.lua#L137)
---
---@param spawns table A table that contains the spawns where entities should be spawned
---@param entsForTypes table A table that assigns the ent types to a list of possible entities
---@param entTable table A single indexed list that contains all entites without type grouping
---@param randomType number The spawn type that should be used as random
function entspawn.SpawnEntities(spawns, entsForTypes, entTable, randomType) end

---[SERVER] Spawns all available players.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawn.lua#L189)
---
---@param deadOnly boolean Set to true to only respawn dead players
function entspawn.SpawnPlayers(deadOnly) end

---[SERVER] Spawns a random ammo box with the given data of the random spawn entity.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawn.lua#L65)
---
---@param ent Entity the entity holding the random ammo data
function entspawn.SpawnRandomAmmo(ent) end

---[SERVER] Spawns a random weapon with the given data of the random spawn entity.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawn.lua#L46)
---
---@param ent Entity the entity holding the random weapon data
function entspawn.SpawnRandomWeapon(ent) end
