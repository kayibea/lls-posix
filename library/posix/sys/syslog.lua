---@meta

---@class syslog
---@field LOG_AUTH integer security/authorisation messages
---@field LOG_CONS integer write directly to system console
---@field LOG_CRON integer clock daemon
---@field LOG_DAEMON integer system daemons
---@field LOG_KERN integer kernel messages
---@field LOG_LOCAL0 integer reserved for local use
---@field LOG_LOCAL1 integer reserved for local use
---@field LOG_LOCAL2 integer reserved for local use
---@field LOG_LOCAL3 integer reserved for local use
---@field LOG_LOCAL4 integer reserved for local use
---@field LOG_LOCAL5 integer reserved for local use
---@field LOG_LOCAL6 integer reserved for local use
---@field LOG_LOCAL7 integer reserved for local use
---@field LOG_LPR integer line printer subsystem
---@field LOG_MAIL integer mail system
---@field LOG_NDELAY integer open the connection immediately
---@field LOG_NEWS integer network news subsystem
---@field LOG_PID integer include process id with each log message
---@field LOG_USER integer random user-level messages
---@field LOG_UUCP integer unix-to-unix copy subsystem
---@field LOG_EMERG integer system is unusable
---@field LOG_ALERT integer action must be taken immediately
---@field LOG_CRIT integer critical conditions
---@field LOG_ERR integer error conditions
---@field LOG_WARNING integer warning conditions
---@field LOG_NOTICE integer normal but significant conditions
---@field LOG_INFO integer informational
---@field LOG_DEBUG integer debug-level messages
local syslog = {}


---@param priority integer
---@return integer
function syslog.LOG_MASK(priority) end

---Close system log.
function syslog.closelog() end

---@param ident string
---@param option? integer
---@param facility? integer
function syslog.openlog(ident, option, facility) end

---@param mask integer
---@return integer?
---@return string? errmsg
---@return integer? errnum
function syslog.setlogmask(mask) end

---@param priority integer
---@param message string
function syslog.syslog(priority, message) end

return syslog
