---
tags:
  - Computer_Science
aliases:
  - Two's Complement
---
# Two's Complement
Is a way of storing signed binary values.
In [[#Two's Complement]] the most significant bit of a binary number has the equivalent value to that of an unsigned binary number, but the sign of the number is negative.

The value of a [[#Two's Complement]] encoded binary number can still be found via the sum of the positive bits.

### Converting Negatives
To convert negative denary numbers into two's complement:
1) Convert the magnitude of the number into binary
2) Flip every bit of the binary number (remember to include the MSB to indicate negativity)
3) Add the value of the LSB to the number
4) Finished!

It helps to remember:
After the MSB exists an infinite set of "1"
Before the LSB exists an infinite set of "0"

### Examples

##### Five Bits

| -16 | 8   | 4   | 2   | 1   |
| --- | --- | --- | --- | --- |
| x   | x   | x   | x   | x   |
##### Eight Bits

| -128 | 64  | 32  | 16  | 8   | 4   | 2   | 1   |
| ---- | --- | --- | --- | --- | --- | --- | --- |
| x    | x   | x   | x   | x   | x   | x   | x   |

---

In the exam a binary value should be assumed not [[#Two's Complement]] unless specified otherwise.