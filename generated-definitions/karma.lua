---@meta

KARMA = {}

---[CLIENT] Returns whether the KARMA is enabled
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_karma.lua#L10)
---
function KARMA.IsEnabled() end

---[SERVER] Calculates the damage factor (a @{Player} will do in the next round) based on the KARMA
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L318)
---
function KARMA.ApplyKarma(ply) end

---[SERVER] Apply karma to damage factor for all players
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L525)
---
function KARMA.ApplyKarmaAll() end

---[SERVER] Checks and (if enabled) performs an auto kick if the KARMA is too low
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L697)
---
function KARMA.CheckAutoKick(ply) end

---[SERVER] Checks if there is a player that should be kicked due to low karma. Usually called in @{GM:TTTBeginRound} and @{GM:TTTEndRound}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L599)
---
function KARMA.CheckAutoKickAll() end

---[SERVER] Returns a multiplicator for the KARMA calculations
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L459)
---
function KARMA.DecayedMultiplier(ply) end

---[SERVER] Allows to change the live KARMA from anywhere Use this function only if you want to influence KARMA per event or similar
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L146)
---
function KARMA.DoKarmaChange(ply, amount, reason) end

---[SERVER] Returns the total change in Karma of current round per player
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L216)
---
---@return number #containing absolute karmachange per player
function KARMA.GetAbsoluteKarmaChangeBySteamID64(sid64) end

---[SERVER] Returns the total change in Karma of last round per player
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L234)
---
---@return number #containing absolute karmachange per player
function KARMA.GetAbsoluteOldKarmaChangeBySteamID64(sid64) end

---[SERVER] Compute penalty for hurting someone a certain amount
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L253)
---
---@return number #the amount of KARMA penalty
function KARMA.GetHurtPenalty(victim_karma, dmg) end

---[SERVER] Compute reward for hurting a traitor (when innocent yourself)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L272)
---
---@return number #the amount of KARMA reward
function KARMA.GetHurtReward(dmg) end

---[SERVER] Returns table which contains all current karmachanges until next roundbegin for the given playerID
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L198)
---
---@return table #containing karmachange per reason
function KARMA.GetKarmaChangesBySteamID64(sid64) end

---[SERVER] Compute penalty for killing someone
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L262)
---
---@return number #the amount of KARMA penalty
function KARMA.GetKillPenalty(victim_karma) end

---[SERVER] Compute reward for killing traitor
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L280)
---
---@return number #the amount of KARMA kill reward
function KARMA.GetKillReward() end

---[SERVER] Returns table which contains all karmachanges of last round after roundbegin for the given playerID
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L207)
---
---@return table #containing karmachange per reason
function KARMA.GetOldKarmaChangesBySteamID64(sid64) end

---[SERVER] Gives a @{Player} a KARMA penalty
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L291)
---
function KARMA.GivePenalty(ply, penalty, victim, reason) end

---[SERVER] Gives a @{Player} a KARMA reward
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L306)
---
---@return number #reward modified / reward
function KARMA.GiveReward(ply, reward, reason) end

---[SERVER] Handle karma change due to one player damaging another. Damage must not have been applied to the victim yet, but must have been scaled according to the damage factor of the attacker.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L376)
---
function KARMA.Hurt(attacker, victim, dmginfo) end

---[SERVER] Initializes a @{Player} for the KARMA System
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L613)
---
function KARMA.InitPlayer(ply) end

---[SERVER] Initializes the KARMA System
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L125)
---
---@package
function KARMA.InitState() end

---[SERVER] Returns whether the KARMA System is Initialized
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L134)
---
function KARMA.IsEnabled() end

---[SERVER] Handle karma change due to one player killing another.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L419)
---
function KARMA.Killed(attacker, victim, dmginfo) end

---[SERVER] Sets the amount of stored KARMA of a given @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L671)
---
function KARMA.LateRecallAndSet(ply) end

---[SERVER] Sends a message to a given @{Player} about the current damage factor
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L537)
---
function KARMA.NotifyPlayer(ply) end

---[SERVER] Debugs / Prints all the KARMA stats of each @{Player} of the last round
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L727)
---
function KARMA.PrintAll(printfn) end

---[SERVER] When a new round starts, Live karma becomes Base karma
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L508)
---
function KARMA.Rebase() end

---[SERVER] Returns the amount of stored KARMA of a given @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L652)
---
function KARMA.Recall(ply) end

---[SERVER] Restores the KARMA of a @{Player} if possible
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L629)
---
function KARMA.Remember(ply) end

---[SERVER] Calls @{KARMA.Remember} on every @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L683)
---
function KARMA.RememberAll() end

---[SERVER] Reset the changes and backups table content
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L174)
---
---@package
function KARMA.ResetRoundChanges() end

---[SERVER] Runs the karma related functions on round begin.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L568)
---
function KARMA.RoundBegin() end

---[SERVER] Runs the karma related functions on round end.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L551)
---
function KARMA.RoundEnd() end

---[SERVER] Handle karma regeneration upon the start of a new round
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L484)
---
function KARMA.RoundIncrement() end

---[SERVER] Update / Reset the KARMA System after the previous round ended in prepare round.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L579)
---
function KARMA.RoundPrepare() end

---[SERVER] Saves changes to the live KARMA
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_karma.lua#L159)
---
---@package
function KARMA.SaveKarmaChange(ply, amount, reason) end
