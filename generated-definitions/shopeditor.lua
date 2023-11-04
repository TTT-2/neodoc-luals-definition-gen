---@meta

ShopEditor = {}

---[CLIENT] Returns a list of every available equipment
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_shopeditor.lua#L18)
---
function ShopEditor.GetEquipmentForRoleAll() end

---[SERVER] Adds an @{ITEM} or @{Weapon} into the shop of a given @{ROLE}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_shopeditor.lua#L79)
---
function ShopEditor.AddToShopEditor(ply, roleData, equip) end

---[SERVER] Initializes the SQL database for the ShopEditor
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_shopeditor.lua#L28)
---
---@param name string sql table name, e.g. the name of a certain @{ROLE}
---@return boolean #success?
---@package
function ShopEditor.CreateShopDB(name) end

---[SERVER] Initializes a SQL database table for each @{ROLE}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_shopeditor.lua#L42)
---
---@package
function ShopEditor.CreateShopDBs() end

---[SERVER] Returns the equipments that are stored in the database for a specific @{ROLE}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_shopeditor.lua#L59)
---
function ShopEditor.GetShopEquipments(roleData) end

---[SERVER] Handles a change of a ConVar that is related to the ShopEditor and reinitializes the shops if needed
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_shopeditor.lua#L178)
---
---@param subrole number subrole id of a @{ROLE}
---@param fallback string the fallback @{ROLE}'s name
---@param ply_or_rf nil, Player, table if this is nil, it will be broadcasted to every available @{Player}
---@package
function ShopEditor.OnChangeWSCVar(subrole, fallback, ply_or_rf) end

---[SERVER] Removes an @{ITEM} or @{Weapon} from the shop of a given @{ROLE}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_shopeditor.lua#L102)
---
function ShopEditor.RemoveFromShopEditor(ply, roleData, equip) end

---[SERVER] Initializes the ConVars for each @{ROLE}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_shopeditor.lua#L260)
---
---@package
function ShopEditor.SetupShopEditorCVars() end

---[SHARED] Initializes the default data for an @{ITEM} or @{Weapon}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_shopeditor.lua#L293)
---
function ShopEditor.InitDefaultData(item) end

---[SHARED] Reads the @{ITEM} or @{Weapon} data from the network
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_shopeditor.lua#L365)
---
---@return string #name of the equipment
function ShopEditor.ReadItemData() end

---[SHARED] Writes the @{ITEM} or @{Weapon} data to the network
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_shopeditor.lua#L314)
---
function ShopEditor.WriteItemData(messageName, name, item, plys) end
