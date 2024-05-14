# Real Counter
A [[Electronics/Counters/Asynchronous/Real Counter/Real Counter]] is a [[Electronics/Falling Edge|Falling Edge]] counter.
![[Electronics/Counters/Asynchronous/Real Counter/Falling-Edge-Counter.png]]
Take note that the [[Electronics/Timing/Clock/Clock|Clock]] is a [[Electronics/Falling Edge|Falling Edge]] [[Electronics/Timing/Clock/Clock|Clock]].

To connect multiple [[Electronics/Counters/Asynchronous/Real Counter/Real Counter|Real Counters]] in sequence, connect the D output of the [[Electronics/Counters/Asynchronous/Real Counter/Real Counter]] to the [[Electronics/Timing/Clock/Clock|Clock]] input of the next [[Electronics/Counters/Asynchronous/Real Counter/Real Counter]].
![[Electronics/Counters/Asynchronous/Real Counter/Conecting-Counters.png]]
This works because D goes high on the 8th pulse, then goes low on the 10th pulse, triggering the next counter.