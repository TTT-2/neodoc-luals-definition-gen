---@meta

PROPSPEC = {}

---[SERVER] Clear any propspec state a @{Player} has. Safe even if @{Player} is not currently spectating.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_propspec.lua#L79)
---
function PROPSPEC.Clear(ply) end

---[SERVER] Stops a @{Player} spectating an @{Entity}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_propspec.lua#L95)
---
function PROPSPEC.End(ply) end

---[SERVER] Triggers an event based on the pressed key
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_propspec.lua#L119)
---
---@param ply Player The @{Player} pressing the key. If running client-side, this will always be @{LocalPlayer}
---@param key number The key that the @{Player} pressed using <a href="https://wiki.facepunch.com/gmod/Enums/IN">IN_Enums</a>.
function PROPSPEC.Key(ply, key) end

---[SERVER] Recharges the amount of punches a @{Player} can do (if possible)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_propspec.lua#L201)
---
function PROPSPEC.Recharge(ply) end

---[SERVER] Forces a @{Player} to spectate an @{Entity}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_propspec.lua#L33)
---
function PROPSPEC.Start(ply, ent) end

---[SERVER] Attempts to force a @{Player} to spectate an @{Entity}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/server/sv_propspec.lua#L60)
---
function PROPSPEC.Target(ply, ent) end
