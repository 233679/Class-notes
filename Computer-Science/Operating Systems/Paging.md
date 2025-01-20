---
tags:
  - Computer_Science/Opperating-Systems
---
# Paging
[[Computer-Science/Architecture/Memory|Memory]] is divided up into chunks called "pages". A single page is the minimum amount of memory that can be allocated for a single [[Computer-Science/Programs/Program|Program]].

Furthermore, the pages being used by a single [[Computer-Science/Programs/Program|Program]] do not have to be continuous (next to each other in memory). This allows for more flexibility in [[Computer-Science/Operating Systems/Memory Management|Managing Memory]].

To keep track of the memory layout, a "page table" is used to map logical memory addresses to physics memory addresses.
