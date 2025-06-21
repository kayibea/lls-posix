---@meta

---@class dirent
local dirent = {}

---@param path? string
---@return string[]
function dirent.dir(path) end

---@param path? string
---@return fun(): string
function dirent.files(path) end

return dirent
