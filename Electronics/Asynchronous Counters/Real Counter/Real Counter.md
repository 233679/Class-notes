# Real Counter
A [[Real Counter]] is a [[../../Falling Edge|Falling Edge]] counter.
![[Falling-Edge-Counter.png]]
Take note that the [[../../Timing/Clock/Clock|Clock]] is a [[../../Falling Edge|Falling Edge]] [[../../Timing/Clock/Clock|Clock]].

To connect multiple [[Real Counter|Real Counters]] in sequence, connect the D output of the [[Real Counter]] to the [[../../Timing/Clock/Clock|Clock]] input of the next [[Real Counter]].
![[Conecting-Counters.png]]
This works because D goes high on the 8th pulse, then goes low on the 10th pulse, triggering the next counter.