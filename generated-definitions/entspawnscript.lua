---@meta

entspawnscript = {}

---[CLIENT] Clears the local spawn point table cache.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L643)
---
function entspawnscript.ClearLocalCache() end

---[CLIENT] Returns the table with the focused spawn data.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L620)
---
---@return table #Returns the focused spawn data table
function entspawnscript.GetFocusedSpawn() end

---[CLIENT] Returns the spawn info entity that is used for all spawn points in targetID.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L636)
---
---@return Entity #Returns the spawn info entity
function entspawnscript.GetSpawnInfoEntity() end

---[CLIENT] Sets the focused spawn point to be used elsewhere (like in targetID).
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L603)
---
---@param spawnType number The type of the spawn, set to nil to reset
---@param entType number The specific entity type for the specific spawn type
---@param id number The unique ID of the spawn point
---@param spawn table The spawn point data table
function entspawnscript.SetFocusedSpawn(spawnType, entType, id, spawn) end

---[CLIENT] Sets the spawn info entity that is used for all spawn points in targetID.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L628)
---
---@param ent Entity The spawn info entity
function entspawnscript.SetSpawnInfoEntity(ent) end

---[SERVER] Checks wether a file for the currently selected map exists.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L330)
---
---@param dir string The directory where the file is expected
---@return boolean #Returns true if the spawnn script already exists
function entspawnscript.Exists(dir) end

---[SERVER] Returns a list of all players that currently are in the spawn editing mode.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L458)
---
---@return table #Returns an indexed table of all players currently editing the spawn points
function entspawnscript.GetEditingPlayers() end

---[SERVER] Gets a list of all players that should receive a spawn point update. These are all editing players besides the player that made the change.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L468)
---
---@param ply Player The player that made the change
---@return table #An indexed list with all receiving players
function entspawnscript.GetReceivingPlayers(ply) end

---[SERVER] Returns a specific setting defined by the key.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L394)
---
---@param key string The key of the requested setting
---@return number #The setting value
function entspawnscript.GetSetting(key) end

---[SERVER] Returns the table of all currently defined settings.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L385)
---
---@return table #The settings table
function entspawnscript.GetSettings() end

---[SERVER] Initializes the map and generates all spawn points from the old weaponspawnscripts. This does not save those values automatically, but returns the data to be saved.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L211)
---
---@return table #A table with the default spawn points provided by the map
function entspawnscript.InitOldWeaponSpawnScript() end

---[SERVER] Called when the entities on the map are available and the spawn entities can be read..
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L159)
---
function entspawnscript.OnLoaded() end

---[SERVER] Reads the spawn file and returns the read data.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L356)
---
---@param dir string The directory where the file is expected
---@return table #The table with the data read from the file
---@package
function entspawnscript.ReadFile(dir) end

---[SERVER] Reads the settings file on the server. Returns a table with the read data.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L291)
---
---@return table #The settings table
function entspawnscript.ReadSettingsFile() end

---[SERVER] Reads the spawn point file on the server. Returns a table with the read data.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L271)
---
---@return table #The spawn point table
function entspawnscript.ReadSpawnFile() end

---[SERVER] Reloads the spawn points from either the spawn files or from the defaults. Is mostly used after switching from classic TTT weapon spawns to dynamic TTT2 weapons spawns.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L573)
---
function entspawnscript.ReloadSpawns() end

---[SERVER] Removes the spawn file of the current map and returns if it existed
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L371)
---
---@param dir string The directory where the file is expected
---@return boolean #if the file existed and was therefore successfully deleted
---@package
function entspawnscript.RemoveFile(dir) end

---[SERVER] Removes the settings file from the settings file directory
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L305)
---
function entspawnscript.RemoveSettingsFile() end

---[SERVER] Removes the spawn file from the spawn file directory.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L298)
---
function entspawnscript.RemoveSpawnFile() end

---[SERVER] Saves the current map state as default map state in memory only
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L195)
---
function entspawnscript.SaveMapStateAsDefault() end

---[SERVER] Sets the player editing state and syncs it to the client. Also, when setting the state to true, the current spawn types are synced to the client.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L430)
---
---@param ply Player The playser whose state should be changed
---@param state boolean The new editing state
function entspawnscript.SetEditing(ply, state) end

---[SERVER] Sets the whole settings table to the provided table
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L402)
---
---@param settings table The new settings table
function entspawnscript.SetSettings(settings) end

---[SERVER] Sets the spawn point list.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L652)
---
---@param spawnPoints table The new spawnPoints table
function entspawnscript.SetSpawns(spawnPoints) end

---[SERVER] Proxy function to directly set the `blacklisted` setting to disable custom spawns for the currently loaded map.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L411)
---
---@param Set boolean to true if custom spawns should be used
function entspawnscript.SetUseCustomSpawns(Set) end

---[SERVER] Checks whether a settings file for the current map exists.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L321)
---
---@return boolean #Returns true if a settings file exists
function entspawnscript.SettingsFileExists() end

---[SERVER] Returns if the currently selected map should use custom spawns. Takes the map specific setting `blacklisted` and the convar `ttt_use_weapon_spawn_scripts` into consideration.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L420)
---
---@return boolean #Returns true if custom spawns should be used for the map
function entspawnscript.ShouldUseCustomSpawns() end

---[SERVER] Checks whether a spawn file for the current map exists.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L313)
---
---@return boolean #Returns true if a spawn file exists
function entspawnscript.SpawnFileExists() end

---[SERVER] Transmits the settings and the spawn point amount to the provided player. This function is called in @{GM:TTT2PlayerReady}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L561)
---
---@param ply Player The player who should receive the update
function entspawnscript.TransmitToPlayer(ply) end

---[SERVER] Updates the settings file if some map settings were changed on the server.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L262)
---
function entspawnscript.UpdateSettingsFile() end

---[SERVER] Updates the map settings for the provided players. If no player table is provided, the update is done on all clients.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L487)
---
---@param plys table A table of players that should be updated
function entspawnscript.UpdateSettingsOnClients(plys) end

---[SERVER] Updates the amount of spawns for the provided players. If no player table is provided, the update is done on all clients.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L508)
---
---@param plys table A table of players that should be updated
function entspawnscript.UpdateSpawnCountOnClients(plys) end

---[SERVER] Updates the spawn file. Used to save changes done in the spawn editor.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L242)
---
function entspawnscript.UpdateSpawnFile() end

---[SERVER] Writes the spawn script data to the disc. Is used for the initial file, the default data and to save changes done to the spawn data.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L344)
---
---@param dir string The directory where the file is expected
---@param dataTable table The table with the data that should be stored
---@package
function entspawnscript.WriteFile(dir, dataTable) end

---[SHARED] Adds a new spawn point to the spawn type table. If enabled, it is automatically synced to the server / client.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L883)
---
---@param spawnType number The spawn type of the spawn that should be added
---@param entType number The entity type of the spawn that should be added
---@param pos Vector The position vector of the spawn that should be added
---@param ang Angle The angle of the spawn that should be added
---@param ammo number The amount of ammo of the spawn that should be added, only relevant to weapon spawns
---@param shouldSync boolean Set to true if it should be synced, set to false if it shouldn't
---@param ply Player The player that attempts to add the spawn. Only relevant if synced from the server to the client for net performance reasons
function entspawnscript.AddSpawn(spawnType, entType, pos, ang, ammo, shouldSync, ply) end

---[SHARED] Deletes all spawn points on the map. Automatically syncs between client and server.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L977)
---
function entspawnscript.DeleteAllSpawns() end

---[SHARED] Returns the color for a specific spawnType.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L745)
---
---@param spawnType number The type of the spawn
---@return Color #Returns the color for the spawn type
function entspawnscript.GetColorFromSpawnType(spawnType) end

---[SHARED] Returns a copy of the general spawn table structure. This is used for initialization of this table.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L1076)
---
---@return table #An empty spawn table
function entspawnscript.GetEmptySpawnTableStructure() end

---[SHARED] Returns a list of entity types for a given spawn type. Can exclude some predefined entity types.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L766)
---
---@param spawnType number The specidic spawn type
---@param excludeTypes table A key-boolean table with the excluded types
---@return table #Returns an indexed table with the available entity Types
function entspawnscript.GetEntTypeList(spawnType, excludeTypes) end

---[SHARED] Returns the icon material for a specific spawnType/entType combination.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L755)
---
---@param spawnType number The type of the spawn
---@param entType number The specific entity type for the specific spawn type
---@return Material #Returns the icon material
function entspawnscript.GetIconFromSpawnType(spawnType, entType) end

---[SHARED] Returns the language identifier for a specific spawnType/entType combination.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L726)
---
---@param spawnType number The type of the spawn
---@param entType number The specific entity type for the specific spawn type
---@return string #Returns the language identifer
function entspawnscript.GetLangIdentifierFromSpawnType(spawnType, entType) end

---[SHARED] A compatibility feature for the weapon spawn type definition via the weapon kind. Is used as a default value if undefined.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L805)
---
---@param kind number The weapon kind
---@return number #The weapon spawn type assosiated with a weapon kind
function entspawnscript.GetSpawnTypeFromKind(kind) end

---[SHARED] Returns a indexed table with all available spawn type / entity type combinations.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L784)
---
---@return table #An indexed table with all available spawn type / entity type combinations
function entspawnscript.GetSpawnTypeList() end

---[SHARED] Returns an indexed table of all available spawn types.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L716)
---
---@return table #An indexed table of all spawn types
function entspawnscript.GetSpawnTypes() end

---[SHARED] Returns a table sorted by spawn types and ent types with indexed tables as sub tables with all spawn points defined on the map.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L814)
---
---@return table #A table with all spawns
function entspawnscript.GetSpawns() end

---[SHARED] Returns a table sorted by end types with indexed tables as sub tables with all spawn points defined on the map.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L824)
---
---@param spawnType number The spawn type
---@return table #A table with all spawns
function entspawnscript.GetSpawnsForSpawnType(spawnType) end

---[SHARED] Returns the storage var name for a specific spawnType/entType combination.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L736)
---
---@param spawnType number The type of the spawn
---@param entType number The specific entity type for the specific spawn type
---@return string #Returns the storage variable name
function entspawnscript.GetVarNameFromSpawnType(spawnType, entType) end

---[SHARED] Checks wether a given player is currently editing spawn points.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L708)
---
---@param ply Player The player who might be editing
---@return boolean #Returns true if the player is editing
function entspawnscript.IsEditing(ply) end

---[SHARED] Removes a specific spawn point from the spawn table. If enabled, it is automatically synced to the server / client.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L840)
---
---@param spawnType number The spawn type of the spawn that should be removed
---@param entType number The entity type of the spawn that should be removed
---@param id number The numeric id of the spawn that should be removed
---@param shouldSync boolean Set to true if it should be synced, set to false if it shouldn't
---@param ply Player The player that attempts to delete the spawn. Only relevant if synced from the server to the client for net performance reasons
function entspawnscript.RemoveSpawnById(spawnType, entType, id, shouldSync, ply) end

---[SHARED] Call to reset the map to its default state. Can be called on the server and the client as it is automatically synced.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L1045)
---
function entspawnscript.ResetMapToDefault() end

---[SHARED] Updates a map specific setting. If called on the client, it will be automatically networked to the server. It then is stored on the server and updated on all connected clients.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L664)
---
---@param key string The key where the setting will be stored
---@param value number, boolean The value of the setting
---@param omitSaving boolean If set to true, the setting will not be saved
function entspawnscript.SetSetting(key, value, omitSaving) end

---[SHARED] Called when a player starts the spawn editing mode. Sets everything up needed for the spawn editing. Can be called on client or server, it is automatically synced.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L998)
---
---@param ply Player The player that starts editing; only relevant on the server
function entspawnscript.StartEditing(ply) end

---[SHARED] Called when a player stops the spawn editing mode. Resets everything changed by the spawn editing. Can be called on client or server, it is automatically synced.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L1025)
---
---@param ply Player The player that stops editing; only relevant on the server
function entspawnscript.StopEditing(ply) end

---[SHARED] Updates an existing spawn point in the spawn point table. Does nothing if the spawn point does not exist. If enabled, it is automatically synced to the server / client.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entspawnscript.lua#L937)
---
---@param spawnType number The spawn type of the spawn that should be updated
---@param entType number The entity type of the spawn that should be updated
---@param id number The numeric id of the spawn that should be removed
---@param pos Vector The position vector of the spawn that should be updated
---@param ang Angle The angle of the spawn that should be updated
---@param ammo number The amount of ammo of the spawn that should be updated, only relevant to weapon spawns
---@param shouldSync boolean Set to true if it should be synced, set to false if it shouldn't
---@param ply Player The player that attempts to add the spawn. Only relevant if synced from the server to the client for net performance reasons
function entspawnscript.UpdateSpawn(spawnType, entType, id, pos, ang, ammo, shouldSync, ply) end
