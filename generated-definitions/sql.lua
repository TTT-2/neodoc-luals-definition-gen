---@meta

sql = {}

---[SHARED] Builds a SQL "Insert" @{string}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_sql.lua#L158)
---
---@param tableName string name of the database table
---@param name string ?
---@param tbl table data @{table}
---@param keys table keys for the data @{table}
---@return string #SQL "Insert" @{string}
function sql.BuildInsertString(tableName, name, tbl, keys) end

---[SHARED] Builds a SQL "Update" @{string}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_sql.lua#L189)
---
---@param tableName string name of the database table
---@param name string ?
---@param tbl table data @{table}
---@param keys table keys for the data @{table}
---@return string #SQL "Update" @{string}
function sql.BuildUpdateString(tableName, name, tbl, keys) end

---[SHARED] Checks if the specified column exists in the specified table.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/sql.lua#L16)
---
---@param tableName string The name of the table to search
---@param columnName string The name of the column to check
---@return boolean #Returns true if the column exists in the table
function sql.ColumnExists(tableName, columnName) end

---[SHARED] Creates the database table
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_sql.lua#L218)
---
---@param tableName string the database table name
---@param keys table the keys for the data @{table}
---@return boolean #Whether the database table was created successfully
function sql.CreateSqlTable(tableName, keys) end

---[SHARED] Deletes all contents of the table. This action can not be undone.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/sql.lua#L74)
---
---@param tableName string The name of the table to remove
function sql.DropTable(tableName) end

---[SHARED] Transformes parsed data into usable data Opposite of @{sql.ParseData}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_sql.lua#L24)
---
---@param key string the data you wanna get
---@param data table data with data.typ
---@param res table resource / parsed data
---@return any #usable data
function sql.GetParsedData(key, data, res) end

---[SHARED] Returns the primarykey column names of the specified table in order of their index.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/sql.lua#L33)
---
---@param tableName string The name of the table to search
---@return table|nil #Returns a table of the primarykey columns and nil in case of an error
function sql.GetPrimaryKey(tableName) end

---[SHARED] Returns the column names of the specified table.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/sql.lua#L56)
---
---@param tableName string The name of the table to search
---@return table|nil #Returns a table of the column names and nil in case of an error.
function sql.GetTableColumns(tableName) end

---[SHARED] Initializes a database table and inserts all necessary data
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_sql.lua#L268)
---
---@param tableName string name of the database table
---@param name string ?
---@param tbl table data @{table}
---@param keys table keys for the data @{table}
---@return table #false is returned if there is an error, nil if the query returned no data.
function sql.Init(tableName, name, tbl, keys) end

---[SHARED] Loads a database table and set all necessary data of the data @{table}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_sql.lua#L306)
---
---@param tableName string name of the database table
---@param name string ?
---@param tbl table data @{table}
---@param keys table keys for the data @{table}
---@return table #false is returned if there is an error, nil if the query returned no data.
function sql.Load(tableName, name, tbl, keys) end

---[SHARED] Transformes usable data into parsed data Opposite of @{sql.GetParsedData}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_sql.lua#L80)
---
---@param tbl table table with data
---@param keys table the data you wanna save
---@return any #parsed data
function sql.ParseData(tbl, keys) end

---[SHARED] Transformes a string into a data string (to work with SQL)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_sql.lua#L124)
---
---@return string #data string
function sql.ParseDataString(key, data) end

---[SHARED] Undoes all queries of the last transaction started by `sql.Begin()`. This is equivalent to `sql.Query("Rollback;")`.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/sql.lua#L91)
---
function sql.Rollback() end

---[SHARED] Escapes a string for use as an identifier (tablename, columnname) for sqlite.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/sql.lua#L83)
---
---@param str string The string to escape
---@return string #Returns the escaped string
function sql.SQLIdent(str) end

---[SHARED] Saves/updates all necessary data in the database table.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_sql.lua#L286)
---
---@param tableName string name of the database table
---@param name string ?
---@param tbl table data @{table}
---@param keys table keys for the data @{table}
---@return table #false is returned if there is an error, nil if the query returned no data.
function sql.Save(tableName, name, tbl, keys) end
