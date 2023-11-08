---@meta


---[CLIENT] Function that is called when the frame is about to be cleared, return false to cancel event.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_vskin/vgui/dframe_ttt2.lua#L202)
---
---@return boolean #Return false to cancel this event
function PANEL:OnClear() end

---[CLIENT] Function that is called when the frame is hidden, return false to cancel event.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_vskin/vgui/dframe_ttt2.lua#L176)
---
---@return boolean #Return false to cancel this event
function PANEL:OnHide() end

---[CLIENT] Function that is called when the frame is rebuild
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_vskin/vgui/dframe_ttt2.lua#L193)
---
function PANEL:OnRebuild() end

---[CLIENT] Function that is called when the frame is unhidden, return false to cancel event.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_vskin/vgui/dframe_ttt2.lua#L185)
---
---@return boolean #Return false to cancel this event
function PANEL:OnShow() end
