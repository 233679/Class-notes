---
tags:
  - Computer_Science/Networking
aliases:
  - Domain Name System
---
# DNS
Computers on the internet communicate with each other via IP address, which is just a set of number. But humans prefer remembering words and names to communicate with items.

To solve this problem the Domain Name System (DNS) was created, which resolved a domain name to an IP address. E.G. "example.com" --> "192.168.0.4".

### Process Example
When a computer needs to resolve a domain name, it first checks the local cache of the computer.
If it is not round, it then sends a request to a DNS server.
If the DNS server does not have the mapping, it sends a request to a root DNS server.
The root DNS server might not know the mapping, but it does know which Top Level Domain (TLD) DNS server has this mapping.
Your computer then reaches out to a TLD server, which manages all the traffic for a TLD (E.G. ".com", ."org").
The TLD server then sends the request to the correct "Authoritative Name Server", which knows the IP Address for the desired domain.
Once a response has been returned. The DNS servers, and your local computer store this resolution in a cache for use later on.
This cache will eventually expire.