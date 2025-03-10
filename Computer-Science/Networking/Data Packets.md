---
tags:
  - Computer_Science/Networking
---
# Data Packets
When sending data across a network, the messages is split up into smaller packets, and then the indented message is assembled from the packets received.

This allows for more reliability and efficiency, as the smaller packets of data can be routed more efficiently. An example of this is [[#Packet Switching]].
Furthermore, if a single packet is lost, only that one packet needs to be retransmitted instead of the entire message.

If a packet is too large then routers can struggle to route them, and they take more time to transfer.
Also if they are too small, then the metadata about each packet will consume a large amount of bandwidth, rather than dedicating it to the payload.
## Composition
A packet is made up of three main parts. The header, payload, and trailer.
The header contains the information on where the packet has come from and where it needs to go.
The payload contains the miscellaneous data that is being transmitted.
The trailer contains data for error checking the integrity of the payload.

#### Packet Switching
Packet switching is where each packet from a message can take different routes to the destination based upon the fasted path at any given moment, which can change multiple of times per second.

## TCP Packet Structure
![[Computer-Science/Networking/TCP Packet Structure.png]]

## UDP Packet Structure
![[Computer-Science/Networking/UDP Packet Structure.png]]

## IP Packet Structure
![[Computer-Science/Networking/IP Packet Structure.png]]