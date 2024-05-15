---
tags:
  - Electronics/Counters
---
# Assigning Unused As Don't Care
Example:
![[Electronics/Counters/Synchronous/Assigning-Unused-As-Dont-Care-Example.png]]
Note that for the [[Electronics/Counters/Synchronous/Unused States|Unused States]] the "next state" is marked as little "x".

## Either or

This a [[Electronics/Output Representations/Karnaugh map|Karnaugh map]] of $Dc$ with the x's included.
![[Electronics/Counters/Synchronous/Assigning-Unused-Example-Karnaughmap.png]]

Theses x's are special, they **can** be either 1 or 0, so if it makes the boolean expression simpler we can include them!
![[Electronics/Counters/Synchronous/Assigning-Unused-Karnaugh-Dc.png]]
Note how one of the x's wasn't included.

Other Karnaugh maps: [[Electronics/Counters/Synchronous/Assigning-Unused-Karnaughmap-Db.png|Db]], [[Electronics/Counters/Synchronous/Assigning-Unused-Karnaughmap-Da.png|Da]]

## Remapping
With the new [[Electronics/Boolean Algebra/Boolean Representation|Boolean Representation]] of our states, the [[Electronics/Output Representations/Truth Table|Truth Table]] can be recalculated.
![[Electronics/Counters/Synchronous/Assigning-Unused-New-Table.png]]
And the [[Electronics/Counters/Synchronous/State Diagram|State Diagram]]
![[Electronics/Counters/Synchronous/Assigning-Unused-New-States.png]]

