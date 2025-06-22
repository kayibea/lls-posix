---@meta

---@class PosixUtsname
---@field machine string hardware platform name
---@field nodename string network node name
---@field release string operating system release level
---@field sysname string operating system name
---@field version string operating system version

---@class utsname
local utsname = {}

---@return PosixUtsname?
---@return string? errmsg
---@return integer? errnum
function utsname.uname() end

return utsname
