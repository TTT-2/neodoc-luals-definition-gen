---@meta

draw = {}

---[CLIENT] Draws an advanced text (scalable)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L413)
---
---@param text string The text to be drawn
---@param font string The font. See @{surface.CreateAdvancedFont} to create your own. The original font should be always created, see @{surface.CreateFont}.
---@param x number The x coordinate
---@param y number The y coordinate
---@param color Color The color of the text. Uses the Color structure.
---@param xalign number The alignment of the x coordinate using <a href="https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN">TEXT_ALIGN_Enums</a>.
---@param yalign number The alignment of the y coordinate using <a href="https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN">TEXT_ALIGN_Enums</a>.
---@param shadow boolean whether there should be a shadow of the text
---@param scale number The text scale (float number)
---@param angle number The rotational angle in degree
function draw.AdvancedText(text, font, x, y, color, xalign, yalign, shadow, scale, angle) end

---[CLIENT] Draws a box that uses the remaining screenspace as a blurred background.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L345)
---
---@param x number The vertical position
---@param y number The horizontal position
---@param w number width The width in reference to the vertical position
---@param h number height The height in reference to the horizontal position
---@param fraction number The blur fraction. The higher, the blurrier
function draw.BlurredBox(x, y, w, h, fraction) end

---[CLIENT] A function to draw a simple rectilinear box.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L86)
---
---@param x number The x position to start the box
---@param y number The y position to start the box
---@param w number The width of the box
---@param h number The height of the box
---@param color Color The color of the box
function draw.Box(x, y, w, h, color) end

---[CLIENT] fetches the avatar material for a steamid64 when an avatar is found it will be cached
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/autorun/client/b-draw_lib.lua#L83)
---
---@param id64 string the steamid64
---@param size string the avatar's size, this can be <code>small</code>, <code>medium</code> or <code>large</code>
function draw.CacheAvatar(id64, size) end

---[CLIENT] Draws a circle around a provided center point with a given radius.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L166)
---
---@param x number The center x position to start the circle
---@param y number The center y position to start the circle
---@param radius number The radius of the circle
---@param color Color The color of the circle
function draw.Circle(x, y, radius, color) end

---[CLIENT] Draws a filtered textured rectangle / image / icon with shadow.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L321)
---
function draw.FilteredShadowedTexture(x, y, w, h, material, alpha, col, scale) end

---[CLIENT] Draws a filtered textured rectangle / image / icon.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L297)
---
function draw.FilteredTexture(x, y, w, h, material, alpha, col) end

---[CLIENT] fetches and returns the avatar material for a steamid64 when an avatar is found it will be cached
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/autorun/client/b-draw_lib.lua#L174)
---
---@param id64 string the steamid64
---@param size string the avatar's size, this can be <code>small</code>, <code>medium</code> or <code>large</code>
function draw.GetAvatarMaterial(id64, size) end

---[CLIENT] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L557)
---
---@param text string The text that the length should be calculated
---@param font string The font ID
---@return number,number #w, h The size of the given text
function draw.GetTextSize(text, font) end

---[CLIENT] Returns a list of lines to wrap the text matching the given width. Also breaks the string at new line characters.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L524)
---
---@param text string The text that should be wrapped
---@param width number The maximal width that the text is allowed to have
---@param font string The font that should be used here
---@param scale number The UI scale factor
---@return table #A table with the broken up lines
function draw.GetWrappedText(text, width, font, scale) end

---[CLIENT] A function to draw an outlined box with a shadow.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L209)
---
---@param startX number The x position to start the line
---@param startY number The y position to start the line
---@param endX number The x position to end the line
---@param endY number The y position to end the line
---@param color Color The color of the line
function draw.Line(startX, startY, endX, endY, color) end

---[CLIENT] A function to draw an outlined box with a definable width.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L44)
---
---@param x number The x position of the rectangle
---@param y number The y position of the rectangle
---@param w number The width of the rectangle
---@param h number The height of the rectangle
---@param t number The thickness of the line
---@param color Color The color of the line
function draw.OutlinedBox(x, y, w, h, t, color) end

---[CLIENT] A function to draw a circle outline.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L126)
---
---@param x number The center x position to start the circle
---@param y number The center y position to start the circle
---@param r number The radius of the circle
---@param color Color The color of the circle
function draw.OutlinedCircle(x, y, r, color) end

---[CLIENT] A function to draw an outlined box with a shadow.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L66)
---
---@param x number The x position of the rectangle
---@param y number The y position of the rectangle
---@param w number The width of the rectangle
---@param h number The height of the rectangle
---@param t number The thickness of the line
---@param color Color The color of the line
function draw.OutlinedShadowedBox(x, y, w, h, t, color) end

---[CLIENT] A function to draws a circle outline with a shadow.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L143)
---
---@param x number The center x position to start the circle
---@param y number The center y position to start the circle
---@param r number The radius of the circle
---@param color Color The color of the circle
---@param scale number A scaling factor that is used for the shadows
function draw.OutlinedShadowedCircle(x, y, r, color, scale) end

---[CLIENT] 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/autorun/client/b-draw_lib.lua#L139)
---
function draw.SeamlessWebImage(url, parentwidth, parentheight, xrep, yrep, color) end

---[CLIENT] A function to draws a simple shadowed rectilinear box.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L103)
---
---@param x number The x position to start the box
---@param y number The y position to start the box
---@param w number The width of the box
---@param h number The height of the box
---@param color Color The color of the box
---@param scale number A scaling factor that is used for the shadows
function draw.ShadowedBox(x, y, w, h, color, scale) end

---[CLIENT] A function to draw a circle with a shadow.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L185)
---
---@param x number The center x position to start the circle
---@param y number The center y position to start the circle
---@param r number The radius of the circle
---@param color Color The color of the circle
---@param scale number A scaling factor that is used for the shadows
function draw.ShadowedCircle(x, y, r, color, scale) end

---[CLIENT] A function to draw an outlined box with a shadow.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L225)
---
---@param startX number The x position to start the line
---@param startY number The y position to start the line
---@param endX number The x position to end the line
---@param endY number The y position to end the line
---@param color Color The color of the line
function draw.ShadowedLine(startX, startY, endX, endY, color) end

---[CLIENT] Draws a shadowed text on the screen.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L380)
---
---@param text string The text to be drawn
---@param font nil, string The font. See @{surface.CreateFont} to create your own, or see <a href="https://wiki.facepunch.com/gmod/Default_Fonts">Default</a> Fonts for a list of default fonts
---@param x number The X Coordinate
---@param y number The Y Coordinate
---@param color Color The color of the text. Uses the Color structure.
---@param xalign number The alignment of the X coordinate using <a href="https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN">TEXT_ALIGN_Enums</a>.
---@param yalign number The alignment of the Y coordinate using <a href="https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN">TEXT_ALIGN_Enums</a>.
---@param scale number The scale (float number)
function draw.ShadowedText(text, font, x, y, color, xalign, yalign, scale) end

---[CLIENT] Draws a textured rectangle / image / icon with shadow.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L271)
---
function draw.ShadowedTexture(x, y, w, h, material, alpha, col, scale) end

---[CLIENT] Draws a SteamAvatar while caching it before
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/autorun/client/b-draw_lib.lua#L163)
---
function draw.SteamAvatar(id64, size, x, y, width, height, color, angle, cornerorigin) end

---[CLIENT] Draws a textured rectangle / image / icon.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/draw.lua#L247)
---
function draw.Texture(x, y, w, h, material, alpha, col) end

---[CLIENT] Draws a WebImage
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/autorun/client/b-draw_lib.lua#L126)
---
function draw.WebImage(url, x, y, width, height, color, angle, cornerorigin) end
