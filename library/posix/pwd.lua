---@meta

---@class PosixPasswd
---@field pw_name string user's login name
---@field pw_uid integer unique user id
---@field pw_gid integer user's default group id
---@field pw_dir string initial working directory
---@field pw_shell string user's login shell path

---@class pwd
local pwd = {}

---Release password database resources.
function pwd.endpwent() end

---Fetch next password entry.
---@return PosixPasswd
function pwd.getpwent() end

---@param name string
---@return PosixPasswd?
---@return string? errmsg
---@return integer? errnum
function pwd.getpwnam(name) end

---Fetch password entry with given user id.
---@param uid integer
---@return PosixPasswd?
---@return string? errmsg
---@return integer? errnum
function pwd.getpwuid(uid) end

---Rewind next getpwent back to start of database.
function pwd.setpwent() end

return pwd
