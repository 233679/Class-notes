---
tags:
  - Computer_Science/Networking
aliases:
  - TCP/IP Stack
---
# TCP/IP Stack
The TCP IP stack is combination of protocols that abstract the exchange of data transfer, this simplifies network communication. Each protocol in the stack is referred to as a "layer".
When sending data across a network, the stack is traversed down to send the data, then traversed back up to reassemble to sent data.

### Application Layer
The highest layer is the [[#Application Layer]], which uses the abstraction provided by the [[#Transport Layer]] to request data to be sent to a given destination.
This is generally the layer that is interacted with the most via applications. In general it takes in a stream of bytes and the receiver can expected to receive a stream of bytes.

## Transport Layer
The [[#Transport Layer]] handles splitting and merging the data from the [[#Application Layer]] into discrete [[Computer-Science/Networking/Data Packets|Data Packets]] for transition across the network and receiving across a network.

## Network Layer
Where the IP protocol operates with [[Computer-Science/Networking/Data Packets|Data Packets]] to determine the source and destination of a [[Computer-Science/Networking/Data Packets|Data Packet]].
This layer wraps the TCP or UDP packets from the [[#Transport Layer]] in the [[Computer-Science/Networking/Data Packets#IP Packet Structure|IP Packet Structure]].

## Link Layer
Handles the physical connects between devices. [[Computer-Science/Networking/MAC Address|MAC Addresses]] operate on this layer of the network.
[[Computer-Science/Networking/MAC Address|MAC Addresses]] will change with each hop between networks, as they only operate on local networks.
