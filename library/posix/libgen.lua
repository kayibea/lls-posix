---@meta

---@class libgen
local libgen = {}

---@param path string
---@return string?
---@return string? errmsg
---@return integer? errnum
function libgen.basename(path) end

---@param path string
---@return string?
---@return string? errmsg
---@return integer? errnum
function libgen.dirname(path) end

return libgen
