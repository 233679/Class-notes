# Flip Flop
A [[Flip Flop]] is used to "store" the signal on the data line when the clock triggers. This means that the logic value that was on the data line will be output until the next clock trigger, where it reads the value from the data line again. However, the set & reset inputs have priority & can be triggered at any point in time to change the logic value output.

An example of a [[Flip Flop]] is shown bellow.
![[Flip Fop Image.png]]

Examples of a [[../../Output Representations/Sequence Diagram|Sequence Diagram]] for a [[Flip Flop]].
![[Flip-Flop-Sequence.png]]
![[Flip-Flop-Sequence-2.png]]