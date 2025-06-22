---@meta

---@class PosixMsqid
---@field msg_qnum integer number of messages on the queue
---@field msg_qbytes integer number of bytes allowed on the queue
---@field msg_lspid integer process id of last msgsnd
---@field msg_lrpid integer process id of last msgrcv
---@field msg_stime integer time of last msgsnd
---@field msg_rtime integer time of last msgrcv
---@field msg_ctime integer time of last change

---@class sysvmsg
---@field IPC_STAT integer return a Msqid table from msgctl
---@field IPC_SET integer set the Msqid fields from msgctl
---@field IPC_RMID integer remove a message queue with msgctl
---@field IPC_CREAT integer create entry if key does not exist
---@field IPC_EXCL integer fail if key exists
---@field IPC_PRIVATE integer private key
---@field IPC_NOWAIT integer error if request must wait
---@field MSG_EXCEPT integer read messages with differing type
---@field MSG_NOERROR integer truncate received message rather than erroring
local sysvmsg = {}

---@param id integer
---@param cmd integer
---@return PosixMsqid
function sysvmsg.msgctl(id, cmd) end

---@return integer
function sysvmsg.msgctl(id, cmd) end

---@return nil
---@return string errmsg
---@return integer errnum
function sysvmsg.msgctl(id, cmd) end

---@param key integer
---@param flags? integer
---@return integer?
---@return string? errmsg
---@return integer? errnum
function sysvmsg.msgget(key, flags) end

---@param id integer
---@param size integer
---@param type integer?
---@param flags integer?
---@return integer
---@return string
function sysvmsg.msgrcv(id, size, type, flags) end

---@param id integer
---@param size integer
---@param type integer?
---@param flags integer?
---@return nil
---@return string errmsg
---@return integer errnum
function sysvmsg.msgrcv(id, size, type, flags) end

---@param id integer
---@param type integer
---@param message integer
---@param flags integer?
---@return integer?
---@return string? errmsg
---@return integer? errmsg
function sysvmsg.msgsnd(id, type, message, flags) end

return sysvmsg
