---@meta

game = {}

---[SERVER] Registers a new decal. When called on the server, the decal is registered on both client and server.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_decal.lua#L115)
---
---@param decalName string The name of the decal
---@param materialName string The material to be used for the decal. May also be a list of material names, in which case a random material from that list will be chosen every time the decal is placed.
function game.AddDecal(decalName, materialName) end
