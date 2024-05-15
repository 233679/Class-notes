---
tags:
  - Electronics/Counters
aliases:
  - Synchronous Counters
---
# Synchronous Counter
In [[Electronics/Counters/Synchronous/Synchronous Counter|Synchronous Counters]] all of the [[Electronics/Timing/Clock/Clock|Clocks]] are connected together. This avoids the ripple effect experienced with [[Electronics/Counters/Asynchronous/Asynchronous Counter|Asynchronous Counters]]. To achieve this [[Electronics/Logic Gates/Logic Gates|Logic Gates]] are used to control whether an output is high or low.

Example [[Physics/Electricity/Circuit|Circuit]]:
![[Electronics/Counters/Synchronous/Synchronous-Counter-Circuit-Example.png]]

The output of a [[Electronics/Counters/Synchronous/Synchronous Counter|Synchronous Counter]] can be represented in multiple ways, some of these being a [[Electronics/Counters/Synchronous/State Diagram|State Diagram]] or a [[Electronics/Output Representations/Sequence Table|Sequence Table]].

### What Logic Gates to Use?
To figure out what [[Electronics/Logic Gates/Logic Gates|Logic Gates]] are needed to make the desired output sequence, lay out the sequence in a modified [[Electronics/Output Representations/Sequence Table|Sequence Table]]. With the pulse, the output, and the next state being the output that will come next.
![[Electronics/Counters/Synchronous/Synchronous-Counter-Seq-Table-Example.png]]

After this, either [[Electronics/Boolean Algebra/Boolean Algebra|Boolean Algebra]] or a [[Electronics/Output Representations/Karnaugh map]] can be used to find the boolean expression for each state (the D$_C$, D$_B$, & D$_A$). Then connect the corresponding inputs with the calculated [[Electronics/Logic Gates/Logic Gates|Logic Gates]]

### Not All States Need to Exist

![[Electronics/Counters/Synchronous/Unused States|Unused States]]