---@meta

---@class EPOP
EPOP = {}

---[CLIENT] Activates a new message by setting up all internal values
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_eventpopup.lua#L84)
---
---@package
function EPOP:ActivateMessage() end

---[CLIENT] Adds a popup message to the @{EPOP}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_eventpopup.lua#L48)
---
---@param title string, table The title of the popup that will be displayed in large letters (can be a table with `text` and `color` attribute)
---@param subtitle string, table An optional description that will be displayed below the title (can be a table with `text` and `color` attribute)
---@param displayTime number The render duration of the popup
---@param iconTable table An optional set of icon materials that will be rendered below the popup
---@param blocking boolean If this is false, this message gets instantly replaced if a new message is added
---@return string #Returns a unique id generated for this message
function EPOP:AddMessage(title, subtitle, displayTime, iconTable, blocking) end

---[CLIENT] Clears the whole message queue
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_eventpopup.lua#L164)
---
function EPOP:Clear() end

---[CLIENT] Returns the default message.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_eventpopup.lua#L114)
---
---@return table #The message table
function EPOP:GetDefaultMessage() end

---[CLIENT] Returns the neweset message in the queue that should be rendered right now.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_eventpopup.lua#L106)
---
---@return table #The message table
function EPOP:GetMessage() end

---[CLIENT] Instantly removed the currently displayed or a specified @{EPOP} message
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_eventpopup.lua#L137)
---
---@param id string The unique id of a message that sould be deleted. If omitted, the first message in the queue gets deleted
---@return boolean #Returns true if a message got deleted
function EPOP:RemoveMessage(id) end

---[CLIENT] Removes a message from the stack by a numeric index
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_eventpopup.lua#L122)
---
---@param index number The nimeric index
function EPOP:RemoveMessageByIndex(index) end

---[CLIENT] A shortcut function to check if an @{EPOP} should be rendered
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_eventpopup.lua#L98)
---
---@return boolean #Returns if the message shoould be rendered
function EPOP:ShouldRender() end

---[CLIENT] Updates the message queue
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_eventpopup.lua#L29)
---
---@package
function EPOP:Think() end

---[SERVER] Adds a translated popup message to the @{EPOP}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_eventpopup.lua#L16)
---
---@param plys nil, table, Player A table of player that should receive this popup, broadcasts it if nil
---@param title string, table The title of the popup that will be displayed in large letters (can be a table with `text` and `color` attribute)
---@param subtitle string, table An optional description that will be displayed below the title (can be a table with `text` and `color` attribute)
---@param displayTime number The render duration of the popup
---@param blocking boolean If this is false, this message gets instantly replaced if a new message is added
function EPOP:AddMessage(plys, title, subtitle, displayTime, blocking) end
