---@meta

---@class ctype
local ctype = {}

---@param character string
---@return integer
function ctype.isgraph(character) end

---@param character string
---@return integer
function ctype.isprint(character) end

return ctype
