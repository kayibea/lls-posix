---@meta

---@class sched
---@field SCHED_FIFO integer first-in, first-out scheduling policy
---@field SCHED_RR integer round-robin scheduling policy
---@field SCHED_OTHER integer another scheduling policy
local sched = {}

---get scheduling policy
---@param pid? integer process to act on, or 0 for caller process (default 0)
---@return integer? # scheduling policy `SCHED_FIFO`, `SCHED_RR`, `SCHED_OTHER`, if successful
---@return string? errmsg
---@return integer? errnum
function sched.sched_getscheduler(pid) end

---set scheduling policy/priority
---@param pid? integer
---@param policy? integer
---@param priority? integer
---@return integer?
---@return string? errmsg
---@return integer? errnum
function sched.sched_setscheduler(pid, policy, priority) end

return sched
