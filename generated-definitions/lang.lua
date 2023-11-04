---@meta

LANG = {}

---[CLIENT] Adds a string to a language.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L68)
---
---@param langName string The new language name
---@param stringName string The string key identifier for the translated @{string}
---@param stringText string The translated @{string} text
---@return string #The inserted stringName parameter
function LANG.AddToLanguage(langName, stringName, stringText) end

---[CLIENT] Creates a new language
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L34)
---
---@param langName string The new language name
---@return table #initialized language table that should be extended with translated @{string}s
function LANG.CreateLanguage(langName) end

---[CLIENT] Returns the identifier of the currently active language.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L524)
---
---@return string #The name of the active language
function LANG.GetActiveLanguageName() end

---[CLIENT] Returns the coverage in percent of the given language compared to the default language (english).
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L507)
---
---@param langName string The name of the language in question
---@return number #The coverage in percent
function LANG.GetDefaultCoverage(langName) end

---[CLIENT] Returns a copy of a selected language table.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L247)
---
---@param langName string The language name
function LANG.GetLanguageTable(langName) end

---[CLIENT] Returns the reference to a language table if it exists, creates a new language if it did not exist.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L231)
---
---@param langName string The string key identifier of the language
function LANG.GetLanguageTableReference(langName) end

---[CLIENT] Get a copy of all available languages (keys in the Strings tbl)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L372)
---
function LANG.GetLanguages() end

---[CLIENT] Caused by a recent rename of the language names, old addons lost compatibility. To prevent annoyance, a compatibility mode is introduced.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L189)
---
---@param langName string The string key identifier of the language
---@return string|nil #The language name in the new format
---@package
function LANG.GetNameFromAlias(langName) end

---[CLIENT] Returns the translated @{string} text (if available).<br />String <a href="http://lua-users.org/wiki/StringInterpolation">interpolation</a> is allowed<br /> Parameterised version, performs string interpolation. Slower than @{LANG.GetTranslation}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L145)
---
function LANG.GetPTranslation(name, params) end

---[CLIENT] Returns the translated @{string} text (if available).<br />String <a href="http://lua-users.org/wiki/StringInterpolation">interpolation</a> is allowed<br /> Parameterised version, performs string interpolation. Slower than @{LANG.GetTranslation}.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L128)
---
---@return nil|string #The translated string
function LANG.GetParamTranslation(name, params) end

---[CLIENT] Returns the translated @{string} text (if available) or an available fallback Lookup with no error upon failback, just nil. Slightly slower, but best way to handle lookup of strings that may legitimately fail to exist (eg. SWEP-defined).
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L100)
---
---@param name string string key identifier for the translated @{string}
function LANG.GetRawTranslation(name) end

---[CLIENT] Access of message styles
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L436)
---
---@param name string style name
---@param mode number The print mode
---@return function #style table
function LANG.GetStyle(name, mode) end

---[CLIENT] Returns the translated name of the given language.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L165)
---
---@param langName string The identifier of the language
---@return string #The translated name of the language
function LANG.GetTranslatedLanguageName(langName) end

---[CLIENT] Returns the translated @{string} text (if available)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L88)
---
---@param name string string key identifier for the translated @{string}
function LANG.GetTranslation(name) end

---[CLIENT] Returns the translated @{string} text of a given language (if available)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L154)
---
---@param name string string key identifier for the translated @{string}
---@param langName string The language name
function LANG.GetTranslationFromLanguage(name, langName) end

---[CLIENT] Returns the currently cached language table
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L177)
---
function LANG.GetUnsafeLanguageTable() end

---[CLIENT] Returns the reference to a language table if it exists.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L214)
---
---@param langName string The string key identifier of the language
function LANG.GetUnsafeNamed(langName) end

---[CLIENT] Initializes the language service
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L317)
---
---@package
function LANG.Init() end

---[CLIENT] Returns whether the given language is a valid language (already exists)
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L346)
---
---@param langName string The language name
---@return table #The language table, same as @{LANG.GetUnsafeNamed}, but without @{nil} check and without automatic string lowering
function LANG.IsLanguage(langName) end

---[CLIENT] Returns whether the given language name is the default server language
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L334)
---
---@param langName string The language name
function LANG.IsServerDefault(langName) end

---[CLIENT] Styles a previously translated message
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L479)
---
function LANG.ProcessMsg(name, params, mode) end

---[CLIENT] Switches the active language
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L281)
---
---@param langName string The new language name
function LANG.SetActiveLanguage(langName) end

---[CLIENT] Initializes a fallback table for a given language table.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L261)
---
function LANG.SetFallback(tbl) end

---[CLIENT] Set a style by name or directly as style-function
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L454)
---
---@param name string style name
---@param style string, number, function style name or @{function}
function LANG.SetStyle(name, style) end

---[CLIENT] Runs the style function for a given text
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L469)
---
function LANG.ShowStyledMsg(text, style) end

---[CLIENT] Returns the translated @{string} text (if available) or the name parameter if not available
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/client/cl_lang.lua#L112)
---
---@param name string string key identifier for the translated @{string}
---@return nil|string #raw translated @{string} or the name parameter if not available
function LANG.TryTranslation(name) end

---[SERVER] Sends a message to (a) specific target(s) in their selected language
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_lang.lua#L49)
---
function LANG.Msg(arg1, arg2, arg3, arg4) end

---[SERVER] Sends a message to all players in their selected language
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_lang.lua#L108)
---
---@param name string the translation key name
---@param params any params
---@param mode number [MSG_MSTACK_ROLE, MSG_MSTACK_WARN, MSG_MSTACK_PLAIN, MSG_CHAT_ROLE, MSG_CHAT_WARN, MSG_CHAT_PLAIN, MSG_CONSOLE]
---@package
function LANG.MsgAll(name, params, mode) end

---[SERVER] Sends a message to (a) specific target(s) in their selected language
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_lang.lua#L68)
---
---@param send_to table, Player the target(s) that should receive this message
---@param name string the translation key name
---@param params any params
---@param mode number [MSG_MSTACK_ROLE, MSG_MSTACK_WARN, MSG_MSTACK_PLAIN, MSG_CHAT_ROLE, MSG_CHAT_WARN, MSG_CHAT_PLAIN, MSG_CONSOLE]
---@package
function LANG.ProcessMsg(send_to, name, params, mode) end

---[SHARED] Returns the matches based on the transformation of @{LANG.NameParam}
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_lang.lua#L186)
---
---@return table #list of matched params
function LANG.GetNameParam(str) end

---[SHARED] It can be useful to send string names as params, that the client can then localize before interpolating. However, we want to prevent user input like nicknames from being localized, so mark string names with something users can't input.
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/gamemodes/terrortown/gamemode/shared/sh_lang.lua#L175)
---
---@return string #transformed name
function LANG.NameParam(name) end
