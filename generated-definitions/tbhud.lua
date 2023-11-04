---@meta

---@class TBHUD
TBHUD = {}

---[CLIENT] Caches every available traitor button on the map for the local @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_tbuttons.lua#L34)
---
function TBHUD:CacheEnts() end

---[CLIENT] Clears the list of stored traitor buttons
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_tbuttons.lua#L23)
---
function TBHUD:Clear() end

---[CLIENT] Draws the traitor buttons on the HUD
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_tbuttons.lua#L142)
---
---@param client Player This should be the local @{Player}
function TBHUD:Draw(client) end

---[CLIENT] Returns whether the local @{Player} is focussing a traitor button
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_tbuttons.lua#L70)
---
function TBHUD:PlayerIsFocused() end

---[CLIENT] Sends a request to server to change the access to the tbutton
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_tbuttons.lua#L101)
---
---@param teamMode boolean does this change apply to the current role or team
---@return boolean #whether the request was sent to server
function TBHUD:ToggleFocused(teamMode) end

---[CLIENT] Runs the "ttt_use_tbutton" concommand to activate the traitor button
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_tbuttons.lua#L80)
---
---@return boolean #whether the activation was successful
function TBHUD:UseFocused() end

---[CLIENT] Plays a sound and caches all traitor buttons
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_tbuttons.lua#L123)
---
function TBHUD.ReceiveUseConfirm() end
