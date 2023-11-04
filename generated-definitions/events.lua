---@meta

events = {}

---[SERVER] Streams the whole event table to all clients, usually done after the round ended.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/events.lua#L157)
---
---@package
function events.StreamToClients() end

---[SERVER] This function is called in @{GM:TTTEndRound} and updates the scores and kills of every player in the scoreboard.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/events.lua#L173)
---
---@package
function events.UpdateScoreboard() end

---[SHARED] Returns the reference to a copy of the table of the event.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/events.lua#L40)
---
---@param name string The name identifer of the event
---@return table #The reference to the copied event table
function events.Create(name) end

---[SHARED] Checks if an event with this ID is registered in the event list.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/events.lua#L49)
---
---@param name string The name identifer of the event
---@return boolean #Returns true if an event of this name exists
function events.Exist(name) end

---[SHARED] Returns the reference to a table of the event.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/events.lua#L31)
---
---@param name string The name identifer of the event
---@return table #The reference to the event table
function events.Get(name) end

---[SHARED] Returns a table of all available events.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/events.lua#L22)
---
---@return table #A table of all events
function events.GetAll() end

---[SHARED] Generates an event list in the deprecated format. Only contains events that were present in default TTT. Is sorted by time.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/events.lua#L97)
---
---@return table #The deprecated event list
function events.GetDeprecatedEventList() end

---[SHARED] Returns the events in a timed order.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/events.lua#L116)
---
---@return table #The event list.
function events.GetEventList() end

---[SHARED] Resets the managed event list. Usually executed after the end of the round end timer.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/events.lua#L57)
---
---@package
function events.Reset() end

---[SHARED] Returns an event list that is sorted per player and event. This means that the first layer of this table consists of the player steamIDs and the second layer of the event identifiers. The third layer is an idexed list with the references to the events that satisfy the data from the first two layers.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/events.lua#L68)
---
---@return table #A table with the reordered events
function events.SortByPlayerAndEvent() end
