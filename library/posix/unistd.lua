---@meta

---@alias SetPidOption  'u'| 'U'| 'g'| 'G'| 's'|'p'

---@class unistd
---@field _PC_CHOWN_RESTRICTED integer return 1 if chown requires appropriate privileges, 0 otherwise
---@field _PC_LINK_MAX integer maximum file link count
---@field _PC_MAX_CANON integer maximum bytes in terminal canonical input line
---@field _PC_MAX_INPUT integer maximum number of bytes in a terminal input queue
---@field _PC_NAME_MAX integer maximum number of bytes in a file name
---@field _PC_NO_TRUNC integer return 1 if over-long file names are truncated
---@field _PC_PATH_MAX integer maximum number of bytes in a pathname
---@field _PC_PIPE_BUF integer maximum number of bytes in an atomic pipe write
---@field _PC_VDISABLE integer terminal character disabling value
---@field _SC_ARG_MAX integer maximum bytes of argument to posix.unistd.execp
---@field _SC_CHILD_MAX integer maximum number of processes per user
---@field _SC_CLK_TCK integer statistics clock frequency
---@field _SC_JOB_CONTROL integer return 1 if system has job control, -1 otherwise
---@field _SC_NGROUPS_MAX integer maximum number of supplemental groups
---@field _SC_OPEN_MAX integer maximum number of open files per user
---@field _SC_SAVED_IDS integer return 1 if system supports saved user and group ids, -1 otherwise
---@field _SC_STREAM_MAX integer maximum number of streams per process
---@field _SC_TZNAME_MAX integer maximum number of timezone types
---@field _SC_VERSION integer POSIX.1 compliance version
---@field SEEK_CUR integer relative file pointer position
---@field SEEK_END integer set file pointer to the end of file
---@field SEEK_SET integer absolute file pointer position
---@field STDERR_FILENO integer standard error file descriptor
---@field STDIN_FILENO integer standard input file descriptor
---@field STDOUT_FILENO integer standard output file descriptor
local unistd = {}

---@param status integer
function unistd._exit(status) end

---@param path string
---@param mode? string
---@return integer | nil, string, integer
function unistd.access(path, mode) end

---@param seconds integer
---@return integer
function unistd.alarm(seconds) end

---@param path string
function unistd.chdir(path) end

---@param path string
---@param uid integer
---@param gid integer
---@return integer | nil, string, integer
function unistd.chown(path, uid, gid) end

---@param fd integer
---@return integer | nil, string, integer
function unistd.close(fd) end

---@param trypass string
---@param salt string
---@return string
function unistd.crypt(trypass, salt) end

---@param fd integer
---@return integer | nil, string, integer
function unistd.dup(fd) end

---@param fd integer
---@param newfd integer
---@return integer | nil, string, integer
function unistd.dup2(fd, newfd) end

---@param path string
---@param argt table
---@return nil, string, integer
function unistd.exec(path, argt) end

---@param path string
---@param argt table
---@return nil, string, integer
function unistd.execp(path, argt) end

---@param fd integer
---@return integer | nil, string, integer
function unistd.fdatasync(fd) end

---@return integer | nil, string, integer
function unistd.fork() end

---@param fd integer
---@return integer | nil, string, integer
function unistd.fsync(fd) end

---@param fd integer
---@param length integer
---@return integer | nil, string, integer
function unistd.ftruncate(fd, length) end

---@return string | nil, string, integer
function unistd.getcwd() end

---@return integer
function unistd.getegid() end

---@return integer
function unistd.geteuid() end

---@return integer
function unistd.getgid() end

---@return table<integer, integer> | nil, string, integer
function unistd.getgroups() end

---@return integer | nil, string, integer
function unistd.gethostid() end

---@param arg string[]
---@param opts string
---@param opterr? integer
---@param opind? integer
function unistd.getopt(arg, opts, opterr, opind) end

---@return integer
function unistd.getpgrp() end

---@return integer
function unistd.getpid() end

---@return integer
function unistd.getppid() end

---@return integer
function unistd.getuid() end

---@param fd integer
---@return integer | nil, string, integer
function unistd.isatty(fd) end

---@param path string
---@param uid string | integer
---@param gid string | integer
---@return integer | nil, string, integer
function unistd.lchown(path, uid, gid) end

---@param target string
---@param link string
---@param soft? boolean
---@return integer | nil, string, integer
function unistd.link(target, link, soft) end

---@param targetdir integer
---@param target string
---@param linkdir integer
---@param link string
---@param flags integer
---@return integer | nil, string, integer
function unistd.linkat(targetdir, target, linkdir, link, flags) end

---@param fd integer
---@param offset integer
---@param whence integer
---@return integer | nil, string, integer
function unistd.lseek(fd, offset, whence) end

---@param inc integer
---@return integer | nil, string, integer
function unistd.nice(inc) end

---@param path string
---@param key integer
---@return integer
function unistd.pathconf(path, key) end

---@return integer, integer | nil, string, integer
function unistd.pipe() end

---@param fd integer
---@param count integer
---@return string | nil, string, integer
function unistd.read(fd, count) end

---@param path string
---@return string | nil, string, integer
function unistd.readlink(path) end

---@param path string
---@return integer | nil, string, integer
function unistd.rmdir(path) end

---@param what SetPidOption
---@param id integer
---@param gid integer
function unistd.setpid(what, id, gid) end

---@param seconds integer
---@return integer
function unistd.sleep(seconds) end

---Commit buffer cache to disk.
function unistd.sync() end

---@param key integer
---@return integer
function unistd.sysconf(key) end

---@param fd integer
---@return integer | nil, string, integer
function unistd.tcgetpgrp(fd) end

---@param fd integer
---@param pgid integer
---@return integer | nil, string, integer
function unistd.tcsetpgrp(fd, pgid) end

---@param path string
---@param length integer
---@return integer | nil, string, integer
function unistd.truncate(path, length) end

---@param fd? integer
---@return string | nil, string, integer
function unistd.ttyname(fd) end

---@param path string
---@return integer | nil, string, integer
function unistd.unlink(path) end

---@param fd integer
---@param buf string
---@param nbytes? integer
---@param offset? integer
---@return integer | nil, string, integer
function unistd.write(fd, buf, nbytes, offset) end

return unistd
