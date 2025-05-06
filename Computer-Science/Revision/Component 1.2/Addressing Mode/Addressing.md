---
tags:
  - Computer_Science/Revision/1_2
---
# Addressing Modes
The last two bits of an operation code specify the addressing mode.
![[Computer-Science/Revision/Component 1.2/Addressing Mode/Addressing Mode - Instruction Layout.png]]

The value of the addressing mode determines which addressing mode to use. There are four total different addressing modes.

### Immediate Addressing
A value to be used.

### Direct Addressing
The memory address for the value to be used.

### Indirect Addressing
The register/memory address which contains the memory address for the value to be used.

### Indexed Addressing
Similar to [[#Direct Addressing]]. However, the address is obtained by adding a constant value to the given memory address. The constant is stored in a **index register**.

Index addressing is commonly used to access an element in an array, as they are continuous while starting at a set memory location.