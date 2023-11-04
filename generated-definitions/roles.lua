---@meta

roles = {}

---[SHARED] Generates a new subrole id. New roles will start at the id: <code>7</code> <ul> <li><code>0</code> = <code>ROLE_INNOCENT</code></li> <li><code>1</code> = <code>ROLE_TRAITOR</code></li> <li><code>2</code> = <code>ROLE_DETECTIVE</code></li> <li><code>3</code> = <code>ROLE_NONE</code></li> <li><code>4</code>, <code>5</code>, <code>6</code> = <code>nop</code></li> </ul>
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L326)
---
---@return number #new generated subrole id
function roles.GenerateNewRoleID() end

---[SHARED] Get a role by name (a copy)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L256)
---
---@param name string role name
---@param retTbl table this table will be modified and returned. If nil, a new table will be created.
---@return table #returns the modified retTbl or the new role table
function roles.Get(name, retTbl) end

---[SHARED] Get a list of all available teams
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L507)
---
---@return table #returns a list of all available teams
function roles.GetAvailableTeams() end

---[SHARED] Get the role table by the role abbreviation
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L369)
---
---@param abbr string role abbreviation
---@return table #returns the role table. This will return the <code>NONE</code> role table as fallback.
function roles.GetByAbbr(abbr) end

---[SHARED] Get the role table by the role id
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L345)
---
---@param index number subrole id
---@param A table fallback table that is used if the role is not found
---@return table #returns the role table. This will return the <code>NONE</code> role table as fallback.
function roles.GetByIndex(index, A) end

---[SHARED] Get the role table by the role name
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L360)
---
---@param name string role name
---@return table #returns the role table. This will return the <code>NONE</code> role table as fallback.
function roles.GetByName(name) end

---[SHARED] Get the default role table of a specific role team
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L438)
---
---@param team string role team name
---@return table #returns the role table. This will return the <code>NONE</code> role table as fallback.
function roles.GetDefaultTeamRole(team) end

---[SHARED] Get the default role tables of a specific role team
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L457)
---
---@param team string role team name
---@return table #returns the role tables. This will return the <code>NONE</code> role table as well as its subrole tables as fallback.
function roles.GetDefaultTeamRoles(team) end

---[SHARED] Returns a list of all the registered roles
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L299)
---
---@return table #all registered roles
function roles.GetList() end

---[SHARED] Get a sorted list of roles that have access to a shop
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L413)
---
---@return table #list of roles that have access to a shop
function roles.GetShopRoles() end

---[SHARED] Get a sorted list of all roles
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L526)
---
---@return table #returns a list of all roles
function roles.GetSortedRoles() end

---[SHARED] Gets the real role table (not a copy)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L291)
---
---@param name string role name
---@return table #returns the real role table
function roles.GetStored(name) end

---[SHARED] Get a list of team members
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L466)
---
---@param team string role team name
---@return table #returns the member table of a role team.
function roles.GetTeamMembers(team) end

---[SHARED] Get a list of all teams that are able to win
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L488)
---
---@return table #returns a list of all teams that are able to win
function roles.GetWinTeams() end

---[SHARED] Automatically initializes a new role team. This will generate the global var <code>TEAM_[NAME]</code>
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L385)
---
---@param name string role team name
---@param data table role team data
function roles.InitCustomTeam(name, data) end

---[SHARED] Checks if name is based on base
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L42)
---
---@param name table table to check
---@param base table base (fallback) table
---@return boolean #returns whether name is based on base
function roles.IsBasedOn(name, base) end

---[SHARED] Used to register your role with the engine.<br /> <b>This is done automatically for all the files in the <code>lua/terrortown/entities/roles</code> folder</b>
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L184)
---
---@param t table role table
---@param name string role name
function roles.Register(t, name) end

---[SHARED] Connects a SubRole with its BaseRole.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L549)
---
---@param roleTable ROLE the role table (of the SubRole)
---@param baserole ROLE the BaseRole
function roles.SetBaseRole(roleTable, baserole) end

---[SHARED] Sorts a role table
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/roles.lua#L401)
---
---@param tbl table table to sort
function roles.SortTable(tbl) end
