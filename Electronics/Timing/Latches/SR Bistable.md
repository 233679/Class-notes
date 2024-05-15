---
tags:
  - Electronics/Timing
aliases:
  - Set-Reset Latch
---
# SR Bistable
An [[SR Bistable]] latch has two stable states (bi - two). As they are stable states the latch will stay in one of it's stable states until it is forced into it's other stable state.

![[Simple-SR-Bistable.png]]

The bar above the letters means that they are [[../../Active Low|Active Low]]
![[Low-Signal-Words.png]]

Inside a [[SR Bistable]] is a circuit made up of [[../../Logic Gates/NAND|NAND]] gates, as shown bellow.
![[SR-Layout.png]]

[[../../Output Representations/Truth Table|Truth Table]] for a [[SR Bistable]]:
![[SR-Truth-Table.png]]
A [[SR Bistable]] isn't commonly represented by a [[../../Output Representations/Truth Table|Truth Table]], since the output of the [[../../Integrated Circuit|Integrated Circuit]] depends on the previous output.

Instead these types of [[../../Circuits/Circuit|Circuits]] are represented using a [[../../Output Representations/Sequence Table|Sequence Table]]:
![[SR-Sequence-Table.png]]

Or a [[../../Output Representations/Sequence Diagram|Sequence Diagram]]
![[SR-Sequence-Diagram.png]]

### Problems
However, they are some problems with the [[SR Bistable]] using [[../../Active Low|Active Low]] inputs.

- $\frac{}{S}$ and $\frac{}{R}$ cannot be low at the same time.
- [[../../Active Low|Active Low]] is often hard to think about.
- The output changes as soon as $\frac{}{S}$ or $\frac{}{R}$ changes.

