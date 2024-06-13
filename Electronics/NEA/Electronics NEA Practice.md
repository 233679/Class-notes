---
tags:
  - Electronics/NEA-Practice
---
# Electronics NEA Practice

# Problem
The problem that my circuit will solve is the process of determining the output of AND, OR, XOR, NAND, NOR, XNOR two input logic gates.
This is a problem that needs solving as it is easy to mix up the truth tables of all of these logic gates.

---
Include portion about discovering the need for a Debounce sub section.
Include portion about discovering saving a NAND gate by having mosfets be pull down

---
## Sub-Sections
### Debounce
I designed my debounce circuit first in circuit wizard before trying to build it on the bread board.
DEBOUNCE IMAGE
I chose a value of 1k for R4, as I calculated that it would result in 5mA of current (5.03 observed), with the voltage of 5V (5.02 observed).
However, when constructing this circuit on the bread board, the schmit inverter was acting erratically, with the output voltage going to -4V, then spiking up to 16V suddenly, then decreasing down to 0V, before going back to 0 while I still had the switch connected. With this all happening over the course of a second.
The desired behaviour of the inverter is to remove the bounce introduced by the physical nature of the switch. This is not the desired behaviour.
I tried changing the resistance of R4 to 220, as I theorised that 5mA might be too little current for the schmit inverter. With the changed resistance the current would be 23mA (22.1 observed). However, the erratic behaviour continued.