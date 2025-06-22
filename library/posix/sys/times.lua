---@meta

---@class PosixTms
---@field tms_utime integer time spent executing user instructions
---@field tms_stime integer time spent in system execution
---@field tms_cutime integer sum of *tms_utime* for calling process and its children
---@field tms_cstime integer sum of *tms_stime* for calling process and its childre

---@class times
local times = {}

---@return PosixTms?
---@return string? errmsg
---@return integer? errnum
function times.times() end

return times
