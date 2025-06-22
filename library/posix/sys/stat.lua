---@meta

---@class PosixStat
---@field st_dev integer device id
---@field st_ino integer inode number
---@field st_mode integer mode of file
---@field st_nlink integer number of hardlinks to file
---@field st_uid integer user id of file owner
---@field st_gid integer group id of file owner
---@field st_rdev integer additional device specific id for special files
---@field st_size integer file size in bytes
---@field st_atime integer time of last access
---@field st_mtime integer time of last data modification
---@field st_ctime integer time of last state change
---@field st_blksize integer preferred block size
---@field st_blocks integer number of blocks allocated

---@class stat
---@field S_IFMT integer file type mode bitmask
---@field S_IFBLK integer block special
---@field S_IFCHR integer character special
---@field S_IFDIR integer directory
---@field S_IFIFO integer fifo
---@field S_IFLNK integer symbolic link
---@field S_IFREG integer regular file
---@field S_IFSOCK integer socket
---@field S_IRWXU integer user read, write and execute
---@field S_IRUSR integer user read
---@field S_IWUSR integer user write
---@field S_IXUSR integer user execute
---@field S_IRWXG integer group read, write and execute
---@field S_IRGRP integer group read
---@field S_IWGRP integer group write
---@field S_IXGRP integer group execute
---@field S_IRWXO integer other read, write and execute
---@field S_IROTH integer other read
---@field S_IWOTH integer other write
---@field S_IXOTH integer other execute
---@field S_ISGID integer set group id on execution
---@field S_ISUID integer set user id on execution
local stat = {}

---@param mode integer
---@return integer
function stat.S_ISBLK(mode) end

---@param mode integer
---@return integer
function stat.S_ISCHR(mode) end

---@param mode integer
---@return integer
function stat.S_ISDIR(mode) end

---@param mode integer
---@return integer
function stat.S_ISFIFO(mode) end

---@param mode integer
---@return integer
function stat.S_ISLNK(mode) end

---@param mode integer
---@return integer
function stat.S_ISREG(mode) end

---@param mode integer
---@return integer
function stat.S_ISSOCK(mode) end

---@param path string
---@param mode integer
---@return integer?
---@return string? errmsg
---@return integer? errnum
function stat.chmod(path, mode) end

---@param fd integer
---@return PosixStat?
---@return string? errmsg
---@return integer? errnum
function stat.fstat(fd) end

---@param path string
---@return PosixStat?
---@return string? errmsg
---@return integer? errnum
function stat.fstat(path) end

---@param path string
---@param mode integer?
---@return integer?
---@return string? errmsg
---@return integer? errnum
function stat.mkdir(path, mode) end

---@param path string
---@param mode integer?
---@return integer?
---@return string? errmsg
---@return integer? errnum
function stat.mkfifo(path, mode) end

---@param path string
---@return PosixStat?
---@return string? errmsg
---@return integer? errnum
function stat.stat(path) end

---@param mode integer
---@return integer
function stat.umask(mode) end

return stat
