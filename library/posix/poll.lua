---@meta

---@class poll
local poll = {}

---@param fds integer[]
---@param timeout? integer
---@return integer?
---@return string? errmsg
---@return integer? errnum
function poll.poll(fds, timeout) end

---@param fd integer
---@param timeout? integer
---@return integer?
---@return string? errmsg
---@return integer? errnum
function poll.rpoll(fd, timeout) end

return poll
