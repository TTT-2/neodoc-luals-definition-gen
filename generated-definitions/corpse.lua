---@meta

CORPSE = {}

---[SERVER] Creates client or server ragdoll depending on settings
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_corpse.lua#L539)
---
---@return Entity #the CORPSE
function CORPSE.Create(ply, attacker, dmginfo) end

---[SERVER] Returns the death time (@{CurTime()}) of the ragdoll's player.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_corpse.lua#L655)
---
---@param rag Entity The ragdoll
---@return number #The death time, 0 if the ragdol is not valid
function CORPSE.GetPlayerDeathTime(rag) end

---[SERVER] Returns the role of the ragdoll's player.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_corpse.lua#L673)
---
---@param rag Entity The ragdoll
---@return number #The role, @{ROLE_INNOCENT} if the ragdol is not valid
function CORPSE.GetPlayerRole(rag) end

---[SERVER] Returns the SteamID64 of a ragdoll's player.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_corpse.lua#L664)
---
---@param rag Entity The ragdoll
---@return string #The SteamID64, "" if the ragdol is not valid
function CORPSE.GetPlayerSID64(rag) end

---[SERVER] Returns the team of the ragdoll's player.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_corpse.lua#L682)
---
---@param rag Entity The ragdoll
---@return string #The team, @{TEAM_INNOCENT} if the ragdol is not valid
function CORPSE.GetPlayerTeam(rag) end

---[SERVER] Sets a CORPSE amount of credits
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_corpse.lua#L70)
---
function CORPSE.SetCredits(rag, credits) end

---[SERVER] Sets a CORPSE found state
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_corpse.lua#L41)
---
function CORPSE.SetFound(rag, state) end

---[SERVER] Sets a CORPSE owner's nick name
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_corpse.lua#L51)
---
function CORPSE.SetPlayerNick(rag, ply_or_name) end

---[SERVER] Send a usermessage to client containing search results.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_corpse.lua#L299)
---
---@param ply Player The player that is inspection the ragdoll
---@param rag Entity The ragdoll that is inspected
---@param isCovert boolean Is the search hidden
---@param isLongRange boolean Is the search performed from a long range
function CORPSE.ShowSearch(ply, rag, isCovert, isLongRange) end

---[SERVER] Checks if the ragdoll of a player was headshot.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_corpse.lua#L646)
---
---@param rag Entity The ragdoll
---@return boolean #Returns if the player was headshot
function CORPSE.WasHeadshot(rag) end

---[SHARED] Returns the amount of credits which are stored in the CORPSE
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_corpse.lua#L55)
---
function CORPSE.GetCredits(rag, default) end

---[SHARED] Returns whether a @{CORPSE} was found already
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_corpse.lua#L25)
---
function CORPSE.GetFound(rag, default) end

---[SHARED] Returns the owner of a CORPSE
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_corpse.lua#L68)
---
---@return Player #owner
function CORPSE.GetPlayer(rag) end

---[SHARED] Returns the @{Player}'s nickname of the CORPSE
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_corpse.lua#L35)
---
function CORPSE.GetPlayerNick(rag, default) end

---[SHARED] Checks if a ragdoll belongs to a player. Because ragdolls can also be used for props (e.g. a mattress).
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_corpse.lua#L82)
---
---@param rag Entity The ragdoll
---@return boolean #Returns if the ragdoll is valid
function CORPSE.IsValidBody(rag) end
