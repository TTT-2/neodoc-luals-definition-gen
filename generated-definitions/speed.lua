---@meta

---@class SPEED
SPEED = {}

---[CLIENT] Initializes the speed system once the game is ready. It is called in @{GM:Initialize}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_speed.lua#L72)
---
function SPEED:Initialize() end

---[SHARED] Handles the speed calculation based on the @{GM:TTTPlayerSpeedModifier} hook
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_speed.lua#L14)
---
---@param ply Player The player whose speed should be changed
---@param moveData CMoveData The move data
---@package
function SPEED:HandleSpeedCalculation(ply, moveData) end
