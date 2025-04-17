---
tags:
  - Computer_Science/Revision/1_1
---
# Fetch-Decode-Execute
Is a cycle that the CPU performs to execute instructions.

(refers to [[Computer-Science/Revision/Component 1.1/Register|Registers]])
## Fetch
1. Contents of PC -> MAR
2. Data at location specified by MAR is copied to MDR
3. PC counter is incremented
4. MDR -> CIR

## Decode
5. Instruction in CIR is decoded
6. Split into operand and opcode
7. Both are passed to the Accumulator to perform the specified operation

## Execute
8. The instruction is executed and the result stored in the Accumulator register.