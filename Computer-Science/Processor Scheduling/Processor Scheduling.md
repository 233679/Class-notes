---
tags:
  - Computer_Science/Proccessor-Scheduling
---
# Processor Scheduling
A single [CPU Core](../Architecture/CPU%20Core.md) can only process instruction for one [Program](../Programs/Program.md) at a time, which means the [Operating System](../Operating%20Systems/Operating%20System.md) has to schedule which [Applications](../Programs/Program.md) can run at a certain time. This gives an illusion of [Multi-Tasking](../Multi-Tasking.md).

## Goals
- Provided acceptable response times with multiple [Programs](../Programs/Program.md)
- Maximize [CPU](../Architecture/CPU.md) processing time

## Scheduling Algorithms

#### Round Robin
Each job is allocated a time slice in a [Queue](../Data%20Structures/Queue.md), during which it can use the resources of the [CPU](../Architecture/CPU.md). If the job isn't finished when the time runs out, a new allocated slice is added to the back of the [Queue](../Data%20Structures/Queue.md).

#### First Come First Serve
The first job to arrive is run until the job terminates.

#### Shortest Remaining Time
The time a job will take to complete is estimated when it arrives. The job that has the shortest time remaining is executed until it terminates. If a new shorter job arrives, then the shorter job is executed.

#### Shortest Job First
AKA: "Shortest Process Next"
The time a job will take to complete is estimated when it arrives. The job that has the shortest time is executed until completion. If a shorter task arrives before the first job halts, the current job will keep executing. Only once the current job has halted that a new one could start.

#### Mutli-Level Feedback Queues
Multiple [Queues](../Data%20Structures/Queue.md) are created, each having a distinct priority level. If a job is using too much [CPU](../Architecture/CPU.md) time, it may be moved to a lower priority [Queue](../Data%20Structures/Queue.md). Jobs can also be moved to a higher priority [Queue](../Data%20Structures/Queue.md). This allows the [CPU](../Architecture/CPU.md) & programs to have finer control over the order of execution.

### Pre-emptive Vs Non Pre-emptive

##### Pre-emptive:
[Pre-Emptive](Pre-Emptive.md)
- [Round Robin](#Round%20Robin),
- [Shortest Remaining Time](#Shortest%20Remaining%20Time),
- [Mutli-Level Feedback Queues](#Mutli-Level%20Feedback%20Queues)

##### Non Pre-emptive:
[Non Pre-emptive](Non%20Pre-emptive.md)
- [First Come First Serve](#First%20Come%20First%20Serve),
- [Shortest Job First](#Shortest%20Job%20First)

