---@meta

---@class PosixWinsize
---@field ws_row integer rows, in characters
---@field ws_col integer columns, in characters
---@field ws_xpixel integer width, in pixels
---@field ws_ypixel integer height, in pixels


---@class ccs
---@field VINTR integer interrupt control character
---@field VQUIT integer quit control character
---@field WERASE integer erase control character
---@field VKILL integer kill control character
---@field VEOF integer end-of-file control character
---@field VEOL integer end-of-line control charactor
---@field VEOL2 integer another end-of-line control charactor
---@field VMIN integer 1
---@field VTIME integer 0
---@field VSTART integer xon/xoff start control character
---@field VSTOP integer xon/xoff stop control character
---@field VSUSP integer suspend control character

---@class termios
---@field cc ccs array of terminal control characters
---@field cflag integer bitwise OR of zero or more of CSIZE, CS5, CS6, CS7, CS8, CSTOPB, CREAD, PARENB, PARODD, HUPCL, CLOCAL and CRTSCTS
---@field iflag integer input flags; bitwise OR of zero or more of IGNBRK, BRKINT, IGNPAR, PARMRK, INPCK, ISTRIP, INLCR, IGNCR, ICRNL, IXON, IXOFF, IXANY, and IMAXBEL
---@field lflag integer local flags; bitwise OR of zero or more of ISIG, ICANON, ECHO, ECHOE, ECHOK', 'ECHONL, NOFLSH, IEXTEN and TOSTOP
---@field oflag integer output flags; bitwise OR of zero or more of OPOST, ONLCR, OXTABS, ONOEOT, OCRNL, ONOCR, ONLRET, OFILL, NLDLY, TABDLY, CRDLY, FFDLY, BSDLY, VTDLY and OFDEL
---@field ispeed integer the input baud rate, one of B0, B50, B75, B110, B134, B150, B200, B300, B600, B1200, B1800, B2400, B4800, B9600, B19200, B38400, B57600, B115200,
---@field ospeed integer the output baud rate (see ispeed for possible values)


---@class termio
local termio = {}


---@param fd integer
---@return integer?
---@return string? errmsg
---@return integer? errnum
function termio.tcdrain(fd) end

---@param fd integer
---@param action integer
---@return integer?
---@return string? errmsg
---@return integer? errnum
function termio.tcflow(fd, action) end

---@param fd integer
---@param action integer
---@return integer?
---@return string? errmsg
---@return integer? errnum
function termio.tcflush(fd, action) end

---@param fd integer
---@return string errmsg
function termio.tcgetattr(fd) end

---@param fd integer
---@return termios?
---@return string? errmsg
---@return integer? errnum
function termio.tcgetattr(fd) end

---@param fd integer
---@return PosixWinsize?
---@return string? errmsg
---@return integer? errnum
function termio.tcgetwinsize(fd) end

---@param fd integer
---@param duration integer
---@return integer?
---@return string? errmsg
---@return integer? errnum
function termio.tcsendbreak(fd, duration) end

---@param fd integer
---@param actions integer
---@param a termios
---@return integer?
---@return string? errmsg
---@return integer? errnum
function termio.tcsetattr(fd, actions, a) end

---@param fd integer
---@param winsize PosixWinsize
---@return integer?
---@return string? errmsg
---@return integer? errnum
function termio.tcsetwinsize(fd, winsize) end

return termio
