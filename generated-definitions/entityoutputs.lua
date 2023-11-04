---@meta

entityOutputs = {}

---[SERVER] Cleans up the entityOutputs library hooks prior to the map cleanup. Has to be called in @{GM:PreCleanupMap}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entity_outputs.lua#L30)
---
---@package
function entityOutputs.CleanUp() end

---[SERVER] Registers a new hook in the entityOutputs library if it isn't already registered.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entity_outputs.lua#L43)
---
---@param hookName string The desired name of the registered hook
---@package
function entityOutputs.RegisterHook(hookName) end

---[SERVER] Registers a map entity output trigger hook. Keep in mind, this function has to be called after every map cleanup. It is recommended to use this function inside the @{GM:TTT2PostCleanupMap} hook.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entity_outputs.lua#L70)
---
---@param The Entity map entity
---@param outputName string The name of the entity output
---@param hookName string The desired name of the registered hook
---@param delay number The delay between the fired output and the hook call
---@param repetitions number The amount of repetitions until the output is removed, -1 for infinite
function entityOutputs.RegisterMapEntityOutput(The, outputName, hookName, delay, repetitions) end

---[SERVER] Sets up the entityOutputs library by creating a lua_run map entitiy to add hook to these entities. Has to be run in @{GM:PostCleanupMap}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/entity_outputs.lua#L17)
---
---@package
function entityOutputs.SetUp() end
