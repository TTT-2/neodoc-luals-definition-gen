---@meta

---@class Entity
Entity = {}

---[SERVER] Closes a door.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L198)
---
---@param ply Player The player that will be passed through as the activator
---@param data string Optional data that can be passed through
---@param delay number The delay until the event is fired
---@param surpressPair boolean Should the call of the other door (if in a pair) be omitted?
function entmeta:CloseDoor(ply, data, delay, surpressPair) end

---[SERVER] Returns if a door is currently transitioning between beeing opened and closed
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L373)
---
---@return boolean #The door state; true: open, false: close, nil: no valid door
function entmeta:DoorIsTransitioning() end

---[SERVER] Returns the @{Entity}'s damge owner
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_entity.lua#L25)
---
function entmeta:GetDamageOwner() end

---[SERVER] Checks if the given entity can be passed by players.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_entity.lua#L45)
---
---@return boolean #Returns if the entity is passable
function entmeta:HasPassableCollisionGrup() end

---[SERVER] Returns whether an @{Entity} is explosive
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_entity.lua#L35)
---
function entmeta:IsExplosive() end

---[SERVER] Locks a door.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L144)
---
---@param ply Player The player that will be passed through as the activator
---@param data string Optional data that can be passed through
---@param delay number The delay until the event is fired
---@param surpressPair boolean Should the call of the other door (if in a pair) be omitted?
function entmeta:LockDoor(ply, data, delay, surpressPair) end

---[SERVER] Sets the state if a door is destructible.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L280)
---
---@param state boolean The new state
---@param surpressPair boolean Should the call of the other door (if in a pair) be omitted?
function entmeta:MakeDoorDestructable(state, surpressPair) end

---[SERVER] Opens the door.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L180)
---
---@param ply Player The player that will be passed through as the activator
---@param data string Optional data that can be passed through
---@param delay number The delay until the event is fired
---@param surpressPair boolean Should the call of the other door (if in a pair) be omitted?
function entmeta:OpenDoor(ply, data, delay, surpressPair) end

---[SERVER] Destroys a door in a safe manner. This means the door will be removed and spawned a prop. Furthermore it makes sure that the door will not leave a unrendered room behind (problems with area portals). If it is a double door, both doors will be destroyed by default.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L307)
---
---@param ply Player The player that wants to destroy the door
---@param pushForce Vector The push force for the door
---@param surpressPair boolean Should the call of the other door (if in a pair) be omitted?
---@return Entity #Returns the entity of the created prop
function entmeta:SafeDestroyDoor(ply, pushForce, surpressPair) end

---[SERVER] Sets the @{Entity}'s damage owner and the current time
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_entity.lua#L16)
---
function entmeta:SetDamageOwner(ply) end

---[SERVER] Sets the state if a door closes automatically.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L264)
---
---@param state boolean The new state
---@param surpressPair boolean Should the call of the other door (if in a pair) be omitted?
function entmeta:SetDoorAutoCloses(state, surpressPair) end

---[SERVER] Sets the state if a door can be opened on touch.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L232)
---
---@param state boolean The new state
---@param surpressPair boolean Should the call of the other door (if in a pair) be omitted?
function entmeta:SetDoorCanTouchOpen(state, surpressPair) end

---[SERVER] Sets the state if a door can be opened on use.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L248)
---
---@param state boolean The new state
---@param surpressPair boolean Should the call of the other door (if in a pair) be omitted?
function entmeta:SetDoorCanUseOpen(state, surpressPair) end

---[SERVER] Initializes the entity and starts its networking. If called on a player, it will respawn them.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_entity.lua#L56)
---
function entmeta:Spawn() end

---[SERVER] Toggles a door between open and closed.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L216)
---
---@param ply Player The player that will be passed through as the activator
---@param data string Optional data that can be passed through
---@param delay number The delay until the event is fired
---@param surpressPair boolean Should the call of the other door (if in a pair) be omitted?
function entmeta:ToggleDoor(ply, data, delay, surpressPair) end

---[SERVER] Unlocks a door.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L162)
---
---@param ply Player The player that will be passed through as the activator
---@param data string Optional data that can be passed through
---@param delay number The delay until the event is fired
---@param surpressPair boolean Should the call of the other door (if in a pair) be omitted?
function entmeta:UnlockDoor(ply, data, delay, surpressPair) end

---[SHARED] Returns if this door closes automatically after a certain time.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L94)
---
---@return boolean #If the door closes automatically
function entmeta:DoorAutoCloses() end

---[SHARED] Retuens if a door is destructible.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L104)
---
---@return boolean #If a door is destructible
function entmeta:DoorIsDestructible() end

---[SHARED] Returns the fast synced health of the door entity. This is useful for UI applications.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L124)
---
---@return number #The synced health
function entmeta:GetFastSyncedHealth() end

---[SHARED] Returns whether this entity is a door or not.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L28)
---
---@return boolean #Returns true if it is a valid door
function entmeta:IsDoor() end

---[SHARED] Returns if a door is forceclosed, if it forceclosed it will close no matter what.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L53)
---
---@return boolean #The door state; true: forceclosed, false: not forceclosed, nil: no valid door
function entmeta:IsDoorForceclosed() end

---[SHARED] Returns the lock state of a door.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L43)
---
---@return boolean #The door state; true: locked, false: unlocked, nil: no valid door
function entmeta:IsDoorLocked() end

---[SHARED] Returns if a door is open.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L114)
---
---@return boolean #The door state; true: open, false: close, nil: no valid door
function entmeta:IsDoorOpen() end

---[SHARED] Returns if this door can be opened by a player.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L84)
---
---@return boolean #If the door can be opened
function entmeta:PlayerCanOpenDoor() end

---[SHARED] Returns if this door can be opened by close proximity of a player.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L74)
---
---@return boolean #If the door can be opened with proximity
function entmeta:TouchOpensDoor() end

---[SHARED] Returns if this door can be opened with the use key, traitor room doors or doors. opened with a button press can't be opened with the use key for example
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_door.lua#L64)
---
---@return boolean #If the door can be opened with the use key
function entmeta:UseOpensDoor() end
