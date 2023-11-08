---@meta


---[SHARED] Create teams
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L196)
---
---@package
function GM:CreateTeams() end

---[SHARED] This hook is run on the initialization of the fallback shops.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L494)
---
function GM:InitFallbackShops() end

---[SHARED] This hook is run after the initialization of the fallback shops.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L502)
---
function GM:LoadedFallbackShops() end

---[SHARED] The Move hook is called for you to manipulate the player's MoveData. You shouldn't adjust the player's position in any way in the move hook. This is due to prediction errors, the netcode might run the move hook multiple times as packets arrive late. Therefore you should only adjust the movedata construct in this hook. Generally you shouldn't have to use this hook - if you want to make a custom move type you should look at the drive system. This hook is called after @{GM:PlayerTick}. See <a href="https://wiki.facepunch.com/gmod/Game_Movement">Game Movement</a> for an explanation on the move system.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L241)
---
---@param ply Player The player
---@param moveData CMoveData Movement information
function GM:Move(ply, moveData) end

---[SHARED] Kill footsteps on player and client. Called whenever a player steps. Return true to mute the normal sound.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L220)
---
---@param ply Player The stepping player
---@param pos Vector The position of the step
---@param foot number Foot that is stepped. 0 for left, 1 for right
---@param sound string Sound that is going to play
---@param volume number Volume of the footstep
---@param rf RecipientFilter The Recipient filter of players who can hear the footstep
---@return boolean #Prevent default step sound
function GM:PlayerFootstep(ply, pos, foot, sound, volume, rf) end

---[SHARED] This hook is run inside @{GM:InitPostEntity} after all items are initialized.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L486)
---
function GM:PostInitPostEntity() end

---[SHARED] Called after everything in the @{GM:Initialize} hook is called.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L187)
---
function GM:PostInitialize() end

---[SHARED] A hook that is called whenever the gamemode needs to check if the player is in the superadmin usergroup. This hook can be used to allow custom usergroups through these checks.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L347)
---
---@param ply Player The player to be checked
---@return boolean #if the player is a valid usergroup
function GM:TTT2AdminCheck(ply) end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L527)
---
function GM:TTT2BaseRoleInit() end

---[SHARED] Whether or not the @{Player} can use the voice chat. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_voice.lua#L13)
---
---@param ply Player @{Player} who wants to use the voice chat
---@param isTeam boolean Are they trying to use the team voice chat
---@return boolean #Whether or not the @{Player} can use the voice chat
function GM:TTT2CanUseVoiceChat(ply, isTeam) end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L179)
---
function GM:TTT2FinishedLoading() end

---[SHARED] Called in @{GM:Initialize} as first call right before the TTT2 fileloader loads the vskin and language files.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L161)
---
function GM:TTT2Initialize() end

---[SHARED] Called after creating the filetable of files that should be loaded, can be used to modify which files should be loaded
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_include.lua#L189)
---
---@param fileTbl table The table of files that should be loaded
function GM:TTT2ModifyFiles(fileTbl) end

---[SHARED] This hook is called (mostly on rolechanges) when the player's background role color is set and can be used to modify the color.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1202)
---
---@param ply Player The player whose role color is set
---@param clr Color The color that should be used
---@return nil|Color #The new color that is intended for the player
function GM:TTT2ModifyRoleBgColor(ply, clr) end

---[SHARED] This hook is called (mostly on rolechanges) when the player's role color is set and can be used to modify the color.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1166)
---
---@param ply Player The player whose role color is set
---@param clr Color The color that should be used
---@return nil|Color #The new color that is intended for the player
function GM:TTT2ModifyRoleColor(ply, clr) end

---[SHARED] This hook is called (mostly on rolechanges) when the player's darkened role color is set and can be used to modify the color.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1178)
---
---@param ply Player The player whose role color is set
---@param clr Color The color that should be used
---@return nil|Color #The new color that is intended for the player
function GM:TTT2ModifyRoleDkColor(ply, clr) end

---[SHARED] This hook is called (mostly on rolechanges) when the player's lightened role color is set and can be used to modify the color.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1190)
---
---@param ply Player The player whose role color is set
---@param clr Color The color that should be used
---@return nil|Color #The new color that is intended for the player
function GM:TTT2ModifyRoleLtColor(ply, clr) end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_main.lua#L872)
---
function GM:TTT2PlayerAuthed() end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/entities/weapons/weapon_zm_carry.lua#L369)
---
function GM:TTT2PlayerPreventPickupEnt() end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/entities/weapons/weapon_zm_improvised.lua#L257)
---
function GM:TTT2PlayerPreventPush() end

---[SHARED] This hook is called once the player is ready on client and server. This means that the client is able to handle data from the server
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L968)
---
---@param ply Player The @{Player} that is now ready
function GM:TTT2PlayerReady(ply) end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L251)
---
function GM:TTT2PlayerSprintMultiplier() end

---[SHARED] Called right after the map has been cleaned up (usually because game.CleanUpMap was called). This hook is called after the @{outputs} library is set up and map entity outputs can be registered.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L470)
---
function GM:TTT2PostCleanupMap() end

---[SHARED] Called right after all doors are initialized on the map.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L511)
---
---@param doorsTable table A table with the newly registered door entities
function GM:TTT2PostDoorSetup(doorsTable) end

---[SHARED] Called to register equipment and assign an id. Returns true if it is successfully registered.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L537)
---
---@param eq table the equipment copy to register with an id
---@return boolean #if the eq is succesfully registered
function GM:TTT2RegisterWeaponID(eq) end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L519)
---
function GM:TTT2RolesLoaded() end

---[SHARED] A hook that is called once every frame/tick to modify the stamina drain.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_sprint.lua#L206)
---
---@param ply Player The player whose modifier should be set
---@param modifierTbl table The table in which the modifier can be changed
function GM:TTT2StaminaDrain(ply, modifierTbl) end

---[SHARED] A hook that is called once every frame/tick to modify the stamina regeneration.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_sprint.lua#L195)
---
---@param ply Player The player whose modifier should be set
---@param modifierTbl table The table in which the modifier can be changed
function GM:TTT2StaminaRegen(ply, modifierTbl) end

---[SHARED] A hook that is called on the change of a role. It is called once for the old role and once for the new role if some criteria are met.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1121)
---
---@param roleData ROLE The roledata of the rolechange
---@param isNewRole boolean True if it is the new role, false if it is the old role
function GM:TTT2ToggleRole(roleData, isNewRole) end

---[SHARED] This hook is called on the change of a player's base role.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1132)
---
---@param ply Player The player whose role is changed
---@param oldBaserole number The numeric identifier of the old role
---@param newBaserole number The numeric identifier of the new role
function GM:TTT2UpdateBaserole(ply, oldBaserole, newBaserole) end

---[SHARED] This hook is called on the change of a player's sub role.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1143)
---
---@param ply Player The player whose role is changed
---@param oldSubrole number The numeric identifier of the old role
---@param newSubrole number The numeric identifier of the new role
function GM:TTT2UpdateSubrole(ply, oldSubrole, newSubrole) end

---[SHARED] This hook is called on the change of a player's team.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_player_ext.lua#L1154)
---
---@param ply Player The player whose team is changed
---@param oldTeam string The identifier of the old team
---@param newTeam string The identifier of the new team
function GM:TTT2UpdateTeam(ply, oldTeam, newTeam) end

---[SHARED] A hook that is called when the round begins.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L453)
---
function GM:TTTBeginRound() end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_search.lua#L683)
---
function GM:TTTBodySearchEquipment() end

---[SHARED] This hook is called when the C4 is about to explode.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/entities/entities/ttt_c4/shared.lua#L918)
---
---@param bomb Entity The C4 bomb entity
---@return boolean #Return false to cancel explosion
function GM:TTTC4Explode(bomb) end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/entities/entities/base_ammo_ttt.lua#L62)
---
function GM:TTTCanPickupAmmo() end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L460)
---
function GM:TTTEndRound() end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/entities/weapons/weapon_ttt_wtester.lua#L307)
---
function GM:TTTFoundDNA() end

---[SHARED] This hook is run inside @{GM:InitPostEntity} prior to the initialization of items,
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L478)
---
function GM:TTTInitPostEntity() end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L295)
---
---@param model string The selected (default) playermodel
function GM:TTTPlayerColor(model) end

---[SHARED] A hook to modify the player speed.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_speed.lua#L63)
---
---@param ply Player The player whose speed should be modified
---@param isSlowed boolean Is true if the player uses iron sights
---@param moveData CMoveData The move data
---@param speedMultiplierModifier table The speed modifier table. Modify the first table entry to change the player speed
---@return number #The deprecated way of changing the player speed
function GM:TTTPlayerSpeedModifier(ply, isSlowed, moveData, speedMultiplierModifier) end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/entities/entities/ttt_health_station.lua#L127)
---
function GM:TTTPlayerUsedHealthStation() end

---[SHARED] A hook that is called when the preparation phase starts.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L444)
---
function GM:TTTPrepareRound() end

---[SHARED] Called every frame on client and server. This will be the same as @{GM:Tick} on the server when there is no lag, but will only be called once every processed server frame during lag. See @{GM:Tick} for a hook that runs every tick on both the client and server.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L320)
---
function GM:Think() end

---[SHARED] Called every server tick. Serverside, this is similar to @{GM:Think}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_main.lua#L360)
---
function GM:Tick() end
