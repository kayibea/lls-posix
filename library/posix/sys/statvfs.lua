---@meta

---@class PosixStatvfs
---@field f_bsize integer file system block size
---@field f_frsize integer fundamental file system block size
---@field f_blocks integer number of *f_frsize* sized blocks in file system
---@field f_bfree integer number of free blocks
---@field f_bavail integer number of free blocks available to non-privileged process
---@field f_files integer number of file serial numbers
---@field f_ffree integer number of free file serial numbers
---@field f_favail integer number of free file serial numbers available
---@field f_fsid integer file system id
---@field f_flag integer flag bits
---@field f_namemax integer maximum filename length

---@class statvfs
---@field ST_RDONLY integer read-only file system
---@field ST_NOSUID integer does not support S_ISUID nor S_ISGID file mode bits
local statvfs = {}

---@param path string
---@return PosixStatvfs?
---@return string? errmsg
---@return integer? errnum
function statvfs.statvfs(path) end

return statvfs
