---
tags:
  - Computer_Science/Revision/1_2
---
# Memory Management
Memory can be managed by an OS in a variety of different methodologies.

## Paging
Memory is split into fixed chunks called **pages**
Each page has a memory address

When loading a process into RAM it is allocated pages, but these might not be continuous.

A **Page Table** is used to map between the logical page address and the physical memory address.

## Segmentation
Memory is divided into segments of varying lengths

A segment of memory can relate to entire programs or a single method within a program.

## Virtual Memory
(Similar to 1.1)
Excessive use of virtual memory can cause **disk thrashing** on when virtual memory is on a hard disk drive.