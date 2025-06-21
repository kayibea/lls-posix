---@meta

---@class glob
---@field GLOB_MARK integer append slashes to matches that are directories.
---@field GLOB_ERR integer instead of ignoring non-readable directories, return GLOB_ABORTED
---@field GLOB_ABORTED integer encountered a non-readable directory
---@field GLOB_NOCHECK integer return the original pattern if there are no matches
---@field GLOB_NOMATCH integer pattern does not match any existing pathname
---@field GLOB_NOSPACE integer not enough memory to continue
local glob = {}

---@param pat? string
---@param flags integer
---@return string[]?
---@return integer?
function glob.glob(pat, flags) end

return glob
