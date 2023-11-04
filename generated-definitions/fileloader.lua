---@meta

fileloader = {}

---[SHARED] Sets up files by scanning through directories and including them into the runtime.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/fileloader.lua#L29)
---
---@param path string The absolute path to search in, has to end with `/`
---@param deepsearch boolean If true, files are searched one level down inside all available subfolders
---@param realm number The realm where the file should be included
---@param callback function A function that is called after the file is included
---@param preFolderCallback function A function that is called before the load of the given folder is started
---@param postFolderCallback function A function that is called after the load of the given folder is finished
function fileloader.LoadFolder(path, deepsearch, realm, callback, preFolderCallback, postFolderCallback) end
