---@meta

---@alias SignalConst 'SIG_DFL' | 'SIG_IGN'
---@alias SignalHandler fun(signum: integer) | SignalConst

---@class signal
---@field SIGABRT integer abort ()
---@field SIGALRM integer alarm clock
---@field SIGBUS integer bus error
---@field SIGCHLD integer to parent on child stop or exit
---@field SIGCONT integer continue a stopped process
---@field SIGFPE integer floating point error
---@field SIGHUP integer hangup
---@field SIGILL integer illegal instruction
---@field SIGINFO integer information request
---@field SIGINT integer interrupt
---@field SIGKILL integer kill
---@field SIGPIPE integer write on pipe with no reader
---@field SIGQUIT integer quit
---@field SIGSEGV integer segmentation violation
---@field SIGSTOP integer stop
---@field SIGSYS integer bad argument to system call
---@field SIGTERM integer terminate
---@field SIGTRAP integer trace trap
---@field SIGTSTP integer stop signal from tty
---@field SIGTTIN integer to readers process group on background tty read
---@field SIGTTOU integer to readers process group on background tty output
---@field SIGURG integer urgent condition on i/o channel
---@field SIGUSR1 integer user defined
---@field SIGUSR2 integer user defined
---@field SIGVTALRM integer virtual time alarm
---@field SIGWINCH integer window size change
---@field SIGXCPU integer exceeded cpu time limit
---@field SIGXFSZ integer exceeded file size limit
---@field SA_NOCLDSTOP integer do not generate a SIGCHLD on child stop
---@field SA_NOCLDWAIT integer don't keep zombies child processes
---@field SA_NODEFER integer don't mask the signal we're delivering
---@field SA_RESETHAND integer reset to SIG_DFL when taking a signal
---@field SA_RESTART integer allow syscalls to restart instead of returning EINTR
local signal = {}


--- Send a signal to the given process.
---@param pid integer Process ID to act on
---@param opt? integer Signal to send (default SIGTERM)
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if operation failed
---@return integer? errnum Error number if operation failed
function signal.kill(pid, opt) end

--- Send a signal to the given process group.
---@param pgrp integer Group ID to act on, or 0 for the sending process's group
---@param sig? integer Signal to send (default SIGTERM)
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if operation failed
---@return integer? errnum Error number if operation failed
function signal.killpg(pgrp, sig) end

--- Raise a signal on this process.
---@param sig integer Signal to send
---@return integer? 0 if successful, nil otherwise
---@return string? errmsg Error message if operation failed
---@return integer? errnum Error number if operation failed
function signal.raise(sig) end

--- Install a signal handler for this signal number.
--- Uses sigaction for guaranteed semantics.
---@param signum integer Signal number
---@param handler? SignalHandler Function, or SIG_IGN or SIG_DFL (default SIG_DFL)
---@param flags? integer Optional sa_flags element of struct sigaction
---@return SignalHandler Previous handler function
function signal.signal(signum, handler, flags) end

return signal
