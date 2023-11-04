---@meta

---@class MSTACK
MSTACK = {}

---[CLIENT] Adds a message with a colored background into the message stack
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_msgstack.lua#L34)
---
function MSTACK:AddColoredBgMessage(text, bg_clr) end

---[CLIENT] Adds a message with an image into the message stack
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_msgstack.lua#L64)
---
function MSTACK:AddColoredImagedMessage(text, bg_clr, image, title) end

---[CLIENT] Adds a colored message into the message stack
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_msgstack.lua#L21)
---
function MSTACK:AddColoredMessage(text, c) end

---[CLIENT] Adds a message with an image into the message stack
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_msgstack.lua#L48)
---
function MSTACK:AddImagedMessage(text, image, title) end

---[CLIENT] Add a given message to the stack, will be rendered in a different color if it is a special traitor-only message that traitors should pay attention to. Use the newer AddColoredMessage if you want special colours.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_msgstack.lua#L102)
---
function MSTACK:AddMessage(text, traitor_only) end

---[CLIENT] Adds a custom styled message into the message stack
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_msgstack.lua#L80)
---
---@package
function MSTACK:AddMessageEx(item) end
