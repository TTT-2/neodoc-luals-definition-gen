---@meta

credits = {}

---[SERVER] This function handles the whole credit awarding for a kill. There are two modes: first the player being awarded for the specific kill and second the player being awarded for a certain percentage of players from other teams being dead.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/credits.lua#L17)
---
---@param victim Player The player that died
---@param attacker Player The player that killed
function credits.HandleKillCreditsAward(victim, attacker) end

---[SERVER] Resets the team states that get set for the credits distributions.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/credits.lua#L124)
---
function credits.ResetTeamStates() end
