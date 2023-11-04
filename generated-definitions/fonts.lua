---@meta

fonts = {}

---[CLIENT] Adds a font to the font list.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/fonts.lua#L55)
---
---@package
function fonts.AddFont(name, baseSize, fontData) end

---[CLIENT] Returns a specified font.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/fonts.lua#L77)
---
---@param name string The font name
---@return table #A table of the font with different scales
function fonts.GetFont(name) end

---[CLIENT] Gets the scale modifer based on a given scale. This function tries to find one of the given steps defined in `fonts.scales` that fits best to the given scale. If it fails to find a fitting scale, it returns the largest available.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/fonts.lua#L31)
---
---@param scale number, Vector The font scale
---@return number #The font scale
---@package
function fonts.GetScaleModifier(scale) end

---[CLIENT] Returns a table of all font scales.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/fonts.lua#L85)
---
---@return table #A table of all font scales
function fonts.GetScales() end
