---@meta

---@class PosixRlimit
---@field rlim_cur integer current soft limit
---@field rlim_max integer hard limit

---@class resource
---@field RLIM_INFINITY integer unlimited resource usage
---@field RLIM_SAVED_CUR integer saved current resource soft limit
---@field RLIM_SAVED_MAX integer saved resource hard limit
---@field RLIMIT_CORE integer maximum bytes allowed for a core file
---@field RLIMIT_CPU integer maximum cputime secconds allowed per process
---@field RLIMIT_DATA integer maximum data segment bytes per process
---@field RLIMIT_FSIZE integer maximum bytes in any file
---@field RLIMIT_NOFILE integer maximum number of open files per process
---@field RLIMIT_STACK integer maximum stack segment bytes per process
---@field RLIMIT_AS integer maximum bytes total address space per process
local resource = {}

---@param res integer
---@return PosixRlimit
function resource.getrlimit(res) end

---@param res integer
---@return nil
---@return string errmsg
---@return integer errnum
function resource.getrlimit(res) end

---@param res integer
---@param softlimit integer?
---@param hardlimit integer?
---@return integer?
---@return string? errmsg
---@return integer? errnum
function resource.setrlimit(res, softlimit, hardlimit) end

return resource
