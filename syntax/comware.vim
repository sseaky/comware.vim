" Vim syntax file
" Language: comware
" Maintainer: Seaky <seaky.cn@gmail.com>

if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=-
setlocal iskeyword+=_
setlocal iskeyword+=:

" IPv4
syn match   comwareIpv4       /\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\(\/[0-9]\{1,2\}\)\?/

" IPv6
syn match   comwareIpv6       /\s\(\x\{1,4}\:\)\{7}\(\:\|\(\x\{1,4}\)\)/
syn match   comwareIpv6       /\s\(\x\{1,4}\:\)\{6}\(\:\|\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\|\(\:\x\{1,4}\)\)/
syn match   comwareIpv6       /\s\(\x\{1,4}\:\)\{5}\(\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)\|\(\(\:\x\{1,4}\)\{1,2}\)\)/
syn match   comwareIpv6       /\s\(\x\{1,4}\:\)\{4}\(\:\x\{1,4}\)\{0,1}\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)/
syn match   comwareIpv6       /\s\(\x\{1,4}\:\)\{4}\(\:\x\{1,4}\)\{0,1}\(\(\:\x\{1,4}\)\{1,2}\)/
syn match   comwareIpv6       /\s\(\x\{1,4}\:\)\{3}\(\:\x\{1,4}\)\{0,2}\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)/
syn match   comwareIpv6       /\s\(\x\{1,4}\:\)\{3}\(\:\x\{1,4}\)\{0,2}\(\(\:\x\{1,4}\)\{1,2}\)/
syn match   comwareIpv6       /\s\(\x\{1,4}\:\)\{2}\(\:\x\{1,4}\)\{0,3}\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)/
syn match   comwareIpv6       /\s\(\x\{1,4}\:\)\{2}\(\:\x\{1,4}\)\{0,3}\(\(\:\x\{1,4}\)\{1,2}\)/
syn match   comwareIpv6       /\s\(\x\{1,4}\:\)\(\:\x\{1,4}\)\{0,4}\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)/
syn match   comwareIpv6       /\s\(\x\{1,4}\:\)\(\:\x\{1,4}\)\{0,4}\(\(\:\x\{1,4}\)\{1,2}\)/
syn match   comwareIpv6       /\s\:\(\:\x\{1,4}\)\{0,5}\(\(\:\(\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\)\?\)\|\(\(\:\x\{1,4}\)\{1,2}\)\)/

syn match   comwareDef        /\s\u\S\+/

syn keyword comwareCond       match eq neq gt lt ge le range

" syn keyword comwareKeyword    port link-aggregation ip scheduler description
syn keyword comwareKeyword    speed duplex negotiation delay bandwidth preempt priority timers
syn keyword comwareKeyword    logging log login password username user license host hostname
syn keyword comwareKeyword    address network route neighbor redistribute default-gateway community
syn keyword comwareKeyword    version class switchport clock name minimum maximum level size
syn keyword comwareKeyword    established source destination allowed
syn keyword comwareKeyword    timeout threshold frequency keepalive average weights mtu tunnel
syn keyword comwareKeyword    privilege secret
syn match   comwareKeyword    /timestamps\?/
syn match   comwareKeyword    /^\s\+\(\w\|-\)\+/

syn keyword comwareProtocol   ipv4 ipv6 tcp udp icmp echo
syn keyword comwareProtocol   http https www dhcp domain nameserver ssh telnet ftp ftp-data
syn keyword comwareProtocol   ntp snmp snmptrap syslog
syn keyword comwareProtocol   smtp pop2 pop3
syn keyword comwareProtocol   klogin kshell login rlogin sunrpc 
syn keyword comwareProtocol   mpls rip isis ospf ospfv3 eigrp bgp hsrp vrrp ipsla
syn keyword comwareProtocol   isdn dial hdlc frame-relay atm
syn keyword comwareProtocol   igmp multicast broadcast
syn keyword comwareProtocol   rsa pki isakmp ipsec ike esp gre vpn mvpn pppoe
syn keyword comwareProtocol   qos cef pim ahp tacacs
syn keyword comwareProtocol   stp cdp lldp vtp spanning-tree lacp dot1Q l2tun ethernet
syn keyword comwareProtocol   aaa aaa-server
syn keyword comwareProtocol   scheme
syn match   comwareProtocol   /traps\?/

syn keyword comwareConfigure  activate set default redundancy prefe ron tag
syn keyword comwareConfigure  inside outside input output static export import
syn match comwareConfigure  /^\(\w\|-\)\+/

syn keyword comwareFunction   service crypto encapsulation standby mode in out
syn keyword comwareFunction   storm-control snmp-server group nat banner mask seq metric
syn keyword comwareFunction   add-route shape rd route-target as-path remote-as
syn keyword comwareFunction   access-list access-class access-group prefix-list
syn keyword comwareFunction   passive-interface distribute-list permit subnet-zero
syn match   comwareFunction   /channel\-\(group\|protocol\)/

syn match   comwareComment    /!.*$/
" syn match   comwareComment    /undo\s.*$/
" syn match   comwareComment    /description.*$/
syn match   comwareComment    /remark.*$/
syn match   comwareComment    /\s*#.*$/

syn match   comwareString     /\"[^"]*\"/

syn match   comwareInterface  /^\(line\|role\|user-group\|local-user\|return\)/
syn match   comwareInterface  /^\(interface\|vlan\|line\|router\|track\)/
" syn match   comwareInterface  /^\(interface\|vlan\|line\|router\|track\)\s.*\d$/
syn match   comwareInterface  /^ip\s\(sla\|vrf\)\s.*\d$/
syn match   comwareInterface  /^monitor\ssession\s\d\+$/
syn match   comwareInterface  /^\(class\|policy\|route\)\-map\s.*$/
syn match   comwareInterface  /^ip\saccess\-list\s\(standard\|extended\)\s.*$/
syn match   comwareInterface  /^vrf\s\(definition\|context\)\s.*$/
syn match   comwareInterface  /^address\-family\sipv.*$/


syn keyword comwareAction     undo disable deny shutdown down none

syn keyword comwareVar        hybrid network-admin network-operator
syn keyword comwareVar        trunk access full full-duplex auto active monitor
syn keyword comwareVar        any enable disable
syn keyword comwareVar        pvst mst rapid-pvst \transparent server client
" syn match   comwareVar        /\d\+[mg]\?/
syn match   comwareVar        /\s\d\+\(\s\|$\)/

syn match comwareHostname	/^<\S\+>/

hi link comwareKeyword        Statement
hi link comwareProtocol       Type
hi link comwareAction         Error
hi link comwareFunction       Function
hi link comwareLabel          Identifier
hi link comwareCond           Type
hi link comwareString         String
hi link comwareComment        Comment
hi link comwareIpv4           Underlined
hi link comwareVar            String
hi link comwareConfigure      Identifier
hi link comwareDef            String
hi link comwareInterface      Identifier
hi link comwareIpv6           Underlined
hi link comwareHostname		  Comment

let b:current_syntax = "comware"
