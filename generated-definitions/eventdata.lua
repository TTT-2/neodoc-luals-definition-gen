---@meta

eventdata = {}

---[SHARED] Returns a table with all players that were present at the beginning of the round while also providing their team and their role at this time.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/eventdata.lua#L41)
---
---@return table #A table with the nick, sid64, role and team of each player
function eventdata.GetPlayerBeginRoles() end

---[SHARED] Returns a table with all players that were present at the end of the round while also providing their team and their role at this time.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/eventdata.lua#L58)
---
---@return table #A table with the nick, sid64, alive, role and team of each player
function eventdata.GetPlayerEndRoles() end

---[SHARED] Lists all events that grant karma to players. Sorts them by steamID64s.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/eventdata.lua#L170)
---
---@return table #Returns a table of all karma events per player
function eventdata.GetPlayerKarma() end

---[SHARED] Returns a table with the steamID64 of the player in the first layer that has all role changes per player included
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/eventdata.lua#L75)
---
---@return table #A table with all rolechanges per player, each entry contains the new role and the new team
function eventdata.GetPlayerRoles() end

---[SHARED] Lists all events that grant scores to players. Sorts them by steamID64s.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/eventdata.lua#L116)
---
---@return table #Returns a table of all scored events per player
function eventdata.GetPlayerScores() end

---[SHARED] Returns a table with the player steamID64 as indexes and a number of deaths for this specific player.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/eventdata.lua#L19)
---
---@return table #A table with the amounts of deaths per player
function eventdata.GetPlayerTotalDeaths() end

---[SHARED] Returns a table with the player steamID64 as indexes and the karma for this specific player.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/eventdata.lua#L193)
---
---@return table #A table with the karma per player
function eventdata.GetPlayerTotalKarma() end

---[SHARED] Returns a table with the player steamID64 as indexes and the score for this specific player.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/eventdata.lua#L145)
---
---@return table #A table with the score per player
function eventdata.GetPlayerTotalScores() end
