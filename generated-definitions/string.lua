---@meta

string = {}

---[SHARED] Uppercases the first character only
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/string.lua#L54)
---
function string.Capitalize(str) end

---[SHARED] Simple string interpolation: string.Interp("{killer} killed {victim}", {killer = "Bob", victim = "Joe"}) returns "Bob killed Joe" No spaces or special chars in parameter name, just alphanumerics.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/string.lua#L67)
---
function string.Interp(str, tbl) end

---[SHARED] Split a string into smaller strings. This will split a given string in parts, with a maximum size of the given splitSize. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/string.lua#L22)
---
---@param str string The string to operate on.
---@param splitSize number This is the size, after which the string is split.
---@return table #The table that contains the strings.
function string.SplitAtSize(str, splitSize) end
