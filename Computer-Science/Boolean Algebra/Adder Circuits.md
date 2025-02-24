---
tags:
  - Computer_Science/Boolean_Algebra
---
# Adder Circuits

## Half Adder
A half adder is a binary circuit that can add two binary values together

| B   | A   |     | Result | Carry |
| --- | --- | --- | ------ | ----- |
| 0   | 0   |     | 0      | 0     |
| 0   | 1   |     | 1      | 0     |
| 1   | 0   |     | 1      | 0     |
| 1   | 1   |     | 0      | 1     |

The half adder only has two inputs, so it cannot be used to be used to chain additions together as the carry bit from the previous addition cannot be included.
### Circuit Diagram
![[Computer-Science/Boolean Algebra/Adder Circuits - Half adder circuit.png]]

## Full Adder
A full adder is a combination of two [[#Half Adder]]s.

| $C_{in}$ | B   | A   |     | Result | Carry |
| -------- | --- | --- | --- | ------ | ----- |
| 0        | 0   | 0   |     | 0      | 0     |
| 0        | 0   | 1   |     | 1      | 0     |
| 0        | 1   | 0   |     | 1      | 0     |
| 0        | 1   | 1   |     | 0      | 1     |
| 1        | 0   | 0   |     | 1      | 0     |
| 1        | 0   | 1   |     | 0      | 1     |
| 1        | 1   | 0   |     | 0      | 1     |
| 1        | 1   | 1   |     | 1      | 1     |

### Circuit Diagram
![[Computer-Science/Boolean Algebra/Adder Circuits - Full adder circuit.png]]

### Chaining
Unlike [[#Half Adder]]s, [[#Full Adder]]s can be chained together to add together to allow for larger binary numbers to be added together.
![[Computer-Science/Boolean Algebra/Adder Circuits - Chaining Full Adder.png]]