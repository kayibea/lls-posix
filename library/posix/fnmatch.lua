---@meta

---@class fnmatch
---@field FNM_PATHNAME integer slashes in pathname must be matched by slash in pattern
---@field FNM_NOESCAPE integer disable backslash escaping
---@field FNM_NOMATCH integer match failed
---@field FNM_PERIOD integer periods in pathname must be matched by period in pattern
local fnmatch = {}

---@param pat string
---@param name string
---@param flags? integer
---@return integer
function fnmatch.fnmatch(pat, name, flags) end

return fnmatch
