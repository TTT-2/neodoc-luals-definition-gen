---@meta

marks = {}

---[CLIENT] Adds entities into the @{Entity} list that should be rendered with a specific @{Color}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/marks.lua#L209)
---
---@param ents table list of @{Entity} that should be added
---@param col Color the color the added entities should get rendered
function marks.Add(ents, col) end

---[CLIENT] Clearing the cached @{Entity} list
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/marks.lua#L163)
---
function marks.Clear() end

---[CLIENT] Removes entities from the @{Entity} list
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/marks.lua#L173)
---
---@param ents table list of entities that should get removed
function marks.Remove(ents) end

---[CLIENT] Sets entities of the @{Entity} list that based on a specific @{Color}. All the other previously inserted entities with the same color will get removed
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/marks.lua#L232)
---
---@param ents table list of @{Entity} that should be set
---@param col Color the color the added entities should get rendered
function marks.Set(ents, col) end
