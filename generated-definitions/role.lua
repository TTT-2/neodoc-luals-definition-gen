---@meta


---[SHARED] This function is called after all roles have been loaded with their ConVars, that are created for each role automatically, and their global variables. Please use this function to register your SubRole with the BaseRole, by calling @{roles.SetBaseRole} and initialize any other needed data (eg. @{LANG} function calls).
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/entities/roles/ttt_role_base/shared.lua#L192)
---
function ROLE:Initialize() end

---[SHARED] This function is called before initializing a @{ROLE}, but after all global variables like "ROLE_TRAITOR" have been initialized. Use this function to define role attributes, which is dependant on other global variables (eg. from other roles). This is mostly used to register the defaultTeam, shopFallback, etc...
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/terrortown/entities/roles/ttt_role_base/shared.lua#L179)
---
function ROLE:PreInitialize() end
