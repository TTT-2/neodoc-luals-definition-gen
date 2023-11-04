---@meta

util = {}

---[CLIENT] Clears all existing decals on the map
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_decal.lua#L71)
---
function util.ClearDecals() end

---[CLIENT] Adds a new decal with an unique id that can be removed with this id
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_decal.lua#L32)
---
---@param id number The unique id of this specific decal
---@param name string The name of this decal type to be rendered
---@param startpos Vector The start of the trace
---@param endpos Vector The end of the trace
---@param filter Entity If set, the decal will not be able to be placed on given entity. Can also be a table of entities
---@return string #The unique id of the decal
function util.DecalRemovable(id, name, startpos, endpos, filter) end

---[CLIENT] Draws a filtered textured rectangle / image / icon
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L619)
---
---@deprecated
function util.DrawFilteredTexturedRect(x, y, w, h, material, alpha, col) end

---[CLIENT] Creates a @{string} based on the given health and maxhealth
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L562)
---
function util.HealthToString(health, maxhealth) end

---[CLIENT] Checks whether a given position is on screen
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L549)
---
---@param scrpos table table with x and y attributes
function util.IsOffScreen(scrpos) end

---[CLIENT] Creates a @{string} based on the given karma and the ttt_karma_max cvar
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L591)
---
function util.KarmaToString(karma) end

---[CLIENT] Removed one specific decal by its id
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_decal.lua#L54)
---
---@param id string The unique id of the decal that should be removed
function util.RemoveDecal(id) end

---[SERVER] Clears all existing decals on the map
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_decal.lua#L181)
---
---@param playerlist Entity If set, it defines which player will see the decal removal; visible to all players if not set
function util.ClearDecals(playerlist) end

---[SERVER] Adds a new decal with an unique id that can be removed with this id
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_decal.lua#L138)
---
---@param id number The unique id of this specific decal
---@param name string The name of this decal type to be rendered
---@param startpos Vector The start of the trace
---@param endpos Vector The end of the trace
---@param filter Entity If set, the decal will not be able to be placed on given entity. Warning: Must be a table on the server
---@param playerlist Entity If set, it defines which player will see the decal; visible to all players if not set
function util.DecalRemovable(id, name, startpos, endpos, filter, playerlist) end

---[SERVER] Removed one specific decal by its id
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_decal.lua#L166)
---
---@param id string The unique id of the decal that should be removed
---@param playerlist Entity If set, it defines which player will see the decal removal; visible to all players if not set
function util.RemoveDecal(id, playerlist) end

---[SHARED] Useful default behaviour for semi-modal DFrames
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L350)
---
function util.BasicKeyHandler(pnl, kc) end

---[SHARED] Sets the bit of a given value
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L396)
---
function util.BitSet(val, bit2) end

---[SHARED] Uppercases the first character only.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L478)
---
function util.Capitalize(str) end

---[SHARED] Returns the complementary value of a @{Color}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L231)
---
---@param color Color The original color value
---@return Color #The complementary color
function util.ColorComplementary(color) end

---[SHARED] Darkens a given @{Color} value
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L183)
---
---@param color Color The original color value
---@param value number The value to darken the color [0..255]
---@return Color #The darkened color
function util.ColorDarken(color, value) end

---[SHARED] Lightens a given @{Color} value
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L200)
---
---@param color Color The original color value
---@param value number The value to lighten the color [0..255]
---@return Color #The lightened color
function util.ColorLighten(color, value) end

---[SHARED] Adds a new decal that can be removed with the autogenerated unique id
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_decal.lua#L201)
---
---@param name string The name of this decal type to be rendered
---@param startpos Vector The start of the trace
---@param endpos Vector The end of the trace
---@param filter Entity If set, the decal will not be able to be placed on given entity. Warning: Must be a table on the server
---@param playerlist table A list of @{Player}s that should receive the decals
---@return string #The unique id of the decal
function util.Decal(name, startpos, endpos, filter, playerlist) end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L531)
---
---@param ply Player The player who might be editing
---@return boolean #Returns if an editing mode is active
function util.EditingModeActive(ply) end

---[SHARED] Creates a destruction sound on a given position
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L335)
---
function util.EquipmentDestroyed(pos) end

---[SHARED] Returns a activecolor which is just a lightened or darkened color based on the sourcecolor
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L283)
---
---@param color Color The original color
---@return Color #The color based on the original color
function util.GetActiveColor(color) end

---[SHARED] Returns a list of all alive @{Player}s
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L114)
---
function util.GetAlivePlayers() end

---[SHARED] Returns the darkened or lightened color by the specified value
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L259)
---
---@param color Color The original color
---@param value number The amount to change
---@return Color #The color based on the original color
function util.GetChangedColor(color, value) end

---[SHARED] Returns white or black @{Color} based on the passed color value
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L245)
---
---@param color Color background color
---@return Color #The color based on the background color
function util.GetDefaultColor(color) end

---[SHARED] Returns the file name by removing the file ending.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L466)
---
---@param name string The file name with file ending
---@return string #The file name without file ending
function util.GetFileName(name) end

---[SHARED] Returns a list of all @{Player}s filtered by a custom filter
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L92)
---
---@param filterFn function the filter function
function util.GetFilteredPlayers(filterFn) end

---[SHARED] Returns a hovercolor which is just a lightened or darkened color based on the sourcecolor
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L273)
---
---@param color Color The original color
---@return Color #The color based on the original color
function util.GetHoverColor(color) end

---[SHARED] Returns the next available @{Player} based on the given @{Player} in the global list
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L134)
---
function util.GetNextAlivePlayer(ply) end

---[SHARED] Returns the previous available @{Player} based on the given @{Player} in the global list
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L158)
---
function util.GetPreviousAlivePlayer(ply) end

---[SHARED] Includes a file for a client
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L408)
---
---@param file string path
function util.IncludeClientFile(file) end

---[SHARED] Checks if the provided team is an evil team. By default all non innocents that aren't `TEAM_NONE` are included.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L487)
---
---@param team string The team that should be tested
---@return boolean #Returns if a team is evil
function util.IsEvilTeam(team) end

---[SHARED] When overwriting a gamefunction, the old one has to be cached in order to still use it. This creates an infinite recursion problem (stack overflow). Registering the function with this helper function fixes the problem.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L447)
---
---@param name string The name of the original function
---@return function #The pointer to the original functions
function util.OverwriteFunction(name) end

---[SHARED] Paints an decal effect on the floor while also automatically calculating the colliding surface and position. It searches for a target up to 256 away. This function also only traces a line to the bottom, not in a sphere.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_decal.lua#L214)
---
---@param start Vector The starting position of the trace
---@param effname string The decal effect name
---@param ignore Entity If set, the decal will not be able to be placed on given entity. Warning: Must be a table on the server and functions here are very slow in general.
function util.PaintDown(start, effname, ignore) end

---[SHARED] Paints an decal effect on the floor while also automatically calculating the colliding surface and position. It searches for a target up to 256 away. This function also only traces a line to the bottom, not in a sphere. The decal effect can be removed again with the passed unique id.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_decal.lua#L235)
---
---@param id number The unique id of this specific decal
---@param start Vector The starting position of the trace
---@param effname string The decal effect name
---@param ignore Entity If set, the decal will not be able to be placed on given entity. Warning: Must be a table on the server and functions here are very slow in general.
function util.PaintDownRemovable(id, start, effname, ignore) end

---[SHARED] Just for compatibility. All in all, a useless functions (hook.Remove already ignores not existing hooks automatically)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L365)
---
---@param event string name of the hook event
---@param name string unique name of the specific event hook
---@deprecated
function util.SafeRemoveHook(event, name) end

---[SHARED] Like @{string.FormatTime} but simpler (and working), always a string, no hour support
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L422)
---
function util.SimpleTime(seconds, fmt) end

---[SHARED] Something hurt us, start bleeding for a bit depending on the amount
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L303)
---
function util.StartBleeding(ent, dmg, t) end

---[SHARED] Stops the bleeding effect
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L325)
---
function util.StopBleeding(ent) end

---[SHARED] Adjusts a numeric value from one range to a different one in a relative transformation.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L518)
---
---@param value number The value that should be mapped
---@param minValue number The minimum value that 'value' can have
---@param maxValue number The maximum value that 'value' can have
---@param minTargetValue number The minimum value that the mapped value can have
---@param maxTargetValue number The maximum value that the mapped value can have
function util.TransformToRange(value, minValue, maxValue, minTargetValue, maxTargetValue) end

---[SHARED] Checks whether a given vector is in bounds of the two other vectors.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L504)
---
---@param vec Vector The vector that is checked
---@param lowerBound Vector The lower bound vector
---@param upperBound Vector The upper bound vector
---@return boolean #Returns true if the vector is bounded
function util.VectorInBounds(vec, lowerBound, upperBound) end

---[SHARED] Gets the table for a SWEP or a weapon-SENT (throwing knife), so not equivalent to @{weapons.Get}. Do not modify the table returned by this, consider as read-only.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L70)
---
---@param class string of a @{Weapon}
function util.WeaponForClass(class) end

---[SHARED] Attempts to get the weapon used from a DamageInfo instance needed because the GetAmmoType value is useless and inflictor isn't properly set (yet)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L38)
---
function util.WeaponFromDamage(dmg) end

---[SHARED] Just a noop @{function} that is doing NOTHING
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L376)
---
function util.noop() end

---[SHARED] Just a passthrough @{function} that is doing NOTHING but returning the given value
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/util.lua#L386)
---
---@return any #the same as the given x
function util.passthrough(x) end
