---@meta

---@class PosixAddrInfo
---@field family integer? one of AF_INET, AF_INET6, AF_UNIX, AF_NETLINK or AF_PACKET
---@field flags integer? bitwise OR of zero or more of AI_ADDRCONFIG, AI_ALL, AI_CANONNAME, AI_NUMERICHOST, AI_NUMERICSERV, AI_PASSIVE and AI_V4MAPPED
---@field socktype integer? one of SOCK_STREAM, SOCK_DGRAM or SOCK_RAW
---@field protocol integer? one of IPPROTO_TCP or IPPROTO_UDP

---@class linger
---@field l_onoff integer  # 0 or 1
---@field l_linger integer # seconds

---@class sockaddr
---@field family integer one of AF_INET, AF_INET6, AF_UNIX, AF_NETLINK or AF_PACKET
---@field port integer? socket port number for AF_INET (and equivalently AF_INET6) family (optional)
---@field addr string? socket host address in correct format, for AF_INET family (optional)
---@field socktype integer? one of SOCK_STREAM, SOCK_DGRAM or SOCK_RAW for AF_INET family (optional)
---@field canonname string? canonical name for service location, for AF_INET family (optional)
---@field protocol integer? one of IPPROTO_TCP or IPPROTO_UDP, for AF_INET family (optional)
---@field path string? location in file system, for AF_UNIX family (optional)
---@field pid integer? process identifier, for AF_NETLINK family (optional)
---@field groups integer? process group owner identifier, for AF_NETLINK family (optional)
---@field ifindex integer? interface index, for AF_PACKET family (optional)

---@class socket
---@field AF_INET integer IP protocol family
---@field AF_INET6 integer IP version 6
---@field AF_NETLINK integer Netlink protocol family
---@field AF_PACKET integer Packet protocol family
---@field AF_UNIX integer local to host
---@field AF_UNSPEC integer unspecified
---@field AI_ADDRCONFIG integer use host configuration for returned address type
---@field AI_ALL integer return IPv4 mapped and IPv6 addresses
---@field AI_CANONNAME integer request canonical name
---@field AI_NUMERICHOST integer don't use domain name resolution
---@field AI_NUMERICSERV integer don't use service name resolution
---@field AI_PASSIVE integer address is intended for bind
---@field AI_V4MAPPED integer IPv4 mapped addresses are acceptable
---@field IPPROTO_ICMP integer internet control message protocol
---@field IPPROTO_IP integer internet protocol
---@field IPPROTO_IPV6 integer IPv6 header
---@field IPPROTO_TCP integer transmission control protocol
---@field IPPROTO_UDP integer user datagram protocol
---@field IPV6_JOIN_GROUP integer
---@field IPV6_LEAVE_GROUP integer
---@field IPV6_MULTICAST_HOPS integer
---@field IPV6_MULTICAST_IF integer
---@field IPV6_MULTICAST_LOOP integer
---@field IPV6_UNICAST_HOPS integer
---@field IPV6_V6ONLY integer
---@field NETLINK_AUDIT integer auditing
---@field NETLINK_CONNECTOR integer
---@field NETLINK_DNRTMSG integer decnet routing messages
---@field NETLINK_ECRYPTFS integer
---@field NETLINK_FIB_LOOKUP integer
---@field NETLINK_FIREWALL integer firewalling hook
---@field NETLINK_GENERIC integer
---@field NETLINK_IP6_FW integer
---@field NETLINK_ISCSI integer open iSCSI
---@field NETLINK_KOBJECT_UEVENT integer kernel messages to userspace
---@field NETLINK_NETFILTER integer netfilter subsystem
---@field NETLINK_NFLOG integer netfilter/iptables ULOG
---@field NETLINK_ROUTE integer routing/device hook
---@field NETLINK_SCSITRANSPORT integer SCSI transports
---@field NETLINK_SELINUX integer SELinux event notifications
---@field NETLINK_UNUSED integer unused number
---@field NETLINK_USERSOCK integer reserved for user mode socket protocols
---@field NETLINK_XFRM integer ipsec
---@field SHUT_RD integer no more receptions
---@field SHUT_RDWR integer no more receptions or transmissions
---@field SHUT_WR integer no more transmissions
---@field SOCK_DGRAM integer connectionless unreliable datagrams
---@field SOCK_RAW integer raw protocol interface
---@field SOCK_STREAM integer connection based byte stream
---@field SOL_SOCKET integer socket level
---@field SOMAXCONN integer maximum concurrent connections
---@field SO_ACCEPTCONN integer does this socket accept connections
---@field SO_BINDTODEVICE integer bind to a particular device
---@field SO_BROADCAST integer permit broadcasts
---@field SO_DEBUG integer turn-on socket debugging
---@field SO_DONTROUTE integer bypass standard routing
---@field SO_ERROR integer set socket error flag
---@field SO_KEEPALIVE integer periodically transmit keep-alive message
---@field SO_LINGER integer linger on a posix.unistd.close if data is still present
---@field SO_OOBINLINE integer leave out-of-band data inline
---@field SO_RCVBUF integer set receive buffer size
---@field SO_RCVLOWAT integer set receive buffer low water mark
---@field SO_RCVTIMEO integer set receive timeout
---@field SO_REUSEADDR integer reuse local addresses
---@field SO_SNDBUF integer set send buffer size
---@field SO_SNDLOWAT integer set send buffer low water mark
---@field SO_SNDTIMEO integer set send timeout
---@field SO_TYPE integer get the socket type
---@field TCP_NODELAY integer don't delay send for packet coalescing
local socket = {}

---@param fd integer
---@return integer
---@return sockaddr
function socket.accept(fd) end

---@param fd integer
---@return nil
---@return string errmsg
---@return integer errnum
function socket.accept(fd) end

---@param fd integer
---@param addr sockaddr
---@return integer?
---@return string? errmsg
---@return integer? errnum
function socket.bind(fd, addr) end

---@param fd integer
---@param addr sockaddr
---@return integer?
---@return string? errmsg
---@return integer? errnum
function socket.connect(fd, addr) end

---@param host string
---@param service string
---@param hints PosixAddrInfo?
---@return sockaddr[]?
---@return string? errmsg
---@return integer? errnum
function socket.getaddrinfo(host, service, hints) end

---@param sockfd integer
---@return sockaddr?
---@return string? errmsg
---@return integer? errnum
function socket.getpeername(sockfd) end

---@param sockfd integer
---@return sockaddr?
---@return string? errmsg
---@return integer? errnum
function socket.getsockname(sockfd) end

---@param fd integer
---@param level integer
---@param name integer
---@return integer
function socket.getsockopt(fd, level, name) end

---@param fd integer
---@param level integer
---@param name integer
---@return timeval
function socket.getsockopt(fd, level, name) end

---@param fd integer
---@param level integer
---@param name integer
---@return linger
function socket.getsockopt(fd, level, name) end

---@param fd integer
---@param level integer
---@param name integer
---@return nil
---@return string errmsg
---@return integer errnum
function socket.getsockopt(fd, level, name) end

---@param ifname string
---@return integer?
---@return string? errmsg
---@return integer? errnum
function socket.if_nametoindex(ifname) end

---@param fd integer
---@param backlog integer
---@return integer?
---@return string? errmsg
---@return integer? errnum
function socket.listen(fd, backlog) end

---@param fd integer
---@param count integer
---@return string?
---@return string? errmsg
---@return integer? errnum
function socket.recv(fd, count) end

---@param fd integer
---@param count integer
---@return integer
---@return sockaddr
function socket.recvfrom(fd, count) end

---@param fd integer
---@param count integer
---@return string errmsg
---@return integer errnum
function socket.recvfrom(fd, count) end

---@param fd integer
---@param buffer string
---@return integer?
---@return string? errmsg
---@return integer? errnum
function socket.send(fd, buffer) end

---@param fd integer
---@param buffer string
---@param destination sockaddr
---@return integer?
---@return string? errmsg
---@return integer? errnum
function socket.sendto(fd, buffer, destination) end

---@param fd integer
---@param level integer
---@param name integer
---@param value1 integer
---@param value2 integer?
---@return integer?
---@return string? errmsg
---@return integer? errnum
function socket.setsockopt(fd, level, name, value1, value2) end

---@param fd integer
---@param how integer
---@return integer?
---@return string? errmsg
---@return integer? errnum
function socket.shutdown(fd, how) end

---@param domain integer
---@param type integer
---@param options integer
---@return integer?
---@return string? errmsg
---@return integer? errnum
function socket.socket(domain, type, options) end

---@param domain integer
---@param socktype integer
---@param options integer
---@return integer
---@return integer
function socket.socketpair(domain, socktype, options) end

---@param domain integer
---@param socktype integer
---@param options integer
---@return nil
---@return string errmsg
---@return string errnum
function socket.socketpair(domain, socktype, options) end

return socket
