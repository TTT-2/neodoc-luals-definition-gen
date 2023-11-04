---@meta

map = {}

---[SERVER] CS:S and TF2 maps have a bunch of ents we'd like to abuse for weapon spawns, but to do that we need to register a SENT with their class name, else they will just error out and we can't do anything with them.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/map.lua#L192)
---
---@package
function map.DummifyFallbackWeaponEnts() end

---[SHARED] Finds and returns all ammo entities found on a map.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/map.lua#L286)
---
---@return table #A table with all the ammo spawn entities grouped by ent types
function map.GetAmmoSpawnEntities() end

---[SHARED] Finds and returns all ammo spawns found on a map.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/map.lua#L322)
---
---@return table #A table with all the ammo spawns grouped by ent types
function map.GetAmmoSpawns() end

---[SHARED] Get detailed data from a spawn entity.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/map.lua#L418)
---
---@param ent Entity The spawn entity
---@param spawnType number The spawn type of the entity
---@return number #The ent type
function map.GetDataFromSpawnEntity(ent, spawnType) end

---[SHARED] Returns the exptected type of the current map.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/map.lua#L210)
---
---@return number #Returns the map type of the currently active map
function map.GetMapGameType() end

---[SHARED] Finds and returns player spawn entities found on a map.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/map.lua#L299)
---
---@return table #A table with all the player spawn entities grouped by ent types
function map.GetPlayerSpawnEntities() end

---[SHARED] Finds and returns player spawns found on a map.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/map.lua#L330)
---
---@return table #A table with all the player spawns grouped by ent types
function map.GetPlayerSpawns() end

---[SHARED] Is used to get a TTT2 style spawn table from the old TTT spawn script data.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/map.lua#L340)
---
---@param spawns table The spawn table that should be converted
---@return table #A table with all weapon, ammo and player spawns sorted by ent types
---@package
function map.GetSpawnsFromClassTable(spawns) end

---[SHARED] Finds and returns all weapon entities found on a map depending on the map type.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/map.lua#L267)
---
---@return table #A table with all the weapon spawn entities grouped by ent types
function map.GetWeaponSpawnEntities() end

---[SHARED] Finds and returns all weapon spawns found on a map depending on the map type.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/map.lua#L314)
---
---@return table #A table with all the weapon spawns grouped by ent types
function map.GetWeaponSpawns() end

---[SHARED] Checks if the currently selected map is a counter strike source map.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/map.lua#L245)
---
---@return boolean #Returns true if it is a counter strike source map
function map.IsCounterStrikeMap() end

---[SHARED] Checks if a given entity is a default terrortown map entity. Can be used to determine if an entity should be removed from the map prior to spawning with the custom spawn system.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/map.lua#L399)
---
---@param ent Entity The entity to check
---@return boolean #Returns true if the given entity is default terrortown entity
function map.IsDefaultTerrortownMapEntity(ent) end

---[SHARED] Checks if the currently selected map is a team fortress 2 map.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/map.lua#L255)
---
---@return boolean #Returns true if it is a team fortress 2 map
function map.IsTeamFortressMap() end

---[SHARED] Checks if the currently selected map is a terrortown map.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/map.lua#L235)
---
---@return boolean #Returns true if it is a terrortown map
function map.IsTerrortownMap() end
