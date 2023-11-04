---@meta

door = {}

---[SERVER] Called in @{GM:AcceptInput} when a map I/O event occurs.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L499)
---
---@param ent Entity Entity that receives the input
---@param input string The input name. Is not guaranteed to be a valid input on the entity.
---@param activator Entity Activator of the input
---@param caller Entity Caller of the input
---@param data any Data provided with the input
---@return boolean #Return true to prevent this input from being processed.
---@package
function door.AcceptInput(ent, input, activator, caller, data) end

---[SERVER] Returns if a door autocloses after some time by reading out the internal variable.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L322)
---
---@param ent Entity The door entity that should be checked
---@return boolean #Returns if the door autocloses after some time
---@package
function door.AutoCloses(ent) end

---[SERVER] Handles the damage of doors that are still in the wall. Called in @{GM:EntityTakeDamage}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L430)
---
---@param ent Entity The entity that is damaged
---@param dmginfo CTakeDamageInfo The damage info object
---@param surpressPair boolean Should the call of the other door (if in a pair) be omitted?
---@package
function door.HandleDamage(ent, dmginfo, surpressPair) end

---[SERVER] Handles the door desctruction particles of a given door.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L477)
---
---@param ent Entity The entity that is destroxed
---@package
function door.HandleDestruction(ent) end

---[SERVER] Handles the damage of doors that are lying as props on the ground. Called in @{GM:EntityTakeDamage}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L460)
---
---@param ent Entity The entity that is damages
---@param dmginfo CTakeDamageInfo The damage info object
---@package
function door.HandlePropDamage(ent, dmginfo) end

---[SERVER] Returns if a door is destructible by reading out the internal variable.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L340)
---
---@param ent Entity The door entity that should be checked
---@return boolean #Returns if the door is destructible
---@package
function door.IsDestructible(ent) end

---[SERVER] Returns if a door is open by reading out the internal variable.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L267)
---
---@param ent Entity The door entity that should be checked
---@return boolean #Returns if the door is open
---@package
function door.IsOpen(ent) end

---[SERVER] Returns if touching a door opens it by reading out the internal variable.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L303)
---
---@param ent Entity The door entity that should be checked
---@return boolean #Returns if the door opens by a player touch
---@package
function door.PlayerCanTouch(ent) end

---[SERVER] Returns if a player can use interact with a door by reading out the internal variable.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L285)
---
---@param ent Entity The door entity that should be checked
---@return boolean #Returns if the door reacts to a player use
---@package
function door.PlayerCanUse(ent) end

---[SERVER] Sets if a door autocloses by setting the internal variable.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L402)
---
---@param ent Entity The door entity that should be checked
---@param state boolean The new autoclose state
---@package
function door.SetAutoClose(ent, state) end

---[SERVER] Sets if a player can touch interact with a door by setting the internal variable.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L383)
---
---@param ent Entity The door entity that should be checked
---@param state boolean The new player touch state
---@package
function door.SetPlayerCanTouch(ent, state) end

---[SERVER] Sets if a player can use interact with a door by setting the internal variable.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L358)
---
---@param ent Entity The door entity that should be checked
---@param state boolean The new player use state
---@package
function door.SetPlayerCanUse(ent, state) end

---[SERVER] Setting up all doors found on a map, this is done on every map reset (on prepare round)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L154)
---
---@package
function door.SetUp() end

---[SHARED] Returns all valid door entities found on a map
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L256)
---
---@return table #A table of door entities
function door.GetAll() end

---[SHARED] Returns all valid door entity class names
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L230)
---
---@return table #A table of door class names
function door.GetValid() end

---[SHARED] Returns if a passed door class is a valid normal door (prop_door_rotating)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L239)
---
---@param cls string The class name of the door entity
---@return boolean #True if it is a valid normal door
function door.IsValidNormal(cls) end

---[SHARED] Returns if a passed door class is a valid special door (func_door, func_door_rotating)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/door.lua#L248)
---
---@param cls string The class name of the door entity
---@return boolean #True if it is a valid special door
function door.IsValidSpecial(cls) end
