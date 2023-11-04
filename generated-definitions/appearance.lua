---@meta

appearance = {}

---[CLIENT] Returns the default global scale based on the current screen resolution in reference to a 1080p based design
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/appearance.lua#L118)
---
---@return number #The scale as a floating point value
function appearance.GetDefaultGlobalScale() end

---[CLIENT] Returns the current focus color
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/appearance.lua#L148)
---
---@return Color #The current focus color
function appearance.GetFocusColor() end

---[CLIENT] This function returns the current global scale
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/appearance.lua#L109)
---
---@return number #The scale as a floating point value
function appearance.GetGlobalScale() end

---[CLIENT] Returns the last stored screen height
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/appearance.lua#L83)
---
---@return number #The last stored height
function appearance.GetLastHeight() end

---[CLIENT] Returns the last stored screen width
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/appearance.lua#L75)
---
---@return number #The last stored width
function appearance.GetLastWidth() end

---[CLIENT] Registers a callback function that is called once the scale is changed
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/appearance.lua#L127)
---
---@param fn function The callback function
function appearance.RegisterScaleChangeCallback(fn) end

---[CLIENT] Helper function that returns the correct color based on the current global color settings
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/appearance.lua#L192)
---
---@param The Color color that is used as a fallback
---@return Color #The chosen color
function appearance.SelectFocusColor(The) end

---[CLIENT] Sets the focus color for the client
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/appearance.lua#L137)
---
---@param clr Color The new focus color
function appearance.SetFocusColor(clr) end

---[CLIENT] This function updates the global scale of all UI elements
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/appearance.lua#L91)
---
---@param scale number The scale as a floating point value
function appearance.SetGlobalScale(scale) end

---[CLIENT] Sets if the global focus color or the dynamic color should be used
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/appearance.lua#L174)
---
---@param state boolean The new use state
function appearance.SetUseGlobalFocusColor(state) end

---[CLIENT] Returns whether the global color should be used or not
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/appearance.lua#L182)
---
---@return boolean #The color state
function appearance.ShouldUseGlobalFocusColor() end

---[CLIENT] This function should be called when the resolution is updated. It is needed to handle automatic scale setting of all UI elements
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/appearance.lua#L64)
---
---@param width number The new width
---@param height number The new height
---@package
function appearance.UpdateResolution(width, height) end
