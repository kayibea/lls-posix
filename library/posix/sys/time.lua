---@meta

---@class PosixTimeval
---@field tv_sec integer seconds elapsed
---@field tv_usec integer remainder in microseconds

---@class time
local time = {}

---@return PosixTimeval?
---@return string? errmsg
---@return integer? errnum
function time.gettimeofday() end

return time
