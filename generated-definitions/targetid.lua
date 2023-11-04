---@meta

TargetID = {}

---[CLIENT] This function handles finding Entities by casting a ray from a point in a direction, filtering out certain entities Use this in combination with the hook @GM:TTTModifyTargetedEntity to create your own Remote Camera with TargetIDs. e.g. This is used in @GM:HUDDrawTargetID before drawing the TargetIDs. Use that code as example.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/targetid.lua#L78)
---
---@param pos Vector Position of Ray Origin.
---@param dir Vector Direction of the Ray. Should be normalized.
---@param filter table List of all @{Entity}s that should be filtered out.
---@return Entity #The Entity that got found
function targetid.FindEntityAlongView(pos, dir, filter) end

---[CLIENT] This function handles looking with a DNA Scanner and adds specific descriptions
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/targetid.lua#L616)
---
---@param tData TARGET_DATA The object to be used in the hook
function targetid.HUDDrawTargetIDDNAScanner(tData) end

---[CLIENT] This function handles looking at doors and adds specific descriptions
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/targetid.lua#L556)
---
---@param tData TARGET_DATA The object to be used in the hook
function targetid.HUDDrawTargetIDDoors(tData) end

---[CLIENT] This function handles looking at players and adds specific descriptions
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/targetid.lua#L379)
---
---@param tData TARGET_DATA The object to be used in the hook
function targetid.HUDDrawTargetIDPlayers(tData) end

---[CLIENT] This function handles looking at ragdolls and adds specific descriptions
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/targetid.lua#L470)
---
---@param tData TARGET_DATA The object to be used in the hook
function targetid.HUDDrawTargetIDRagdolls(tData) end

---[CLIENT] This function handles looking at spawns and adds a description
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/targetid.lua#L123)
---
---@param tData TARGET_DATA The object to be used in the hook
function targetid.HUDDrawTargetIDSpawnEdit(tData) end

---[CLIENT] This function handles looking at traitor buttons and adds a description
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/targetid.lua#L182)
---
---@param tData TARGET_DATA The object to be used in the hook
function targetid.HUDDrawTargetIDTButtons(tData) end

---[CLIENT] This function handles looking at weapons and adds specific descriptions
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/targetid.lua#L297)
---
---@param tData TARGET_DATA The object to be used in the hook
function targetid.HUDDrawTargetIDWeapons(tData) end
