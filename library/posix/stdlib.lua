---@meta

---@class stdlib
local stdlib = {}

---Abort the program immediately.
function stdlib.abort() end

---@param name string
---@return string?
function stdlib.getenv(name) end

---@return table<string, string>
function stdlib.getenv() end

---@param fd integer
---@return integer?
---@return string? errmsg
---@return integer? errnum
function stdlib.grantpt(fd) end

---@param templ string
---@return string?
---@return string? errmsg
---@return integer? errnum
function stdlib.mkdtemp(templ) end

---@param templ string
---@return integer?
---@return string?
function stdlib.mkstemp(templ) end

---@param templ string
---@return nil
---@return string errmsg
---@return integer errnum
function stdlib.mkstemp(templ) end

---@param oflags integer
---@return integer?
---@return string? errmsg
---@return integer? errnum
function stdlib.openpt(oflags) end

---@param fd integer
---@return string?
---@return string? errmsg
---@return integer? errnum
function stdlib.ptsname(fd) end

---@param path string
---@return string?
---@return string? errmsg
---@return integer? errnum
function stdlib.realpath(path) end

---@param name string
---@param value? string
---@param overwrite? any
---@return integer?
---@return string? errmsg
---@return integer? errnum
function stdlib.setenv(name, value, overwrite) end

---@param fd integer
---@return integer?
---@return string? errmsg
---@return integer? errnum
function stdlib.unlockpt(fd) end

return stdlib
