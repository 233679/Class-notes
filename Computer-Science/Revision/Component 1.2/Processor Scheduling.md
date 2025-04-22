---
tags:
  - Computer_Science/Revision/1_2
---
# Processor Scheduling
A single CPU core can only process instructions for a program one at a time.
=> The OS must manage what the CPU is executing to allow for the illusion of multi-tasking

### Goals of Scheduling
- Acceptable response time for all users
- Ensure fairness between multiple users
- Maximize time CPU is useful.

## Scheduling Methods

### Round Robin
Each job is stored in a FIFO queue, and the job at the front of the queue is executed for a fixed slice of time. If the job did not finish it push back onto the queue.

### First Come First Serve
Jobs are run until completion by the CPU based upon the order they were received.

### Shortest Remaining Time
Upon arrival, the time for a job to complete is estimated.
The CPU will execute the current shortest job.

If a new job arrives with a short estimated time, then the CPU will switch to executing the shortest job.

### Shortest Job First
(AKA shortest process next)
Upon arrival, the total execution time for a job is estimated.
The CPU will execute the current shortest job **until completion**. If a shorter job arrives the CPU **does not** switch to it.

### Multilevel Feedback Queues
Multiple queues are used with different priority levels.
The CPU executes jobs from the highest priority queue first.

If a job is using too much CPU resources, it might get moved to a lower priority.
If a job has not been executed for awhile, it might get moved to a higher priority.