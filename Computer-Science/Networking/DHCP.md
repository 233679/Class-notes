---
tags:
  - Computer_Science/Networking
---
# DHCP
DHCP is a solution to manually assigning local IP address to devices on a local network.
This makes it easier for managing local devices. And it makes mobile devices alot easier to use, as they often change networks as a person moves the device to different locations.

For DHCP to work, there needs to be a DHCP server on the network (usually run by the router), and the client to have a DHCP client to communicate with the server.

#### Process
The client initially sets the source IP Address to "0.0.0.0", as it does not have an IP address yet.

When a device joins a network, a broadcast packet is sent to the network to request for a DHCP server.
The DHCP server then replies with an an offer message, which is also a broadcast packet, as the client does not have an IP address yet. The offer message contains a list of possible IP address the client can choose.
The DHCP client then sends another packet to the network (still from a 0.0.0.0 IP) broadcasting its intention to choose a certain IP address for a certain time.
The DHCP server then responds with a broadcast confirming this IP address choice.

From now-on the client will use the IP it chose.