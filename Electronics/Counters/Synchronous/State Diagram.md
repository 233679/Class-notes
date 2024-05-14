---
tags:
  - Electronics/Counters
  - Electronics/Output-Representations
---
# State Diagram
A [[Electronics/Counters/Synchronous/State Diagram|State Diagram]] is a visual way of representing the states their orders for a [[Electronics/Counters/Synchronous/Synchronous Counter|Synchronous Counter]].

Example:
![[Electronics/Counters/Synchronous/State-Diagram-Example.png]]

However, if there are [[Electronics/Counters/Synchronous/Unused States|Unused States]] in a sequence then they can be represented as so:
![[Electronics/Counters/Synchronous/State-Diagram-Unused-States.png]]
With the unused states leading to a state in the main sequence. If they don't, then the [[Electronics/Counters/Synchronous/Synchronous Counter|counter]] could get stuck!