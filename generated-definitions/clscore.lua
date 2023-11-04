---@meta

---@class CLSCORE
CLSCORE = {}

---[CLIENT] Precalculates the sizes needed for the UI.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_scoring.lua#L95)
---
---@package
function CLSCORE:CalculateSizes() end

---[CLIENT] Clears the current score @{Panel} and removes it
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_scoring.lua#L259)
---
---@package
function CLSCORE:ClearPanel() end

---[CLIENT] Creates the score @{Panel} for the local @{Player}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_scoring.lua#L131)
---
---@package
function CLSCORE:CreatePanel() end

---[CLIENT] Converts the wintype into title data.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_scoring.lua#L380)
---
---@return string #The title text string
---@package
function CLSCORE:GetWinData() end

---[CLIENT] Hides a @{Panel} without closing it.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_scoring.lua#L237)
---
function CLSCORE:HidePanel() end

---[CLIENT] Initializes the score @{Panel} and prepares the needed data
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_scoring.lua#L311)
---
---@package
function CLSCORE:Init() end

---[CLIENT] Checks if there is an existing @{Panel} hidden
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_scoring.lua#L247)
---
---@return boolean #Returns true if a @{Panel} is hidden
function CLSCORE:IsPanelHidden() end

---[CLIENT] ClearPanels the old score @{Panel}, initializes a new one and displays it to the local @{Player}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_scoring.lua#L367)
---
---@package
function CLSCORE:ReportEvents() end

---[CLIENT] Saves the current score @{Panel}'s data into a log file
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_scoring.lua#L270)
---
---@package
function CLSCORE:SaveLog() end

---[CLIENT] Displays the score @{Panel} for the local @{Player}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_scoring.lua#L226)
---
---@package
function CLSCORE:ShowPanel() end

---[CLIENT] Toggles the visibility of the current score @{Panel}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_scoring.lua#L403)
---
---@package
function CLSCORE:Toggle() end
