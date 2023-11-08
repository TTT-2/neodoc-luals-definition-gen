---@meta


---[CLIENT] Checks whether an hud element's aspect ratio is locked. Override it to change the behaviour.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/hud_elements/base_elements/hud_element_base/cl_init.lua#L165)
---
function HUDELEMENT:AspectRatioIsLocked() end

---[CLIENT] This function is called when an element should draw its content. Please use this function only to draw your element and dont calculate any values if not explicitly needed.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/hud_elements/base_elements/hud_element_base/cl_init.lua#L134)
---
function HUDELEMENT:Draw() end

---[CLIENT] Override this function to determine how your element i will be drawn, given a position and size
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/hud_elements/base_elements/base_stacking_element.lua#L60)
---
function HUDELEMENT:DrawElement(i, x, y, w, h) end

---[CLIENT] Checks whether an hud element's borders are inherited by it's parent. Override it to change the resizing behaviour.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/hud_elements/base_elements/hud_element_base/cl_init.lua#L175)
---
function HUDELEMENT:InheritParentBorder() end

---[CLIENT] Checks whether an hud element is resizeable. Override it to change the resizing behaviour.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/hud_elements/base_elements/hud_element_base/cl_init.lua#L155)
---
function HUDELEMENT:IsResizable() end

---[CLIENT] This function is called after all @{HUDELEMENT:Initialize} functions and whenever the layout was changed, i.e., size, position.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/hud_elements/base_elements/hud_element_base/cl_init.lua#L185)
---
function HUDELEMENT:PerformLayout() end

---[CLIENT] This function will be called after all hud elements have been loaded and are registered. But be aware that the elements are still "raw", so they did not execute any code or set any of their properties correct. Use this function for example to register your child -> parent relation, by calling @{hudelements.RegisterChildRelation}(childid, parentid, parent_is_type) and also to force your element to a specific HUD if needed etc...
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/hud_elements/base_elements/hud_element_base/cl_init.lua#L97)
---
function HUDELEMENT:PreInitialize() end

---[CLIENT] This function is called to decide whether or not an element should be drawn. Override it to let your element be drawn only in specific situations.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/hud_elements/base_elements/hud_element_base/cl_init.lua#L144)
---
function HUDELEMENT:ShouldDraw() end
