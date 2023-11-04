---@meta

thermalvision = {}

---[CLIENT] Adds entities into the @{Entity} list that should be rendered with thermalvision
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/thermalvision.lua#L242)
---
---@param ents table list of @{Entity} that should be added
---@param mode thermalvision_mode when should the entity be rendererd
function thermalvision.Add(ents, mode) end

---[CLIENT] Clearing the cached @{Entity} list
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/thermalvision.lua#L191)
---
function thermalvision.Clear() end

---[CLIENT] Removes entities from the @{Entity} list
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/thermalvision.lua#L227)
---
---@param ents table list of entities that should get removed
function thermalvision.Remove(ents) end

---[CLIENT] Sets entities of the @{Entity} list to the specified mode
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/thermalvision.lua#L273)
---
---@param ents table list of @{Entity} that should be set
---@param mode thermalvision_mode when should the entity be rendered
function thermalvision.Set(ents, mode) end

---[CLIENT] Enables/disables rendering the background in the thermalvision typical blue tone
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/thermalvision.lua#L264)
---
---@param enabled boolean whether or not the background should get colored
function thermalvision.SetBackgroundColoring(enabled) end
