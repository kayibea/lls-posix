---@meta

---@class PosixGroup
---@field gr_mem string[] a list of group members
---@field gr_name string name of group
---@field gr_gid integer unique group id

---@class grp
local grp = {}

---Release group database resources.
function grp.endgrent() end

---@return PosixGroup
function grp.getgrent() end

---@param gid integer
---@return PosixGroup?
---@return string? errmsg
---@return integer? errnum
function grp.getgrgid(gid) end

---@param name string
---@return PosixGroup?
---@return string? errmsg
---@return integer? errnum
function grp.getgrnam(name) end

---Rewind next `getgrent` back to start of database.
function grp.setgrent() end

return grp
