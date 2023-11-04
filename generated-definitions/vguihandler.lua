---@meta

vguihandler = {}

---[CLIENT] Draws the background behind the opened vgui menues. It is called in @{GM:PostDrawHUD}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vguihandler.lua#L154)
---
---@package
function vguihandler.DrawBackground() end

---[CLIENT] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vguihandler.lua#L31)
---
---@param w number The width of the panel
---@param h number The height of the panel
---@param title string The title of the panel
---@return Panel #The created/cleared DFrameTTT2 object
function vguihandler.GenerateFrame(w, h, title) end

---[CLIENT] Hides all registered and unhidden frames.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vguihandler.lua#L57)
---
---@return table #Returns a table of the frames that are now hidden
function vguihandler.HideFrames() end

---[CLIENT] Should be called when a specific vskin variable is changed so that the complete vgui element is redone
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vguihandler.lua#L108)
---
---@package
function vguihandler.InvalidateVSkin() end

---[CLIENT] Returns if a menu is open or not
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vguihandler.lua#L137)
---
---@return boolean #True if a menu is open
function vguihandler.IsOpen() end

---[CLIENT] Rebuilds the whole menu without a specific changed setting.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vguihandler.lua#L119)
---
function vguihandler.Rebuild() end

---[CLIENT] Unhides all frames that are currently registered and hidden.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vguihandler.lua#L91)
---
function vguihandler.ShowAllFrames() end

---[CLIENT] Unhides frames that are listed in a table.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/vguihandler.lua#L78)
---
---@param A table table of frames
function vguihandler.ShowFrames(A) end
