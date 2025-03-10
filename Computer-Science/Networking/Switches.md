---
tags:
  - Computer_Science/Networking
---
# Switches

A switch is similar to a [[Computer-Science/Networking/Hubs|Hub]], but instead keeps a table of which device is connected to which port on the switch, using the MAC Address of each computer to identify each computer.

While the switch table is empty, the switch behaves like a [[Computer-Science/Networking/Hubs|Hub]]. However, when the switch table is populated, it can use the switch table to know which interface to route the packet. Rather than sending it to all the hosts.

Switches operate on the [[Computer-Science/Networking/TCP IP#Link Layer|Link Layer]] of the TCP/IP stack, as switches only operate on local networks.