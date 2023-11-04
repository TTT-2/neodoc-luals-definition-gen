---@meta

---@class TARGET_DATA
TARGET_DATA = {}

---[CLIENT] Adds a line of text to the description area of the targetID element
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L218)
---
---@param text string The text that should be displayed
---@param color Color The color of the line
---@param inline_icons table A table of materials that should be rendered in front of the text
---@return number #The amount of description lines that are currently in the table
function TARGET_DATA:AddDescriptionLine(text, color, inline_icons) end

---[CLIENT] Adds a icon to the icon list on the left side of the targetID element.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L172)
---
---@param material Material The material of the icon that should be rendered
---@param color Color The color of the icon
---@return number #The amount of icons that are currently in the table
function TARGET_DATA:AddIcon(material, color) end

---[CLIENT] Binds two target data tables to the @{TARGET_DATA} object
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L62)
---
---@param data table The data table about the focused entity
---@param params table The default table with the params that should be modified by the hook
---@return TARGET_DATA #The object to be used in the hook
---@package
function TARGET_DATA:BindTarget(data, params) end

---[CLIENT] Enables/Disables the outline around a focused entity, can't be enabled if set to false from another call
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L98)
---
---@param enb_outline boolean A boolean defining the outline state
function TARGET_DATA:EnableOutline(enb_outline) end

---[CLIENT] Enables/Disables the targetID text and icons, can't be enabled if set to false from another call
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L111)
---
---@param enb_text boolean A boolean defining the text state
function TARGET_DATA:EnableText(enb_text) end

---[CLIENT] Returns the amount of set description lines
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L250)
---
---@return number #Amount of existing description lines
function TARGET_DATA:GetAmountDescriptionLines() end

---[CLIENT] Returns the amount of set icons
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L266)
---
---@return number #Amount of existing icons
function TARGET_DATA:GetAmountIcons() end

---[CLIENT] Returns the currently focused entity
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L73)
---
---@return Entity #The focused entity
function TARGET_DATA:GetEntity() end

---[CLIENT] Returns the distance to the focused entity
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L89)
---
---@return number #The distance to the focused entity
function TARGET_DATA:GetEntityDistance() end

---[CLIENT] Returns the raw data tables of the targetID element to me modified by experienced users
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L274)
---
---@return table,table #The table of the entity data, the table of the targetID element parameters
function TARGET_DATA:GetRaw() end

---[CLIENT] Returns the reference position of the targetID HUD element. The reference position is used to position the element on screen.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L132)
---
---@return number,number #Reference position x, reference position y
function TARGET_DATA:GetRefPosition() end

---[CLIENT] Returns the entity before it was modified by @{GM:TTTModifyTargetedEntity}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L81)
---
---@return nil|Entity #The focused entity, nil if it wasn't modified
function TARGET_DATA:GetUnchangedEntity() end

---[CLIENT] Returns whether or not a key has been set
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L258)
---
---@return boolean #True if a key is set
function TARGET_DATA:HasKey() end

---[CLIENT] Returns whether or not a subtitle has been set
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L242)
---
---@return boolean #True if a subtitle is set
function TARGET_DATA:HasSubtitle() end

---[CLIENT] Returns whether or not a title has been set
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L234)
---
---@return boolean #True if a title is set
function TARGET_DATA:HasTitle() end

---[CLIENT] Initializes the @{TARGET_DATA} object
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L17)
---
---@param ent Entity The focused Entity
---@param unchangedEnt Entity The original focused entity if focus was changed by the hook
---@param distance number The distance to the focused entity
---@return TARGET_DATA #The object to be used in the hook
---@package
function TARGET_DATA:Initialize(ent, unchangedEnt, distance) end

---[CLIENT] Sets a key to be displayed in the targetID element
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L154)
---
---@param key string The key to be displayed, this can be any string. E.g. "E".
function TARGET_DATA:SetKey(key) end

---[CLIENT] Sets a key to be displayed in the targetID element based on a key binding
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L162)
---
---@param key_binding string The key binding like "+use".
function TARGET_DATA:SetKeyBinding(key_binding) end

---[CLIENT] Sets the outline color of a focused entity
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L123)
---
---@param The Color outline color
function TARGET_DATA:SetOutlineColor(The) end

---[CLIENT] Sets the reference position of the targetID HUD element. The reference position is used to position the element on screen. This value shouldn't be changed in a normal scenario.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L143)
---
---@param ref_x number The reference position on the x axis
---@param ref_y number The reference position on the y axis
function TARGET_DATA:SetRefPosition(ref_x, ref_y) end

---[CLIENT] Sets the subtitle of the specific targetID element
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L203)
---
---@param text string The text that should be displayed
---@param color Color The color of the line
---@param inline_icons table A table of materials that should be rendered in front of the text
function TARGET_DATA:SetSubtitle(text, color, inline_icons) end

---[CLIENT] Sets the title of the specific targetID element
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_target_data.lua#L189)
---
---@param text string The text that should be displayed
---@param color Color The color of the line
---@param inline_icons table A table of materials that should be rendered in front of the text
function TARGET_DATA:SetTitle(text, color, inline_icons) end
