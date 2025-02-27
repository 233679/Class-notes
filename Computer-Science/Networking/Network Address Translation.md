---
tags:
  - Computer_Science/Networking
aliases:
  - NAT
---
# Network Address Translation
Network Address Translation, also known as NAT. It is an algorithm used by a router (a device connecting the computers on your local network to the internet), that converts the source and destination address on outgoing and incoming packets respectively.

When establishing an outgoing connection, the router adds an entry into a the "Nat forwarding table", that links the local network address of a device to a socket on the WAN address of the route. Then when a packet is received at the WAN address on a socket, the route looks up the address in the NAT forwarding table, and sends the packet to the correct local device.

When a connection is not used for awhile, the entry in the NAT forwarding table will be removed, and made available for reuse, so that the forwarding table does not fill up.

This system works well for outgoing connections. However, if a device behind a NAT is expecting an incoming connection, a rule needs to be set in the NAT device (the router) to forward all traffic on a certain port to a local device. Otherwise, the router will not know which local device the incoming connection is intended for, and will refuse the connection.