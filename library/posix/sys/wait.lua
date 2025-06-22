---@meta


---@class wait
---@field WNOHANG integer don't block waiting
---@field WUNTRACED integer report status of stopped children
local wait = {}


---@param pid integer?
---@param options integer?
---@return integer
---@return 'running' | 'exited' | 'killed' | 'stopped'
function wait.wait(pid, options) end

---@param pid integer?
---@param options integer?
---@return nil
---@return string errmsg
---@return integer errnum
function wait.wait(pid, options) end

return wait
