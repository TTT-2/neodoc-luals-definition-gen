---@meta

VOICE = {}

---[CLIENT] Checks if a player can enable the global voice chat.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L125)
---
---@return boolean #Returns if the player is able to use the global voice chat
function VOICE.CanEnable() end

---[CLIENT] Returns whether the local @{Player} is able to speak
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L593)
---
function VOICE.CanSpeak() end

---[CLIENT] Checks if a player can enable the team voice chat.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L97)
---
---@return boolean #Returns if the player is able to use the team voice chat
function VOICE.CanTeamEnable() end

---[CLIENT] Switches the mute state to the next in the list or to the given one
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L373)
---
---@return number #the new mute_state
function VOICE.CycleMuteState(force_state) end

---[CLIENT] Draws a popup displaying the speaking @{Player}s
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L615)
---
---@param client Player This should be the local @{Player}
---@package
function VOICE.Draw(client) end

---[CLIENT] Gets the stored mute state for the player's voice.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L463)
---
function VOICE.GetPreferredPlayerVoiceMuted(ply) end

---[CLIENT] Gets the stored volume for the player's voice.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L444)
---
function VOICE.GetPreferredPlayerVoiceVolume(ply) end

---[CLIENT] Initializes the voice battery
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L507)
---
function VOICE.InitBattery() end

---[CLIENT] Returns whether the local @{Player} is speaking
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L577)
---
function VOICE.IsSpeaking() end

---[CLIENT] Passes along the input linear volume value.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L418)
---
function VOICE.LinearToLinear(volume) end

---[CLIENT] Scales a linear volume into a Log value.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L400)
---
function VOICE.LinearToLog(volume) end

---[CLIENT] Scales a linear volume into a Power 4 value.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L392)
---
function VOICE.LinearToPower4(volume) end

---[CLIENT] Sets the stored mute state for the player's voice.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L474)
---
function VOICE.SetPreferredPlayerVoiceMuted(ply, is_muted) end

---[CLIENT] Sets the stored volume for the player's voice.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L455)
---
function VOICE.SetPreferredPlayerVoiceVolume(ply, volume) end

---[CLIENT] Sets whether the local @{Player} is speaking
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L585)
---
function VOICE.SetSpeaking(state) end

---[CLIENT] Updates the voice battery
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L554)
---
---@package
function VOICE.Tick() end

---[CLIENT] Refreshes and applies the preferred volume and mute state for a player's voice.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_voice.lua#L482)
---
function VOICE.UpdatePlayerVoiceVolume(ply) end
