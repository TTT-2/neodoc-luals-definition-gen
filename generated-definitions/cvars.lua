---@meta

cvars = {}

---[CLIENT] Changes the conVar on the server if it exists and the user has admin rights
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/cvars.lua#L67)
---
function cvars.ChangeServerConVar(conVarName, value) end

---[CLIENT] Checks if the conVar exists on the server or was already cached
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/cvars.lua#L32)
---
function cvars.ConVarExistsOnServer(conVarName, OnReceiveFunc) end

---[CLIENT] Get the conVar's current and default value of if it exists on the server or was already cached
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/cvars.lua#L115)
---
function cvars.ServerConVarGetValue(conVarName, OnReceiveFunc) end
