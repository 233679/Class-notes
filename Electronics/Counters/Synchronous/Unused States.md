---
tags:
  - Electronics/Counters
---
# Unused States
Often, the sequence of states desired doesn't fit nicely into binary number, so there will be some unused states.

![[Electronics/Counters/Synchronous/Synchronous-Counter-Unused-States.png]]
These states should point to an existing state, as when the counter starts up, the output could be in any possible state, even unused ones. The unused states must lead to state in the main sequence, otherwise the [[Electronics/Counters/Synchronous/Synchronous Counter|counter]] would be stuck in the unused states.