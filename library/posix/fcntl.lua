---@meta

---@class flock
---@field l_start integer starting offset
---@field l_len integer len = 0 means until end of file
---@field l_pid integer lock owner
---@field l_type integer lock type
---@field l_whence integer one of SEEK_SET, SEEK_CUR or SEEK_END

---@class fcntl
---@field AT_EACCESS integer test access permitted for effective IDs, not real IDs
---@field AT_FDCWD integer indicate *at functions to use current directory
---@field AT_REMOVEDIR integer remove directory instead of unlinking file
---@field AT_SYMLINK_FOLLOW integer follow symbolic links
---@field AT_SYMLINK_NOFOLLOW integer do not follow symbolic links
---@field FD_CLOEXEC integer close file descriptor on exec flag
---@field F_DUPFD integer duplicate file descriptor
---@field F_GETFD integer get file descriptor flags
---@field F_SETFD integer set file descriptor flags
---@field F_GETFL integer get file status flags
---@field F_SETFL integer set file status flags
---@field F_GETLK integer get record locking information
---@field F_SETLK integer set record locking information
---@field F_SETLKW integer set lock, and wait if blocked
---@field F_GETOWN integer get SIGIO/SIGURG process owner
---@field F_SETOWN integer set SIGIO/SIGURG process owner
---@field F_RDLCK integer shared or read lock
---@field F_WRLCK integer exclusive or write lock
---@field F_UNLCK integer unlock
---@field O_RDONLY integer open for reading only
---@field O_WRONLY integer open for writing only
---@field O_RDWR integer open for reading and writing
---@field O_APPEND integer set append mode
---@field O_CLOEXEC integer set FD_CLOEXEC atomically
---@field O_CREAT integer create if nonexistent
---@field O_DSYNC integer synchronise io data integrity
---@field O_EXCL integer error if file already exists
---@field O_NOCTTY integer don't assign controlling terminal
---@field O_NONBLOCK integer no delay
---@field O_RSYNC integer synchronise file read integrity
---@field O_SYNC integer synchronise file write integrity
---@field O_TRUNC integer truncate to zero length
---@field POSIX_FADV_NORMAL integer no advice
---@field POSIX_FADV_SEQUENTIAL integer expecting to access data sequentially
---@field POSIX_FADV_RANDOM integer expecting to access data randomly
---@field POSIX_FADV_NOREUSE integer expecting to access data once only
---@field POSIX_FADV_WILLNEED integer expecting to access data in the near future
---@field POSIX_FADV_DONTNEED integer not expecting to access the data in the near future
local fcntl = {}

---@param fd integer
---@param cmd integer
---@param arg? integer | flock
---@return integer? result
---@return string? errmsg
---@return integer? errnum
function fcntl.fcntl(fd, cmd, arg) end

---@param path string
---@param oflags integer
---@param mode? integer
---@return integer? result
---@return string? errmsg
---@return integer? errnum
function fcntl.open(path, oflags, mode) end

---@param fd integer
---@param offset integer
---@param len integer
---@param advice integer
---@return integer? result
---@return string? errmsg
---@return integer? errnum
function fcntl.posix_fadvise(fd, offset, len, advice) end

return fcntl
