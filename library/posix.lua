---@meta

---@class posix : signal  , unistd, ctype  , dirent
---@class posix : errno   , fcntl , fnmatch, glob
---@class posix : grp     , libgen, poll   , pwd
---@class posix : sched   , stdio , stdlib , sysvmsg
---@class posix : resource, socket, stat
local posix = {}

return posix
