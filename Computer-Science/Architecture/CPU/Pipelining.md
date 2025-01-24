---
tags:
  - Computer_Science/Architecture/CPU
---
# Pipelining
[[Computer-Science/Architecture/CPU/Pipelining|Pipelining]] is an optimisation that can be made to the [[Computer-Science/Architecture/CPU/Fetch-Decode-Execute|Fetch-Decode-Execute Cycle]], where instead of waiting for an entire cycle to finish, the [[Computer-Science/Architecture/CPU/CPU|CPU]] be executing all three operations at the same time on different instructions.
This enables concurrent execution of instructions, greatly increasing the speed of computation.

However if a branch is encountered, then the [[Computer-Science/Architecture/CPU/CPU|CPU]] might take the wrong path and have to flush the [[Computer-Science/Architecture/Register|Registers]] and restart execution at the jump point.

### Example

| Fetch         | Decode        | Execute       |
| ------------- | ------------- | ------------- |
| Instruction 1 |               |               |
| Instruction 2 | Instruction 1 |               |
| Instruction 3 | Instruction 2 | Instruction 1 |
| Instruction 4 | Instruction 3 | Instruction 2 |
