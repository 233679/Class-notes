# Sequence Generator
A [[Sequence Generator]] can be created by connecting a [[../Counter|Counter]] to some [[../Logic Gates/Logic Gates|Logic Gates]] to create an output sequence.

### Example:

Take a given sequence:
- No LEDs on
- Red LEDs on
- Red & yellow LEDs on
- Red, yellow, & green LEDs on

![[Example-State-Table.png]]
This has 4 states so it can be represented by a 2 bit [[../Counter|Counter]].

Using the [[../Output Representations/State Table|State Table]], the [[../Boolean Algebra/Boolean Representation|Boolean Representation]] of R, Y, & G. can be calculated.
![[Boolean-Representation.png]]

Example [[../Circuits/Circuit|Circuit]]:
![[Example-Circuit.png]]