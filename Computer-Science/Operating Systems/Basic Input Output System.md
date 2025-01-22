---
tags:
  - Computer_Science/Opperating-Systems
aliases:
  - BIOS
---
# Basic Input Output System
[Basic Input Output System](Basic%20Input%20Output%20System.md) (BIOS) can be classified the most simple [Operating System](Operating%20System.md) possible, however, they are not particularly comparable. It is some of the first code that is executed upon boot.

An important function of the [[Computer-Science/Operating Systems/Basic Input Output System|BIOS]] is to execute a Power On Self Test (POST) to ensure that all hardware components are working as expected before any other action is taken.
The [[Computer-Science/Operating Systems/Basic Input Output System|BIOS]] is generally stored in read only memory, as it does not need to be change, with the settings controlled by the [[Computer-Science/Operating Systems/Basic Input Output System|BIOS]] being stored in flash memory. These settings control important functions, such as the boot order.

The [[Computer-Science/Operating Systems/Basic Input Output System|BIOS]] then hands off execution to a boot loader, which will eventually load an [[Computer-Science/Operating Systems/Operating System|Operating System]].