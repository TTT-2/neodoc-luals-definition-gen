---@meta

classbuilder = {}

---[SHARED] Builds a class from a file in a given scope. Uses the @{fileloader} to load files from a folder that are loaded as classes. Supports inheriting from base class.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/classbuilder.lua#L61)
---
---@param path string The absolute path to search in, has to end with `/`
---@param realm number The realm where the file should be included
---@param scope string The scope where the new class will be registered, for example `ITEM`
---@param OnInitialization function This callback function is called on initialization of the class
---@param shouldInherit boolean Set this to true if this class should inherit from its base
---@param SpecialCheck function A function that makes a special check, inheritance is blocked if false is returned
---@param passthrough table A table that can be passed through if the classdata table should be extended
---@param PostInherit function A callback function that is called for all classes post inheritance
---@return table #Returns a table of all the created classes
function classbuilder.BuildFromFolder(path, realm, scope, OnInitialization, shouldInherit, SpecialCheck, passthrough, PostInherit) end
