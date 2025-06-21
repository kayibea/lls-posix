---@meta

---@class stdio
---@field _IOFBF integer fully buffered
---@field _IOLBF integer line buffered
---@field _IONBF integer unbuffered
---@field BUFSIZ integer size of buffer
---@field EOF integer end of file
---@field FOPEN_MAX integer maximum number of open files
---@field FILENAME_MAX integer maximum length of filename
local stdio = {}


---@return string
function stdio.ctermid() end

---@param fd integer
---@param mode openmode
---@return file*?
---@return string? errmsg
---@return integer? errnum
function stdio.fdopen(fd, mode) end

---@param file file*
---@return integer?
---@return string? errmsg
---@return integer? errnum
function stdio.fileno(file) end

---@param oldpath string
---@param newpath string
---@return integer?
---@return string? errmsg
---@return integer? errnum
function stdio.rename(oldpath, newpath) end

return stdio
