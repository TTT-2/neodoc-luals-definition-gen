---@meta

spawn = {}

---[SERVER] Returns a list of all spawn points found on the map that are valid to spawn players.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/plyspawn.lua#L159)
---
---@return table #Returns a table of unsafe spawn points
function plyspawn.GetPlayerSpawnPoints() end

---[SERVER] Gets a safe random player spawn point. If no free and safe spawnpoint is found, it tries to create its own by searching around existing ones.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/plyspawn.lua#L171)
---
---@param ply Player The player that should receive their spawn point
---@return boolean|table #A safe spawn point, false if no spawn point was found on the map
function plyspawn.GetRandomSafePlayerSpawnPoint(ply) end

---[SERVER] Returns a selection of points around the given position.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/plyspawn.lua#L119)
---
---@param ply Player The player entity that should spawn, this parameter is needed to make sure there is enough space for this specific playermodel.
---@param pos Vector The given position
---@param radiusMultiplier number The radius multiplayer to calculate the new positions
---@return table #A table of position vectors
function plyspawn.GetSpawnPointsAroundSpawn(ply, pos, radiusMultiplier) end

---[SERVER] Checks if a given spawn point is safe. Safe means that a player can spawn without being stuck. Entities which are passable are ignored by the check.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/plyspawn.lua#L38)
---
---@param ply Player The player entity that should spawn, this parameter is needed to make sure there is enough space for this specific playermodel.
---@param pos Vector The respawn position
---@param force boolean Should the respawn be forced? This means killing other players that block this position
---@param filter table, Entity A table of entities or an entity that should be ignored by this check
---@return boolean #Returns if the spawn point is safe
function plyspawn.IsSpawnPointSafe(ply, pos, force, filter) end

---[SERVER] Tries to make spawn position valid by scanning surrounding area for valid positions.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/plyspawn.lua#L143)
---
---@param ply Player The player entity that should spawn, this parameter is needed to make sure there is enough space for this specific playermodel.
---@param unsafePos Vector The unsafe spawn position
---@param radiusMultiplier number The radius multiplayer to calculate the new positions
---@return Vector|nil #Returns the safe spawn position, nil if none was found
function plyspawn.MakeSpawnPointSafe(ply, unsafePos, radiusMultiplier) end
