---@meta

---@class Player
Player = {}

---[SERVER] Adds an @{ITEM} or a @{Weapon} into the bought list of a @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L299)
---
function plymeta:AddBought(cls) end

---[SERVER] Adds an amount of credits
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L112)
---
function plymeta:AddCredits(amt) end

---[SERVER] Gives a specific @{ITEM} (if possible)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L176)
---
---@package
function plymeta:AddEquipmentItem(cls) end

---[SERVER] On the server, we just send the client a message that the player is performing a gesture. This allows the client to decide whether it should play, depending on eg. a cvar.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1203)
---
---@param act ACT The @{ACT} or sequence that should be played
function plymeta:AnimPerformGesture(act) end

---[SERVER] Caches the weapons currently in the player inventory and removes them. These weapons can be restored at any time.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1497)
---
function plymeta:CacheAndStripWeapons() end

---[SERVER] Returns whether or not a player can pick up a weapon
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1322)
---
---@param wep Weapon The weapon object
---@param forcePickup nil, boolean is there a forced pickup to ignore the cv_auto_pickup cvar?
---@param dropBlockingWeapon nil, boolean should the weapon stored in the same slot be dropped
---@return boolean #return of the PlayerCanPickupWeapon hook
function plymeta:CanPickupWeapon(wep, forcePickup, dropBlockingWeapon) end

---[SERVER] Returns whether or not a player can pick up a weapon
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1341)
---
---@param wepCls string The weapon object classname
---@param forcePickup nil, boolean is there a forced pickup to ignore the cv_auto_pickup cvar?
---@param dropBlockingWeapon nil, boolean should the weapon stored in the same slot be dropped
function plymeta:CanPickupWeaponClass(wepCls, forcePickup, dropBlockingWeapon) end

---[SERVER] Checks if the weapon can be dropped in a safely manner.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1276)
---
---@param wep Weapon The weapon that should be dropped
---@return boolean #Returns if this weapon can be dropped
function plymeta:CanSafeDropWeapon(wep) end

---[SERVER] Returns whether a @{Player} is able to select a specific @{ROLE}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L764)
---
function plymeta:CanSelectRole(roleData, choice_count, role_count) end

---[SERVER] Cancel the ongoing revival process.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L914)
---
---@param failMessage string The fail message that should be displayed for the client
---@param silent boolean If silent is true, no sound and text will be displayed
function plymeta:CancelRevival(failMessage, silent) end

---[SERVER] Update player corpse state
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1173)
---
function plymeta:ConfirmPlayer(announceRole) end

---[SERVER] Decreases the @{ARMOR} directly about a specific value while keeping the max value. To remove a player's armor(item), @{plymeta:RemoveArmor()} should be used!
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_armor.lua#L205)
---
---@param armor number The amount to be decreased
function plymeta:DecreaseArmorValue(armor) end

---[SERVER] Decreases the maximum @{ARMOR} directly about a specific value.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_armor.lua#L222)
---
---@param armor number The amount to be decreased
function plymeta:DecreaseMaxArmorValue(armor) end

---[SERVER] Function taken from Trouble in Terrorist Town Commands (https://github.com/bender180/Trouble-in-Terrorist-Town-ULX-Commands)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L777)
---
function plymeta:FindCorpse() end

---[SERVER] Forces a new radar scan, even when the radar is still charging. It is recommended to call this function after @{plymeta:SetRadarTime} to enforce an immediate change.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/entities/items/item_ttt_radar/init.lua#L255)
---
function plymeta:ForceRadarScan() end

---[SERVER] Returns whether a @{Player} has disabled the selection of the detective role
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L753)
---
---@deprecated
function plymeta:GetAvoidDetective() end

---[SERVER] Returns whether a @{Player} has disabled the selection of a given @{ROLE}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L743)
---
---@param role number subrole id of a @{ROLE}
function plymeta:GetAvoidRole(role) end

---[SERVER] Returns the last death position of the player.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1050)
---
---@return Vector #The last death position
function plymeta:GetDeathPosition() end

---[SERVER] Returns whether a @{Player} is spectating the own ragdoll
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L45)
---
function plymeta:GetRagdollSpec() end

---[SERVER] Returns the last spawn position of the player.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1058)
---
---@return Vector #The last spawn position
function plymeta:GetSpawnPosition() end

---[SERVER] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1256)
---
function plymeta:Give(weaponClassName, bNoAmmo) end

---[SERVER] Increases the @{ARMOR} directly about a specific value, while also increasing the maximum armor value. Mostly used when an armor item is given.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_armor.lua#L186)
---
---@param armor number The amount to be increased
function plymeta:GiveArmor(armor) end

---[SERVER] Gives an @{ITEM} to a @{Player} and returns whether it was successful
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L473)
---
function plymeta:GiveEquipmentItem(cls) end

---[SERVER] Give a @{Weapon} to a @{Player}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L425)
---
---@param cls string @{Weapon}'s class
---@param callback function Will be called if weapon was given successfully, takes the @{Player}, cls and created @{Weapon} as parameters, can be nil
function plymeta:GiveEquipmentWeapon(cls, callback) end

---[SERVER] Gives an @{ITEM} to a @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1124)
---
function plymeta:GiveItem(cls) end

---[SERVER] Checks wether a player has cached weapons that can be restored.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1488)
---
---@return boolean #Returns wether the player has a cached inventory
function plymeta:HasCachedWeapons() end

---[SERVER] Increases the @{ARMOR} directly about a specific value while keeping the max value. To add a player's armor(item), @{plymeta:GiveArmor()} should be used!
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_armor.lua#L214)
---
---@param armor number The amount to be increased
function plymeta:IncreaseArmorValue(armor) end

---[SERVER] Increases the maximum @{ARMOR} directly about a specific value.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_armor.lua#L230)
---
---@param armor number The amount to be increased
function plymeta:IncreaseMaxArmorValue(armor) end

---[SERVER] Increases the player death counter.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1075)
---
---@package
function plymeta:IncreaseRoundDeathCounter() end

---[SERVER] Initializes the KARMA for the given @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L92)
---
function plymeta:InitKarma() end

---[SERVER] This is called on the first spawn to set the default vars
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L651)
---
function plymeta:InitialSpawn() end

---[SERVER] Kicks and bans a player
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L690)
---
function plymeta:KickBan(length, reason) end

---[SERVER] Adds a kill into the kill list
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L503)
---
function plymeta:RecordKill(victim) end

---[SERVER] Decreases the @{ARMOR} about a scaled specific value depending on the current max value, while the maximum armor value gets decreased too.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_armor.lua#L196)
---
---@param remove number The amount to be decreased
function plymeta:RemoveArmor(remove) end

---[SERVER] Removes an @{ITEM} or a @{Weapon} from the bought list of a @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L332)
---
function plymeta:RemoveBought(cls) end

---[SERVER] Removes a specific @{ITEM}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L195)
---
function plymeta:RemoveEquipmentItem(cls) end

---[SERVER] Removes an @{ITEM} from a @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1155)
---
function plymeta:RemoveItem(cls) end

---[SERVER] Removes a @{Weapon} from a @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1164)
---
function plymeta:RemoveWeapon(cls) end

---[SERVER] Resets the @{ARMOR} value including the max value, called in @{GM:PlayerSpawn}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_armor.lua#L238)
---
---@package
function plymeta:ResetArmor() end

---[SERVER] Resets the bought list of a @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L286)
---
function plymeta:ResetBought() end

---[SERVER] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1479)
---
function plymeta:ResetCachedWeapons() end

---[SERVER] Resets the confirmation of a @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1190)
---
function plymeta:ResetConfirmPlayer() end

---[SERVER] Resets the equipment of a @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L243)
---
function plymeta:ResetEquipment() end

---[SERVER] Resets the last words
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L523)
---
function plymeta:ResetLastWords() end

---[SERVER] Sets the radar time interval to the role or convar default, lets the current scan run out before it is changed.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/entities/items/item_ttt_radar/init.lua#L247)
---
function plymeta:ResetRadarTime() end

---[SERVER] Resets the player death counter.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1083)
---
---@package
function plymeta:ResetRoundDeathCounter() end

---[SERVER] Sets round-based misc flags to default position. Called at PlayerSpawn.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L378)
---
function plymeta:ResetRoundFlags() end

---[SERVER] Sets all flags (force_spec, etc) to their default
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L368)
---
function plymeta:ResetStatus() end

---[SERVER] Resets the view
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L567)
---
function plymeta:ResetViewRoll() end

---[SERVER] Restores the cached weapons if there are any cached weapons. Does nothing if no weapons are cached.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1522)
---
function plymeta:RestoreCachedWeapons() end

---[SERVER] Revives a @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L814)
---
---@param delay number The delay of the revive
---@param OnRevive function The @{function} that should be run if the @{Player} revives
---@param DoCheck function An additional checking @{function}
---@param needsCorpse boolean Whether the dead @{Player} @{CORPSE} is needed
---@param blockRound number Stops the round from ending if this is set to someting other than 0
---@param OnFail function This @{function} is called if the revive fails
---@param spawnPos Vector The position where the player should be spawned, accounts for minor obstacles
---@param spawnEyeAngle Angle The eye angles of the revived players
function plymeta:Revive(delay, OnRevive, DoCheck, needsCorpse, blockRound, OnFail, spawnPos, spawnEyeAngle) end

---[SERVER] Called to drop a weapon in a safe manner (e.g. preparing and space-check).
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1302)
---
---@param wep Weapon The weapon that should be dropped
---@param keepSelection boolean If set to true the current selection is kept if not dropped
---@return boolean #Returns if this weapon is dropped
function plymeta:SafeDropWeapon(wep, keepSelection) end

---[SERVER] This function simplifies the weapon pickup process for a player by handling all the needed calls.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1357)
---
---@param wep Weapon The weapon entity that should be picked up
---@param ammoOnly boolean If set to true, the player will only attempt to pick up the ammo from the weapon. The weapon will not be picked up even if the player doesn't have a weapon of this type, and the weapon will be removed if the player picks up any ammo from it
---@param forcePickup boolean Should the pickup been forced (ignores the cv_auto_pickup cvar)
---@param dropBlockingWeapon boolean Should the currently selecten weapon be dropped
---@param shouldAutoSelect boolean Should this weapon be autoselected after equip, if not set this value is set by player keypress
---@return Weapon #if successful, nil if not
function plymeta:SafePickupWeapon(wep, ammoOnly, forcePickup, dropBlockingWeapon, shouldAutoSelect) end

---[SERVER] This function simplifies the weapon class giving process for a player by handling all the needed calls.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1430)
---
---@param wepCls string The weapon class
---@param dropBlockingWeapon boolean Should the currently selecten weapon be dropped
---@param shouldAutoSelect boolean Should this weapon be autoselected after equip, if not set this value is set by player keypress
---@return Weapon #if successful, nil if not
function plymeta:SafePickupWeaponClass(wepCls, dropBlockingWeapon, shouldAutoSelect) end

---[SERVER] Selects a random available @{ROLE} for a @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1091)
---
---@param avoidRoles table list of @{ROLE}s that should be avoided
function plymeta:SelectRandomRole(avoidRoles) end

---[SERVER] Sends the list of bought @{ITEM}s and @{Weapon}s to the @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L262)
---
function plymeta:SendBought() end

---[SERVER] Synces the amount of credits with the @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L162)
---
function plymeta:SendCredits() end

---[SERVER] Synces the server stored equipment with the @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L227)
---
function plymeta:SendEquipment() end

---[SERVER] Sends the last words based on the DamageInfo
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L533)
---
function plymeta:SendLastWords(dmginfo) end

---[SERVER] Sends a revival reason that is displayed in the clients revival HUD element. It supports a language identifier for translated strings.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1003)
---
---@param name string The text or the language identifer, nil to reset
---@param params table The params table used for @{LANG.GetParamTranslation}
function plymeta:SendRevivalReason(name, params) end

---[SERVER] Sets the if a player was active (TEAM_TERROR) in a round.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1067)
---
---@param state boolean The state
---@package
function plymeta:SetActiveInRound(state) end

---[SERVER] Sets the @{ARMOR} to a specific value that is capped by the maximum armor value.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_armor.lua#L158)
---
---@param armor number The new armor to be set
function plymeta:SetArmor(armor) end

---[SERVER] The base/start karma is determined once per round and determines the @{Player}'s damage penalty. It is networked and shown on clients.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L66)
---
function plymeta:SetBaseKarma(k) end

---[SERVER] Sets the amount of credits
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L102)
---
function plymeta:SetCredits(amt) end

---[SERVER] Sets the default amount of credits
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L132)
---
function plymeta:SetDefaultCredits() end

---[SERVER] Sets a @{Player} to be a forced spectator (not just a dead terrorist)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L53)
---
function plymeta:SetForceSpec(state) end

---[SERVER] Sets the last death position.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1033)
---
---@param pos Vector The death position
---@package
function plymeta:SetLastDeathPosition(pos) end

---[SERVER] Sets the last spawn position.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L1042)
---
---@param pos Vector The spawn position
---@package
function plymeta:SetLastSpawnPosition(pos) end

---[SERVER] Sets the max @{ARMOR} value to a specific value.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_armor.lua#L170)
---
---@param armor_max number The new max armor to be set
function plymeta:SetMaxArmor(armor_max) end

---[SERVER] Sets the radar time interval, lets the current scan run out before it is changed.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/entities/items/item_ttt_radar/init.lua#L240)
---
---@param time number The radar time interval
function plymeta:SetRadarTime(time) end

---[SERVER] Sets whether a @{Player} is spectating the own ragdoll
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L33)
---
function plymeta:SetRagdollSpec(s) end

---[SERVER] Sets the blocking revival state.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L951)
---
---@param revivalBlockMode number The blocking revival state
---@package
function plymeta:SetRevivalBlockMode(revivalBlockMode) end

---[SERVER] Sets the revival duration.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L985)
---
---@param duration number The revival time
---@package
function plymeta:SetRevivalDuration(duration) end

---[SERVER] Sets the revival start time.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L968)
---
---@param startTime number The revival start time
---@package
function plymeta:SetRevivalStartTime(startTime) end

---[SERVER] Sets the revival state.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L934)
---
---@param isReviving boolean The reviving state
---@package
function plymeta:SetReviving(isReviving) end

---[SERVER] This is doing nothing, it's just a function to avoid incompatibility
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L516)
---
---@deprecated
function plymeta:SetSpeed(slowed) end

---[SERVER] Forced specs and latejoin specs should not get points
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L489)
---
function plymeta:ShouldScore() end

---[SERVER] Checks whether a @{Player} is able to spawn
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L581)
---
function plymeta:ShouldSpawn() end

---[SERVER] Preps a player for a new round, spawning them if they should.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L600)
---
---@param deadOnly boolean If deadOnly is true, only spawns if player is dead, else just makes sure he is healed
---@return boolean #Returns true if player is spawned
function plymeta:SpawnForRound(deadOnly) end

---[SERVER] Forces a @{Player} to the spectation modus
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L701)
---
function plymeta:Spectate(type) end

---[SERVER] Forces a @{Player} to spectate an @{Entity}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L719)
---
function plymeta:SpectateEntity(ent) end

---[SERVER] Strips player of all equipment
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L355)
---
function plymeta:StripAll() end

---[SERVER] Removes an amount of credits
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L120)
---
function plymeta:SubtractCredits(amt) end

---[SERVER] Sets a bool value at the given path on the player. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L876)
---
---@param path any, table The path to set the value for
---@param value boolean The value to set
---@param client Entity The client/entity to set this value for (as an override for the default value)
function plymeta:TTT2NETSetBool(path, value, client) end

---[SERVER] Sets a float value at the given path on the player. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L918)
---
---@param path any, table The path to set the value for
---@param value number The value to set
---@param client Entity The client/entity to set this value for (as an override for the default value)
function plymeta:TTT2NETSetFloat(path, value, client) end

---[SERVER] Sets a number value at the given path on the player. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L888)
---
---@param path any, table The path to set the value for
---@param value number The value to set
---@param bits number The bits that this number needs to be stored (optional, otherwise a default of 32 is used)
---@param client Entity The client/entity to set this value for (as an override for the default value)
function plymeta:TTT2NETSetInt(path, value, bits, client) end

---[SERVER] Sets a string value at the given path on the player. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L929)
---
---@param path any, table The path to set the value for
---@param value string The value to set
---@param client Entity The client/entity to set this value for (as an override for the default value)
function plymeta:TTT2NETSetString(path, value, client) end

---[SERVER] Sets an unsigned number value at the given path on the player. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_network_sync.lua#L903)
---
---@param path any, table The path to set the value for
---@param value number The unsigned number value to set
---@param bits number The bits that this number needs to be stored (optional, otherwise a default of 32 is used)
---@param client Entity The client/entity to set this value for (as an override for the default value)
function plymeta:TTT2NETSetUInt(path, value, bits, client) end

---[SERVER] Unspectates a @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L732)
---
function plymeta:UnSpectate() end

---[SHARED] Returns whether the armor is reinforced
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_armor.lua#L31)
---
---@return boolean #is armor reinforced
function plymeta:ArmorIsReinforced() end

---[SHARED] Returns whether a @{Player} can carry a @{Weapon} type
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L644)
---
function plymeta:CanCarryType(t) end

---[SHARED] Returns whether a @{Player} is able to carry @{Weapon}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L621)
---
function plymeta:CanCarryWeapon(wep) end

---[SHARED] Returns the current armor
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_armor.lua#L15)
---
---@return number #armor
function plymeta:GetArmor() end

---[SHARED] Returns the base amount of karma
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L594)
---
function plymeta:GetBaseKarma() end

---[SHARED] Returns the @{ROLE} BaseRole id
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L55)
---
function plymeta:GetBaseRole() end

---[SHARED] Returns a @{Player} current BaseRole (@{ROLE})
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L404)
---
function plymeta:GetBaseRoleData() end

---[SHARED] Returns a list of all Carry @{Weapon}s a @{Player} is carrying
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L709)
---
function plymeta:GetCarryWeapons() end

---[SHARED] Returns a list of all Class @{Weapon}s a @{Player} is carrying
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L733)
---
function plymeta:GetClassWeapons() end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L87)
---
---@return boolean #If a player does not damage team members in a round, he has a "clean" round and gets a bonus for it.
function plymeta:GetCleanRound() end

---[SHARED] Returns the amount of credits a @{Player} is owning
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L759)
---
function plymeta:GetCredits() end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L81)
---
---@return number #The damage factor scales how much damage the player deals, so if it is .9 then the player only deals 90% of his original damage.
function plymeta:GetDamageFactor() end

---[SHARED] Returns the times a player has died in an active round.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1094)
---
---@return number #The amoutn of deaths in the active round
function plymeta:GetDeathsInRound() end

---[SHARED] Checks whether a @{Player} is a Detective
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L379)
---
---@deprecated
function plymeta:GetDetective() end

---[SHARED] Returns each equipment a @{Player} is owning
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L767)
---
function plymeta:GetEquipmentItems() end

---[SHARED] Returns a list of all Extra @{Weapon}s a @{Player} is carrying
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L725)
---
function plymeta:GetExtraWeapons() end

---[SHARED] Overrides GetEyeTrace for an optional trace mask param. Technically traces like GetEyeTraceNoCursor but who wants to type that all the time, and we never use cursor tracing anyway.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L814)
---
---@param mask MASK The trace mask. This determines what the trace should hit and what it shouldn't hit. A mask is a combination of CONTENTS_Enums - you can use these for more advanced masks.
function plymeta:GetEyeTrace(mask) end

---[SHARED] Returns whether a @{Player} was the first that was found this round
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L949)
---
function plymeta:GetFirstFound() end

---[SHARED] Checks whether a player has forced to a spectator (not a dead terrorist that is spectating)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L39)
---
function plymeta:GetForceSpec() end

---[SHARED] Checks whether a @{Player} is an Innocent
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L359)
---
---@deprecated
function plymeta:GetInnocent() end

---[SHARED] Returns a @{Player}'s Inventory
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L656)
---
function plymeta:GetInventory() end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L75)
---
---@return number #The live karma starts equal to the base karma, but is updated "live" as the player damages/kills others. When another player damages/kills this one, the live karma is used to determine his karma penalty.
function plymeta:GetLiveKarma() end

---[SHARED] Returns the current max armor
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_armor.lua#L23)
---
---@return number #max armor
function plymeta:GetMaxArmor() end

---[SHARED] Returns a list of all Melee @{Weapon}s a @{Player} is carrying
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L677)
---
function plymeta:GetMeleeWeapons() end

---[SHARED] Returns a list of all Nade @{Weapon}s a @{Player} is carrying
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L701)
---
function plymeta:GetNades() end

---[SHARED] Returns a list of all Primary @{Weapon}s a @{Player} is carrying
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L685)
---
function plymeta:GetPrimaryWeapons() end

---[SHARED] Returns the real @{ROLE}'s team
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L298)
---
function plymeta:GetRealTeam() end

---[SHARED] Returns the blocking mode of the ongoing revival.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1061)
---
---@return number #The blocking mode
function plymeta:GetRevivalBlockMode() end

---[SHARED] Returns the duration for the ongoing revival.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1077)
---
---@return number #The time for the revival in seconds
function plymeta:GetRevivalDuration() end

---[SHARED] Returns the time when the ongoing revival started.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1069)
---
---@return number #The time when the revival started in seconds
function plymeta:GetRevivalStartTime() end

---[SHARED] Returns the @{ROLE} BaseRole id
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L64)
---
function plymeta:GetRole() end

---[SHARED] Returns the current @{ROLE}'s background color
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L237)
---
function plymeta:GetRoleBgColor() end

---[SHARED] Returns the current @{ROLE}'s color
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L179)
---
function plymeta:GetRoleColor() end

---[SHARED] Returns the current @{ROLE}'s darker color
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L201)
---
function plymeta:GetRoleDkColor() end

---[SHARED] Returns the current @{ROLE}'s lighter color
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L219)
---
function plymeta:GetRoleLtColor() end

---[SHARED] Returns printable role
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L576)
---
function plymeta:GetRoleString() end

---[SHARED] Returns role language string id, caller must translate if desired
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L586)
---
function plymeta:GetRoleStringRaw() end

---[SHARED] Returns a list of all Secondary @{Weapon}s a @{Player} is carrying
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L693)
---
function plymeta:GetSecondaryWeapons() end

---[SHARED] Returns a list of all Special @{Weapon}s a @{Player} is carrying
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L717)
---
function plymeta:GetSpecialWeapons() end

---[SHARED] Returns the current player speed modifier
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_speed.lua#L106)
---
---@return number #The speed modifier
function plymeta:GetSpeedMultiplier() end

---[SHARED] Returns the @{ROLE} SubRole id
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L47)
---
function plymeta:GetSubRole() end

---[SHARED] Returns a @{Player} current SubRole @{ROLE}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L387)
---
function plymeta:GetSubRoleData() end

---[SHARED] Returns the current model a @{Player} wears depending on the current @{ROLE}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L898)
---
---@return string #the @{ROLE} @{Model}
function plymeta:GetSubRoleModel() end

---[SHARED] Returns the target a @{Player} is spectating
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L872)
---
---@return Player #target
function plymeta:GetTargetPlayer() end

---[SHARED] Returns the current @{ROLE}'s team
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L284)
---
function plymeta:GetTeam() end

---[SHARED] Checks whether a @{Player} is a Traitor
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L370)
---
---@deprecated
function plymeta:GetTraitor() end

---[SHARED] Returns a list of @{Weapon}s a @{Player} is carrying on a specific slot
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L667)
---
function plymeta:GetWeaponsOnSlot(slot) end

---[SHARED] Checks whether a @{Player} has bought an @{ITEM} or @{Weapon}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L751)
---
---@param id string of the @{ITEM} or @{Weapon}
function plymeta:HasBought(id) end

---[SHARED] Checks if a player died while the round was active.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1102)
---
---@return boolean #Returns if the player died in the round
function plymeta:HasDiedInRound() end

---[SHARED] Returns if @{Player} has any equipment item
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L802)
---
function plymeta:HasEquipment() end

---[SHARED] Given an equipment id, returns if @{Player} owns this. Given nil, returns if @{Player} has any equipment item.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L777)
---
function plymeta:HasEquipmentItem(id) end

---[SHARED] Returns whether a @{Player} carries a @{Weapon}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L602)
---
function plymeta:HasEquipmentWeapon() end

---[SHARED] Checks whether or not a player has an evil team. By default all teams that aren't innocent or none are counted as evil.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L469)
---
---@return boolean #Returns true if the role is evil
function plymeta:HasEvilTeam() end

---[SHARED] Checks whether a @{Player} has a valid @{ROLE}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L499)
---
function plymeta:HasRole() end

---[SHARED] Checks whether a @{Player} has a special @{ROLE}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L451)
---
---@return boolean #Returns true if the player has a special role
function plymeta:HasSpecialRole() end

---[SHARED] Checks whether a @{Player} has a team
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L337)
---
function plymeta:HasTeam() end

---[SHARED] Checks whether a @{Player} is a terrorist and in an active round
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L477)
---
function plymeta:IsActive() end

---[SHARED] Checks whether a @{Player} is active and is a Detective
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L537)
---
function plymeta:IsActiveDetective() end

---[SHARED] Checks whether a @{Player} is active and is an Innocent
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L519)
---
function plymeta:IsActiveInnocent() end

---[SHARED] Checks whether a @{Player} is active and has a specific @{ROLE}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L510)
---
---@param subrole number subrole id of a @{ROLE}
function plymeta:IsActiveRole(subrole) end

---[SHARED] Checks whether a @{Player} is active and able to shop
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L566)
---
function plymeta:IsActiveShopper() end

---[SHARED] Checks whether a @{Player} is active and has a special @{ROLE}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L547)
---
function plymeta:IsActiveSpecial() end

---[SHARED] Checks whether a @{Player} is active and is a Traitor
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L528)
---
function plymeta:IsActiveTraitor() end

---[SHARED] Returns if the ongoing revival is blocking or not.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1053)
---
---@return boolean #The blocking status
function plymeta:IsBlockingRevival() end

---[SHARED] Checks whether a @{Player} is a dead terrorist
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L742)
---
function plymeta:IsDeadTerror() end

---[SHARED] Checks whether a @{Player} is a Detective
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L443)
---
---@deprecated
function plymeta:IsDetective() end

---[SHARED] Checks whether a @{Player} is in the same team as another @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L348)
---
---@param ply Player the other @{Player}
function plymeta:IsInTeam(ply) end

---[SHARED] Checks whether a @{Player} is an Innocent
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L423)
---
---@deprecated
function plymeta:IsInnocent() end

---[SHARED] Returns whether the player is ready. A player is ready when he is able to look around and move (first call of @{GM:SetupMove})
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L958)
---
function plymeta:IsReady() end

---[SHARED] Returns if the player is reviving.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1045)
---
---@return boolean #The blocking status
function plymeta:IsReviving() end

---[SHARED] Convenience functions for common patterns will match if player has specific subrole or a general baserole if requested. To check whether a player have a specific baserole not a subrole, use <code>@{plymeta:GetSubRole} == baserole</code>
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L488)
---
---@param subrole number subrole id of a @{ROLE}
function plymeta:IsRole(subrole) end

---[SHARED] Checks whether a @{Player} is able to shop
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L556)
---
function plymeta:IsShopper() end

---[SHARED] Checks whether a player is a spectator (not a terrorist)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L31)
---
function plymeta:IsSpec() end

---[SHARED] Checks whether a @{Player} has a special @{ROLE}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L462)
---
---@return boolean #Returns true if the player has a special role
---@deprecated
function plymeta:IsSpecial() end

---[SHARED] Checks whether a player is a available terrorist (not a spectator)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L23)
---
function plymeta:IsTerror() end

---[SHARED] Checks whether a @{Player} is a Traitor
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L434)
---
---@deprecated
function plymeta:IsTraitor() end

---[SHARED] Returns the @{Player} corpse state (found?)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L925)
---
function plymeta:OnceFound() end

---[SHARED] Displays a message either in their chat, console, or center of the screen.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_printmessage_override.lua#L52)
---
---@param type number The type of the message that should be displayed on then screen of the player (see <a href="https://wiki.facepunch.com/gmod/Enums/HUD">Enums/HUD</a>)
---@param message string Message to be displayed on the screen on the player
function plymeta:PrintMessage(type, message) end

---[SHARED] Returns whether a @{ROLE} was found
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L933)
---
function plymeta:RoleKnown() end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L87)
---
---@param clean_round boolean If a player does not damage team members in a round, he has a "clean" round and gets a bonus for it.
function plymeta:SetCleanRound(clean_round) end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L81)
---
---@param dmg_factor number The damage factor scales how much damage the player deals, so if it is .9 then the player only deals 90% of his original damage.
function plymeta:SetDamageFactor(dmg_factor) end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_player_ext.lua#L75)
---
---@param live_karma number The live karma starts equal to the base karma, but is updated "live" as the player damages/kills others. When another player damages/kills this one, the live karma is used to determine his karma penalty.
function plymeta:SetLiveKarma(live_karma) end

---[SHARED] Sets the @{Player}'s @{Model}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L979)
---
function plymeta:SetModel(mdlName) end

---[SHARED] Sets the subrole and the team of a @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L76)
---
---@param subrole number subrole id of a @{ROLE}
---@param team string team of a @{ROLE}
---@param forceHooks boolean whether update hooks should be triggerd, even if the role didn't changed
---@param suppressEvent boolean Set this to true if no rolechange event should be triggered
function plymeta:SetRole(subrole, team, forceHooks, suppressEvent) end

---[SHARED] Sets the current @{ROLE}'s background color and modifies it if hooked
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L245)
---
function plymeta:SetRoleBgColor(col) end

---[SHARED] Sets the current @{ROLE}'s color and modifies it if hooked
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L191)
---
function plymeta:SetRoleColor(col) end

---[SHARED] Sets the current @{ROLE}'s darker color and modifies it if hooked
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L209)
---
function plymeta:SetRoleDkColor(col) end

---[SHARED] Sets the current @{ROLE}'s lighter color and modifies it if hooked
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L227)
---
function plymeta:SetRoleLtColor(col) end

---[SHARED] Sets the current model a @{Player} wears depending on the current @{ROLE}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L906)
---
---@param mdl string the @{ROLE} @{Model}
function plymeta:SetSubRoleModel(mdl) end

---[SHARED] Sets the target a @{Player} is spectating
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L880)
---
function plymeta:SetTargetPlayer(ply) end

---[SHARED] Starts drowning for a @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L843)
---
function plymeta:StartDrowning(bool, time, duration) end

---[SHARED] Returns the current bool value for a given path on the player. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_network_sync.lua#L31)
---
---@param path any The path to return the value for
---@param fallback boolean The fallback value to return instead of nil
---@return boolean #The value at the path or fallback if the value is nil
function plymeta:TTT2NETGetBool(path, fallback) end

---[SHARED] Returns the current float value for a given path on the player. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_network_sync.lua#L64)
---
---@param path any The path to return the value for
---@param fallback number The fallback value to return instead of nil
---@return number #The value at the path or fallback if the value is nil
function plymeta:TTT2NETGetFloat(path, fallback) end

---[SHARED] Returns the current number value for a given path on the player. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_network_sync.lua#L42)
---
---@param path any The path to return the value for
---@param fallback number The fallback value to return instead of nil
---@return number #The value at the path or fallback if the value is nil
function plymeta:TTT2NETGetInt(path, fallback) end

---[SHARED] Returns the current string value for a given path on the player. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_network_sync.lua#L75)
---
---@param path any The path to return the value for
---@param fallback string The fallback value to return instead of nil
---@return string #The value at the path or fallback if the value is nil
function plymeta:TTT2NETGetString(path, fallback) end

---[SHARED] Returns the current unsigned number value for a given path on the player. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_network_sync.lua#L53)
---
---@param path any The path to return the value for
---@param fallback number The fallback value to return instead of nil
---@return number #The value at the path or fallback if the value is nil
function plymeta:TTT2NETGetUInt(path, fallback) end

---[SHARED] Updates the team of a @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L309)
---
---@param team string a @{ROLE}'s team
---@param suppressEvent boolean Set this to true if no rolechange event should be triggered
---@param suppressHook boolean Set this to true if no updateTeam hook should be triggered
function plymeta:UpdateTeam(team, suppressEvent, suppressHook) end

---[SHARED] Checks if a player was active during this round. A player was active if they received a role. This state is reset once the next round begins (@{GM:TTTBeginRound}).
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1086)
---
---@return boolean #Returns if the player was active
function plymeta:WasActiveInRound() end

---[SHARED] Returns whether a @{Player} was revived after being confirmed this round
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L941)
---
function plymeta:WasRevivedAndConfirmed() end

---[SHARED] Checks if a player was revived in the round.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1110)
---
---@return boolean #Returns if the player was revived
function plymeta:WasRevivedInRound() end
