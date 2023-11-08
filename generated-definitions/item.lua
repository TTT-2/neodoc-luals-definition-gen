---@meta


---[SHARED] A player or NPC has bought the @{ITEM}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/entities/items/item_base/shared.lua#L104)
---
function ITEM:Bought(ply) end

---[SHARED] A player or NPC has picked the @{ITEM} up
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/entities/items/item_base/shared.lua#L95)
---
function ITEM:Equip(ply) end

---[SHARED] Called just before entity is deleted. This is used to reset data you set before
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/entities/items/item_base/shared.lua#L86)
---
function ITEM:Reset(ply) end
