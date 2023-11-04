---@meta

bind = {}

---[CLIENT] Add a binding to run a command when the button is pressed. This function is not used to register a new binding shown in the UI, but to bind a specific key to a command
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/bind.lua#L356)
---
function bind.Add(btn, name, persistent) end

---[CLIENT] Adds an entry to the bind.settingsBindings table, to easily present them eg. in a GUI.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/bind.lua#L296)
---
function bind.AddSettingsBinding(name, label, category, defaultKey) end

---[CLIENT] Finds the first button associated with a specific binding and returns the button. Returns KEY_NONE if no button is found.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/bind.lua#L198)
---
function bind.Find(name) end

---[CLIENT] Finds all buttons associated with a specific binding and returns the buttons. Returns an empty table if no button is found.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/bind.lua#L219)
---
function bind.FindAll(name) end

---[CLIENT] Returns the bind.settingsBindings table.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/bind.lua#L386)
---
function bind.GetSettingsBindings() end

---[CLIENT] Returns the bind.settingsBindingsCategories table.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/bind.lua#L394)
---
function bind.GetSettingsBindingsCategories() end

---[CLIENT] Returns a table of all the bindings
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/bind.lua#L188)
---
function bind.GetTable() end

---[CLIENT] Whether or not this bind has been pressed and was not yet released.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/bind.lua#L240)
---
function bind.IsPressed(name) end

---[CLIENT] Register a function to run when the button for a specific binding is pressed. This will also add the binding to the BindingsCategories with the default category, otherwise set dontShowOrCategory to true. If you wish to set a custom category name then set dontShowOrCategory to the category name and optionally also set the label you wish to be displayed. You can set a default key as well, so players don't need to bind manually if they don't want to. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/bind.lua#L335)
---
function bind.Register(name, OnPressed, OnReleased, dontShowOrCategory, settingsLabel, defaultKey) end

---[CLIENT] Removes the binding (button) with the given identifier.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/bind.lua#L260)
---
function bind.Remove(btn, name, persistent) end

---[CLIENT] Removes all bindings (buttons) associated with the given identifier.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/bind.lua#L279)
---
function bind.RemoveAll(name, persistent) end

---[CLIENT] Add a binding to run when the button is pressed and clears all previous buttons that are associated with this identifier.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/libraries/bind.lua#L375)
---
function bind.Set(btn, name, persistent) end
