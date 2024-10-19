---
tags:
  - Computer_Science/Recursion
---
# Call Stack
The call stack is a dynamic data structure stored in RAM.
A call stack is maintained for each task/thread.

### Procedures
The order that data is pushed onto the stack varies based on machine architecture, but the overall principles are the same.

The stack is utilized when calling procedures.
When calling a procedure, any local variables from the previous environment are pushed onto the stack in (reverse order that they were declared).
Then any arguments are pushed onto the stack.
Then the return address (The address for the program counter to return to) is pushed onto the stack.

When a procedure finishes
It removes any variables local to the procedure from the stack (along with any args) & jumps execution back to the return address of the previous execution point.

When returning values from a method, the value is usually either stored on the stack or a CPU register.