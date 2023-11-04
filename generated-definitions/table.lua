---@meta

table = {}

---[SHARED] This @{function} adds missing values into a table
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/table.lua#L188)
---
function table.AddMissing(target, source, iterable) end

---[SHARED] Returns copy of table with only specific keys copied
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/table.lua#L163)
---
function table.CopyKeys(tbl, keys) end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/table.lua#L359)
---
---@param t table The target table that will be modified
---@param base table The (fallback) base table
---@return table #The modified target table
function table.DeepInherit(t, base) end

---[SHARED] Value equality for tables
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/table.lua#L122)
---
function table.EqualValues(a, b) end

---[SHARED] Returns a random entry of the given @{table}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/table.lua#L255)
---
---@param tbl table the @{table} that contains the data
---@param filterFn nil, function the @{function} that has to return true on the given entry
---@return any #the entry that returned true on the given @{function}
function table.ExtractRandomEntry(tbl, filterFn) end

---[SHARED] Scans the given table for the subtable with the most entries. This then is returned and deleted from the source table. If there are multiple subtables with the same size, the first found will be returned.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/table.lua#L301)
---
---@param The table table whose biggest subtable should be found.
---@return table #The biggest subtable
function table.GetAndRemoveBiggestSubTable(The) end

---[SHARED] Returns the amount of table entries that exist in both tables.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/table.lua#L349)
---
---@param tbl table The table to iterate over
---@param reference table The reference table to compare against
---@return number #The amount of indexes that exist in both tables
function table.GetEqualEntriesAmount(tbl, reference) end

---[SHARED] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/table.lua#L327)
---
---@param tbl table The table to iterate over
---@param reference table The reference table to compare against
---@return table #A table with the keys that exist in both tables
function table.GetEqualEntryKeys(tbl, reference) end

---[SHARED] Get the value from a table with a path that is given as a table of indexes. The method will try to traverse the dataTable and return the value or it will return nil, if a key (even a subpath) is not defined. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/table.lua#L40)
---
---@param dataTable table the table to traverse and search the path in.
---@param path any the table with keys that will be used to traverse the tree (in order).
---@return any #the value at the given path or nil if it does not exist
function table.GetWithPath(dataTable, path) end

---[SHARED] Basic table.HasValue pointer checks are insufficient when checking a table of tables, so this uses table.EqualValues instead.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/table.lua#L143)
---
function table.HasTable(tbl, needle) end

---[SHARED] Checks if a table has a value.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/table.lua#L104)
---
---@param tbl table Table to check
---@param val any Value to search for
---@return boolean #Returns true if the table has that value, false otherwise
function table.HasValue(tbl, val) end

---[SHARED] Randomizes a @{table}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/table.lua#L21)
---
function table.Randomize(t) end

---[SHARED] Removes all empty table entries, making the table sequential again. Use this function to more efficiently removing multiple indices from a sequential table by combining it with a function setting all entries to be removed to nil. Do NOT use table.Remove() or table.RemoveByValue() 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/table.lua#L210)
---
---@param dataTable table the table to traverse and set the value in.
---@param tableSize number the number of entries in dataTable
function table.RemoveEmptyEntries(dataTable, tableSize) end

---[SHARED] Set the value on a table with a path that is given as a table of indexes. This method will traverse the given dataTable and create tables along the path if necessary. It will then set the value in the traversed table. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/table.lua#L68)
---
function table.SetWithPath(dataTable, path, value) end

---[SHARED] Nice Fisher-Yates implementation, from Wikipedia Shuffles a @{table}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/table.lua#L232)
---
---@return table #the given t, but sorted
function table.Shuffle(t) end
