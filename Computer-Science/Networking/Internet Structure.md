---
tags:
  - Computer_Science/Networking
---
# Internet Structure
### LAN
A LAN is a Local Area Network

### Star Network
In a start network, each computer is connected to a central hub with a single connection. The central hub is usually a "networking switch", which handles routing traffic.

This topology is resilient, as if a single cable breaks, then only the device connected to that one cable will loose access to the network.
It also has better performance than a [[#Bus Network]], as each device has its own cable, preventing packet collisions.
### Bus Network
In a bus network, each computer is connected to a single "backbone" cable. So each computer shares a single cable connecting them to each other.

This is simple to set up and is not very expensive.

However, it is not very resilient, as if the cable is broken in one place then all computer will suffer internet loss.
Furthermore, this network scales badly, as each computer has to send a packet to every other computer on the cable even if it only wants to talk to one computer.
An additional problem, is that if two computers attempt to send a packet at the same time. The two packets get garbled together in the physical cable. Each computer will then have to wait a random time before attempting to resend the packet.
