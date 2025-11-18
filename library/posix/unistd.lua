---@meta

---@alias AccessMode 'r' | 'w' | 'x' | 'f' | 'rw' | 'rx' | 'wx' | 'rwx' | 'rf' | 'wf' | 'xf' | 'rwx' | 'rwx'
---@alias SetPidOption  'u'|'U'|'g'| 'G'| 's'|'p'

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

--- Terminates the calling process immediately.
---@param status integer The process exit status
function unistd._exit(status) end

---Check real user's permissions for a file.
---@param path string The file path to check
---@param mode? AccessMode (default "f") Permission mode(s) to check
---@return integer? 0 if access is allowed, nil otherwise
---@return string? errmsg Error message if access failed
---@return integer? errnum Error number if access failed
--- Usage:
--- ```lua
--- local unistd = require "posix.unistd"
--- local status, errmsg, errno = unistd.access("/etc/passwd", "rw")
--- ```
function unistd.access(path, mode) end

--- Schedule an alarm signal.
---@param seconds integer Number of seconds after which to send SIGALRM
---@return integer Number of seconds remaining in any previous alarm, or 0
--- Usage:
--- ```lua
--- local unistd = require "posix.unistd"
--- local seconds = unistd.alarm(10)
--- ```
function unistd.alarm(seconds) end

--- Set the working directory.
---@param path string The directory path to switch to
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if changing directory failed
---@return integer? errnum Error number if changing directory failed
--- Usage:
--- ```lua
--- local unistd = require "posix.unistd"
--- local status, errmsg, errno = unistd.chdir("/var/tmp")
--- ```
function unistd.chdir(path) end

--- Change ownership of a file.
---@param path string The existing file path
---@param uid integer|string New owner user ID
---@param gid integer|string New owner group ID
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if operation failed
---@return integer? errnum Error number if operation failed
--- Usage:
--- ```lua
--- local unistd = require "posix.unistd"
--- -- will fail for a normal user, and print an error
--- print(unistd.chown("/etc/passwd", 100, 200))
--- ```
function unistd.chown(path, uid, gid) end

--- Close an open file descriptor.
---@param fd integer The file descriptor to close
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if closing failed
---@return integer? errnum Error number if closing failed
--- Usage:
--- ```lua
--- local unistd = require "posix.unistd"
--- local ok, errmsg = unistd.close(log)
--- if not ok then error(errmsg) end
--- ```
function unistd.close(fd) end

--- Encrypt a password. Not recommended for general encryption purposes.
---@param trypass string The string to hash
---@param salt string Two-character string from [a-zA-Z0-9./]
---@return string Encrypted password string
--- Usage:
--- ```lua
--- local pwd = require "posix.pwd"
--- local unistd = require "posix.unistd"
---
--- local salt, hash = pwd.pwent:match ":$6$(.-)$([^:]+)"
--- if unistd.crypt(trypass, salt) ~= hash then
---   error("wrong password")
--- end
--- ```
function unistd.crypt(trypass, salt) end

--- Duplicate an open file descriptor.
---@param fd integer The file descriptor to duplicate
---@return integer? New file descriptor duplicating `fd` if successful, nil otherwise
---@return string? errmsg Error message if duplication failed
---@return integer? errnum Error number if duplication failed
--- Usage:
--- ```lua
--- local stdio = require "posix.stdio"
--- local unistd = require "posix.unistd"
---
--- local outfd = unistd.dup(stdio.fileno(io.stdout))
--- ```
function unistd.dup(fd) end

--- Duplicate one open file descriptor to another.
--- If `newfd` references an open file already, it is closed before being reallocated to `fd`.
---@param fd integer An open file descriptor to act on
---@param newfd integer New descriptor to duplicate `fd` onto
---@return integer? New file descriptor (`newfd`) if successful, nil otherwise
---@return string? errmsg Error message if duplication failed
---@return integer? errnum Error number if duplication failed
--- Usage:
--- ```lua
--- local stdio = require "posix.stdio"
--- local unistd = require "posix.unistd"
---
--- local outfd = unistd.dup2(stdio.fileno(io.stdout), 5)
--- ```
function unistd.dup2(fd, newfd) end

--- Execute a program at exactly `path`.
---@param path string Path to the executable
---@param argt table Table of arguments (can include index 0)
---@return nil
---@return string? errmsg Error message if execution failed
---@return integer? errnum Error number if execution failed
--- Usage:
--- ```lua
--- local unistd = require "posix.unistd"
--- unistd.exec("/bin/bash", {[0] = "-sh", "--norc"})
--- ```
function unistd.exec(path, argt) end

--- Execute a program found via PATH search, like the shell would.
---@param path string Path or command name to execute
---@param argt table Table of arguments (can include index 0)
---@return nil
---@return string? errmsg Error message if execution failed
---@return integer? errnum Error number if execution failed
--- Usage:
--- ```lua
--- local unistd = require "posix.unistd"
--- unistd.execp("ls", {[0] = "ls", "-l"})
--- ```
function unistd.execp(path, argt) end

--- Synchronize a file's in-core state with storage device without updating metadata.
---@param fd integer File descriptor to synchronize
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if synchronization failed
---@return integer? errnum Error number if synchronization failed
--- Usage:
--- ```lua
--- local unistd = require "posix.unistd"
--- local ok, errmsg, errno = unistd.fdatasync(fd)
--- if not ok then error(errmsg) end
--- ```
function unistd.fdatasync(fd) end

--- Fork this program.
--- Returns 0 in the child process, or the child process ID in the parent.
---@return integer? 0 in the child, or PID of child in parent, nil on error
---@return string? errmsg Error message if fork failed
---@return integer? errnum Error number if fork failed
--- Usage:
--- ```lua
--- local unistd = require "posix.unistd"
---
--- local pid, errmsg, errno = unistd.fork()
--- if pid == nil then
---   error(errmsg)
--- elseif pid == 0 then
---   print("in child:", unistd.getpid())
--- else
---   local wait = require "posix.sys.wait"
---   print(wait.wait(pid))
--- end
--- os.exit()
--- ```
function unistd.fork() end

--- Synchronize a file's in-core state with the storage device.
---@param fd integer File descriptor to synchronize
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if synchronization failed
---@return integer? errnum Error number if synchronization failed
--- Usage:
--- ```lua
--- local unistd = require "posix.unistd"
--- local ok, errmsg, errno = unistd.fsync(fd)
--- if not ok then error(errmsg) end
--- ```
function unistd.fsync(fd) end

--- Truncate a file to a specified length.
---@param fd integer The file descriptor to act on
---@param length integer The length to truncate to
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if truncation failed
---@return integer? errnum Error number if truncation failed
function unistd.ftruncate(fd, length) end

--- Get the current working directory for this process.
---@return string? Path of current working directory if successful, nil otherwise
---@return string? errmsg Error message if operation failed
---@return integer? errnum Error number if operation failed
function unistd.getcwd() end

--- Return effective group ID of calling process.
---@return integer Effective group ID of calling process
function unistd.getegid() end

--- Return effective user ID of calling process.
---@return integer Effective user ID of calling process
function unistd.geteuid() end

--- Return group ID of calling process.
---@return integer Group ID of calling process
function unistd.getgid() end

--- Get list of supplementary group IDs.
---@return integer[]? Table of group IDs if successful, nil otherwise
---@return string? errmsg Error message if operation failed
---@return integer? errnum Error number if operation failed
function unistd.getgroups() end

--- Get host ID.
---@return integer? Host ID if successful, nil otherwise
---@return string? errmsg Error message if operation failed
function unistd.gethostid() end

--- Parse command-line options.
---@param arg string[] Command-line arguments
---@param opts string Short option specifier
---@param opterr? integer Index of the option with an error (default 0)
---@param optind? integer Index of the next unprocessed option (default 1)
---@return fun(): string, integer?, integer Iterator returning (option, opterr, index)
--- Usage:
--- ```lua
--- local getopt = require "posix.getopt".getopt
--- for opt, opterr, i in getopt(arg, "ho:v", opterr, i) do
---   process(arg, opterr, i)
--- end
--- ```
function unistd.getopt(arg, opts, opterr, opind) end

--- Return process group ID of calling process.
---@return integer Process group ID of calling process
function unistd.getpgrp() end

--- Return process ID of calling process.
---@return integer Process ID of calling proces
function unistd.getpid() end

--- Return parent process ID of calling process.
---@return integer Parent process ID of calling process
function unistd.getppid() end

--- Return user ID of calling process.
---@return integer User ID of calling process
function unistd.getuid() end

--- Test whether a file descriptor refers to a terminal.
---@param fd integer File descriptor to test
---@return integer? 1 if fd refers to a terminal, nil otherwise
---@return string? errmsg Error message if test failed
---@return integer? errnum Error number if test failed
function unistd.isatty(fd) end

--- Change ownership of a file, without dereferencing symbolic links.
--- If a file is a symlink, changes ownership of the symlink itself.
---@param path string Existing file path
---@param uid string|integer New owner user ID
---@param gid string|integer New owner group ID
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if operation failed
---@return integer? errnum Error number if operation failed
--- Usage:
--- ```lua
--- local unistd = require "posix.unistd"
--- -- will fail for a normal user, and print an error
--- print(unistd.lchown("/etc/passwd", 100, 200))
--- ```
function unistd.lchown(path, uid, gid) end

--- Create a link.
---@param target string Name of the target file
---@param link string Name of the link to create
---@param soft? boolean Whether to create a symbolic link (default false)
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if operation failed
---@return integer? errnum Error number if operation failed
function unistd.link(target, link, soft) end

--- Create a link at a specified directory.
---@param targetdir integer File descriptor of target directory
---@param target string Name of the target file
---@param linkdir integer File descriptor of link directory
---@param link string Name of the link to create
---@param flags integer Flags for link creation
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if operation failed
---@return integer? errnum Error number if operation failed
function unistd.linkat(targetdir, target, linkdir, link, flags) end

--- Reposition read/write file offset.
---@param fd integer Open file descriptor
---@param offset integer Number of bytes to seek
---@param whence integer One of SEEK_SET, SEEK_CUR, or SEEK_END
---@return integer? New offset if successful, nil otherwise
---@return string? errmsg Error message if operation failed
---@return integer? errnum Error number if operation failed
function unistd.lseek(fd, offset, whence) end

--- Change process priority.
---@param inc integer Value to add to the nice value of the calling process
---@return integer? New nice value if successful, nil otherwise
---@return string? errmsg Error message if operation failed
---@return integer? errnum Error number if operation failed
function unistd.nice(inc) end

--- Get a value for a configuration option for a filename.
---@param path string Optional file path
---@param key integer One of _PC_LINK_MAX, _PC_MAX_CANON, _PC_NAME_MAX, _PC_PIPE_BUF, _PC_CHOWN_RESTRICTED, _PC_NO_TRUNC, or _PC_VDISABLE
---@return integer Associated path configuration value
--- Usage:
--- ```lua
--- local unistd = require "posix.unistd"
--- for a, b in pairs(unistd.pathconf("/dev/tty")) do print(a, b) end
--- ```
function unistd.pathconf(path, key) end

---@return integer?
---@return integer?
function unistd.pipe() end

--- Creates a pipe.
---@return integer? Read end file descriptor if successful, nil otherwise
---@return integer? Write end file descriptor if successful, nil otherwise
---@return string? errmsg Error message if creation failed
---@return integer? errnum Error number if creation failed
function unistd.pipe() end

--- Read bytes from a file descriptor.
---@param fd integer File descriptor to read from
---@param count integer Maximum number of bytes to read
---@return string? String read from the file, nil on error
---@return string? errmsg Error message if read failed
---@return integer? errnum Error number if read failed
function unistd.read(fd, count) end

--- Read the value of a symbolic link.
---@param path string Path of the symbolic link
---@return string? Target of the symbolic link, nil on error
---@return string? errmsg Error message if readlink failed
---@return integer? errnum Error number if readlink failed
function unistd.readlink(path) end

--- Remove a directory.
---@param path string Path of the directory to remove
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if removal failed
---@return integer? errnum Error number if removal failed
function unistd.rmdir(path) end

--- Set the uid, euid, gid, egid, sid, or pid & gid.
---@param what string One of 'u', 'U', 'g', 'G', 's', 'p' (upper-case means effective)
---@param id integer UID, GID, or PID depending on `what`
---@param gid? integer Only used if `what` is 'p'
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if operation failed
---@return integer? errnum Error number if operation failed
function unistd.setpid(what, id, gid) end

--- Sleep for a number of seconds.
---@param seconds integer Minimum number of seconds to sleep
---@return integer 0 if the requested time has elapsed, or unslept seconds remaining if interrupted
function unistd.sleep(seconds) end

---Commit buffer cache to disk.
function unistd.sync() end

--- Get configuration information at runtime.
---@param key integer One of _SC_ARG_MAX, _SC_CHILD_MAX, _SC_CLK_TCK, _SC_JOB_CONTROL, _SC_OPEN_MAX, _SC_NGROUPS_MAX, _SC_SAVED_IDS, _SC_STREAM_MAX, _SC_PAGESIZE, _SC_TZNAME_MAX, or _SC_VERSION
---@return integer Associated system configuration value
function unistd.sysconf(key) end

--- Get ID of foreground process group of terminal fd.
---@param fd integer File descriptor of the controlling terminal
---@return integer? ID of foreground process group if successful, nil otherwise
---@return string? errmsg Error message if operation failed
---@return integer? errnum Error number if operation failed
function unistd.tcgetpgrp(fd) end

--- Make process group `pgid` the foreground process group of terminal `fd`.
---@param fd integer File descriptor of the controlling terminal
---@param pgid integer ID of the process group to make foreground
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if operation failed
---@return integer? errnum Error number if operation failed
function unistd.tcsetpgrp(fd, pgid) end

--- Truncate a file to a specified length.
---@param path string File to act on
---@param length integer Length to truncate to
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if truncation failed
---@return integer? errnum Error number if truncation failed
function unistd.truncate(path, length) end

--- Name of a terminal device.
---@param fd? integer File descriptor to process (default 0)
---@return string? Terminal name if successful, nil otherwise
---@return string? errmsg Error message if operation failed
---@return integer? errnum Error number if operation failed
function unistd.ttyname(fd) end

--- Unlink a file.
---@param path string File path to unlink
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if unlink failed
---@return integer? errnum Error number if unlink failed
function unistd.unlink(path) end

--- Write bytes to a file.
--- If `nbytes` is nil or omitted, writes all bytes from `offset` through the end of `buf`.
--- If `offset` is nil or omitted, starts writing from the beginning of `buf`.
--- Bounds checks are enforced, returning posix.errno.EINVAL if requested bytes are out of bounds.
---@param fd integer File descriptor to write to
---@param buf string Bytes to write
---@param nbytes? integer Number of bytes to write (default #buf)
---@param offset? integer Skip the first `offset` bytes of `buf` (default 0)
---@return integer? Number of bytes written if successful, nil otherwise
---@return string? errmsg Error message if write failed
---@return integer? errnum Error number if write failed
function unistd.write(fd, buf, nbytes, offset) end

return unistd
