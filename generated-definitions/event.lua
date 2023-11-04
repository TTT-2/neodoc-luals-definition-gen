---@meta

---@class EVENT
EVENT = {}

---[CLIENT] Generates the textparameters needed for the event timeline
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L266)
---
---@return table #A table of identifier-param pairs
function EVENT:GetText() end

---[SERVER] Adds the event data table to an event. Also adds some generic data as well. Inside this function the hook @{GM:TTT2OnTriggeredEvent} is called to make sure this event should really be added.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L290)
---
---@param event table The event data table that is about to be added
---@return boolean #Return true if addition was successful, false if not
---@package
function EVENT:Add(event) end

---[SERVER] Adds players that are affected by this event.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L277)
---
---@param plys64 table A table of player steamID64
---@param plys table A table of player namees
function EVENT:AddAffectedPlayers(plys64, plys) end

---[SERVER] This function calculates the score gained for this event. It should be overwritten if the event should yield a score.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L351)
---
---@package
function EVENT:CalculateScore() end

---[SERVER] This function generates a table with all the data that should be networked. You probably don't want to overwrite it.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L323)
---
---@return table #A table of the data that is networked
---@package
function EVENT:GetNetworkedData() end

---[SERVER] Checks if this event has synced Karma at all.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L151)
---
---@return boolean #Returns true if there is score added in this event
function EVENT:HasKarma() end

---[SERVER] Checks if this event has score at all.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L143)
---
---@return boolean #Returns true if there is score added in this event
function EVENT:HasScore() end

---[SERVER] Return true if Karma should be synchronized
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L361)
---
---@package
function EVENT:ShouldKarmaChangeSynchronize() end

---[SERVER] This function puts KarmaChanges into event-data 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L370)
---
---@package
function EVENT:SynchronizeKarmaChanges() end

---[SHARED] Returns a list of all player steamID64s who were affected by this event.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L208)
---
---@return table #A table of steamID64s
function EVENT:GetAffectedPlayer64s() end

---[SHARED] Returns a list of all player names who were affected by this event.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L216)
---
---@return table #A table of player names
function EVENT:GetAffectedPlayers() end

---[SHARED] Returns the event data in the deprecated format. Shouldn't be used, is used internally.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L101)
---
---@return nil|table #The event table in the deprecated format
---@package
function EVENT:GetDeprecatedFormat() end

---[SHARED] Returns the whole karma table
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L135)
---
---@return table #The karma table, indexed with sid64
function EVENT:GetKarma() end

---[SHARED] Returns the player's nick name based on their steamID64.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L225)
---
---@param ply64 string The player's steamID64
---@return nil|string #The player's nick name
function EVENT:GetNameFrom64(ply64) end

---[SHARED] Returns a reference to the score of a player.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L89)
---
---@param ply64 string The player's steamID64
---@return table #The score table for the player
function EVENT:GetPlayerScore(ply64) end

---[SHARED] Returns the raw score texts as a table with a `name` and a `score`. The name should be a translation identifier.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L189)
---
---@param ply64 string The player's steamID64
---@return table #A table with the scoring text
function EVENT:GetRawScoreText(ply64) end

---[SHARED] Returns the whole score table
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L127)
---
---@return table #The score table, indexed with sid64
function EVENT:GetScore() end

---[SHARED] Returns a list of all player steamID64s whom have received score in this event.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L159)
---
---@return table #A table of all the steamID64s
function EVENT:GetScoredPlayers() end

---[SHARED] Returns the complete score for the given player in this event. This takes care of events that give score for different things.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L169)
---
---@param ply64 string The steamID64 of the player that should be checked
---@return number #The amount of score gained by this player in this event
function EVENT:GetSummedPlayerScore(ply64) end

---[SHARED] Returns the events time in seconds after round begin
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L256)
---
---@return number #The event time
function EVENT:GetTime() end

---[SHARED] Checks if a given player was was affected by this event.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L238)
---
---@param ply64 string The steamID64 of the player that should be checked
---@return boolean #Returns true if the player was affected by this event.
function EVENT:HasAffectedPlayer(ply64) end

---[SHARED] Checks whether the given player's karma has changed in this event or not.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L119)
---
---@param sid64 string The steamID64 of the player that should be checked
---@return boolean #Returns true if the player has a karma change table
function EVENT:HasPlayerKarma(sid64) end

---[SHARED] Checks whether the given player has scored in this event or not.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L110)
---
---@param ply64 string The steamID64 of the player that should be checked
---@return boolean #Returns true if the player has a score table, they could still have received 0 points
function EVENT:HasPlayerScore(ply64) end

---[SHARED] Used to convert the event data into a printable format.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L248)
---
---@return nil|string #The serialized string
---@package
function EVENT:Serialize() end

---[SHARED] Sets the event data table to the event.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L28)
---
---@param event table The event data table that should be added
---@package
function EVENT:SetEventTable(event) end

---[SHARED] Sets the karma changes data table to the event.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L46)
---
---@param event table The karma changes data table that should be added
---@package
function EVENT:SetKarmaTable(event) end

---[SHARED] Sets the karma changes data table to the event.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L78)
---
---@param sid64 string The steamID64 of the affected player
---@param karma table The karma changes data table that should be set
function EVENT:SetPlayerKarma(sid64, karma) end

---[SHARED] Sets the score data table to the event. If the score is nil, the existing score will be removed for this player.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L67)
---
---@param ply64 string The steamID64 of the affected player
---@param score table The score data table that should be set
function EVENT:SetPlayerScore(ply64, score) end

---[SHARED] Sets the affected players data table to the event.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L56)
---
---@param plys64 table The affected players steamid64s table that should be added
---@param plys table The affected players nick name table that should be added
---@package
function EVENT:SetPlayersTable(plys64, plys) end

---[SHARED] Sets the score data table to the event.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/events/base_event.lua#L37)
---
---@param event table The score data table that should be added
---@package
function EVENT:SetScoreTable(event) end
