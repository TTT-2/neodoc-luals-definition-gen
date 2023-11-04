---@meta

drawsc = {}

---[CLIENT] Draws an advanced text (scalable) with a drop shadow
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/drawsc.lua#L198)
---
---@param text string The text to be drawn
---@param font string The font. See @{surface.CreateAdvancedFont} to create your own. The original font should be always created, see @{surface.CreateFont}.
---@param x number The x coordinate
---@param y number The y coordinate
---@param color Color The color of the text. Uses the Color structure.
---@param xalign number The alignment of the x coordinate using <a href="https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN">TEXT_ALIGN_Enums</a>.
---@param yalign number The alignment of the y coordinate using <a href="https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN">TEXT_ALIGN_Enums</a>.
---@param angle number The rotational angle in degree
function drawsc.AdvancedShadowedText(text, font, x, y, color, xalign, yalign, angle) end

---[CLIENT] Draws an advanced text (scalable)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/drawsc.lua#L177)
---
---@param text string The text to be drawn
---@param font string The font. See @{surface.CreateAdvancedFont} to create your own. The original font should be always created, see @{surface.CreateFont}.
---@param x number The x coordinate
---@param y number The y coordinate
---@param color Color The color of the text. Uses the Color structure.
---@param xalign number The alignment of the x coordinate using <a href="https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN">TEXT_ALIGN_Enums</a>.
---@param yalign number The alignment of the y coordinate using <a href="https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN">TEXT_ALIGN_Enums</a>.
---@param angle number The rotational angle in degree
function drawsc.AdvancedText(text, font, x, y, color, xalign, yalign, angle) end

---[CLIENT] Draws a box that uses the remaining screenspace as a blurred background.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/drawsc.lua#L213)
---
---@param x number The vertical position
---@param y number The horizontal position
---@param w number width The width in reference to the vertical position
---@param h number height The height in reference to the horizontal position
---@param fraction number The blur fraction. The higher, the blurrier
function drawsc.BlurredBox(x, y, w, h, fraction) end

---[CLIENT] A function to draws a simple box without a corner radius
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/drawsc.lua#L74)
---
---@param x number The x position to start the box
---@param y number The y position to start the box
---@param w number The width of the box
---@param h number The height of the box
---@param color Color The color of the box
function drawsc.Box(x, y, w, h, color) end

---[CLIENT] Draws a filtered textured rectangle / image / icon with shadow
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/drawsc.lua#L156)
---
---@param x number The horizontal position
---@param y number The vertical position
---@param w number width The width
---@param h number height The height
---@param material Material The material
---@param alpha number The opacity of the material
---@param col Color the alpha value will be ignored
function drawsc.FilteredShadowedTexture(x, y, w, h, material, alpha, col) end

---[CLIENT] Draws a filtered textured rectangle / image / icon
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/drawsc.lua#L138)
---
---@param x number The horizontal position
---@param y number The vertical position
---@param w number width The width
---@param h number height The height
---@param material Material The material
---@param alpha number The opacity of the material
---@param col Color the alpha value will be ignored
function drawsc.FilteredTexture(x, y, w, h, material, alpha, col) end

---[CLIENT] A function to draw an outlined box with a definable width
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/drawsc.lua#L41)
---
---@param x number The x position of the outlined box
---@param y number The y position of the outlined box
---@param w number The width of the outlined box
---@param h number The height of the outlined box
---@param t number The thickness of the outline
---@param color Color The color of the line
function drawsc.OutlinedBox(x, y, w, h, t, color) end

---[CLIENT] A function to draws a circle outline
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/drawsc.lua#L105)
---
---@param x number The center x position to start the circle
---@param y number The center y position to start the circle
---@param r number The radius of the circle
---@param color Color The color of the circle
function drawsc.OutlinedCircle(x, y, r, color) end

---[CLIENT] A function to draw an outlined box with a shadow
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/drawsc.lua#L58)
---
---@param x number The x position of the rectangle
---@param y number The y position of the rectangle
---@param w number The width of the rectangle
---@param h number The height of the rectangle
---@param t number The thickness of the line
---@param color Color The color of the line
function drawsc.OutlinedShadowedBox(x, y, w, h, t, color) end

---[CLIENT] A function to draws a circle outline with a shadow
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/drawsc.lua#L120)
---
---@param x number The center x position to start the circle
---@param y number The center y position to start the circle
---@param r number The radius of the circle
---@param color Color The color of the circle
function drawsc.OutlinedShadowedCircle(x, y, r, color) end

---[CLIENT] A function to draws a simple shadowed box without a corner radius
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/drawsc.lua#L90)
---
---@param x number The x position to start the box
---@param y number The y position to start the box
---@param w number The width of the box
---@param h number The height of the box
---@param color Color The color of the box
function drawsc.ShadowedBox(x, y, w, h, color) end
