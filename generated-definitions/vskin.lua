---@meta

vskin = {}

---[CLIENT] Returns the accent color of the currently selected vskin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L165)
---
---@return Color #The accent color
function vskin.GetAccentColor() end

---[CLIENT] Returns the background color of the currently selected vskin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L151)
---
---@return Color #The background color
function vskin.GetBackgroundColor() end

---[CLIENT] Returns the border size of the currently selected vskin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L291)
---
---@return number #The border size
function vskin.GetBorderSize() end

---[CLIENT] Returns the collapsable height of the currently selected vskin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L277)
---
---@return number #The collapsable height
function vskin.GetCollapsableHeight() end

---[CLIENT] Returns the corner radius of the currently selected vskin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L305)
---
---@return number #The corner radius
function vskin.GetCornerRadius() end

---[CLIENT] Returns the dark accent color of the currently selected vskin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L179)
---
---@return Color #The dark accent color
function vskin.GetDarkAccentColor() end

---[CLIENT] Returns the name of the default vskin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L109)
---
---@return string #The name of the vskin
function vskin.GetDefaultVSkinName() end

---[CLIENT] Returns the header height of the currently selected vskin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L263)
---
---@return number #The header height
function vskin.GetHeaderHeight() end

---[CLIENT] Returns the screen color of the currently selected vskin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L207)
---
---@return Color #The scrollbar color
function vskin.GetScreenColor() end

---[CLIENT] Returns the scrollbar color of the currently selected vskin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L193)
---
---@return Color #The scrollbar color
function vskin.GetScrollbarColor() end

---[CLIENT] Returns the shadow color of the currently selected vskin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L221)
---
---@return Color #The shadow color
function vskin.GetShadowColor() end

---[CLIENT] Returns the shadow size of the currently selected vskin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L249)
---
---@return number #The shadow size
function vskin.GetShadowSize() end

---[CLIENT] Returns the title text color of the currently selected vskin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L235)
---
---@return Color #The title text color
function vskin.GetTitleTextColor() end

---[CLIENT] Returns a table of the names of all registered vskins.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L87)
---
---@return table #The list of all names
function vskin.GetVSkinList() end

---[CLIENT] Returns the name of the currently selected vskin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L101)
---
---@return string #The name of the vskin
function vskin.GetVSkinName() end

---[CLIENT] Register a new vskin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L33)
---
---@param name string The unique name of your vskin
---@param skin table The skin table
function vskin.RegisterVSkin(name, skin) end

---[CLIENT] Select a registered vskin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L48)
---
---@param name string The unique name of the vskin,
---@return boolean #Returns true if skin was selected
function vskin.SelectVSkin(name) end

---[CLIENT] Sets the background blur state.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L117)
---
function vskin.SetBlurBackground(state) end

---[CLIENT] Sets the background color state.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L134)
---
function vskin.SetColorBackground(state) end

---[CLIENT] Returns if the background of vskin elements should be blurred or not
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L126)
---
---@return boolean #Should the background be blurred
function vskin.ShouldBlurBackground() end

---[CLIENT] Returns if the background of vskin elements should be colored or not
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L143)
---
---@return boolean #Should the background be colored
function vskin.ShouldColorBackground() end

---[CLIENT] This function is called after the skin is changed. It updates the color and sizes caching, while also calling @{GM:TTT2UpdatedVSkin}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vskin.lua#L73)
---
---@param oldSkinName string The old skin name
---@param skinName string The new skin name
---@package
function vskin.UpdatedVSkin(oldSkinName, skinName) end
