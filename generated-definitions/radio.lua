---@meta

---@class RADIO
RADIO = {}

---[CLIENT] Returns the current target or the last stored one
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_radio.lua#L237)
---
---@return nil|string #the cmd name
function RADIO:GetTarget() end

---[CLIENT] Returns the target type of the local @{Player}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_radio.lua#L187)
---
---@return Entity|string #The command name or the focused entity
function RADIO:GetTargetType() end

---[CLIENT] Sends an command based on the given index of the <code>RADIO.Commands</code> table (if this command is available)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_radio.lua#L173)
---
function RADIO:SendCommand(slotidx) end

---[CLIENT] Displays the radio commands for the local @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_radio.lua#L88)
---
function RADIO:ShowRadioCommands(state) end

---[CLIENT] Stores the current target
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_radio.lua#L261)
---
function RADIO:StoreTarget() end

---[CLIENT] Makes a target printable
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_radio.lua#L219)
---
function RADIO.ToPrintable(target) end
