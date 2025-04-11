---
tags:
  - Computer_Science
  - Revision
---
# Long Answer Planning

## Sections
A long answer question is split into three points.
Each point does not have to be discrete within the answer.
### Knowledge
(Don't need to directly use the word **knowledge**)
What you know
### Application
(Use the work **application**)
How this knowledge applies to the asked question
### Evaluation
(Use the word **evaluation**)
What you would recommend as the solution to the questions and why

## Q1
The hash function is changed so there are no longer high numbers of collisions.
During busy periods the firewall is expected to check several addresses a second. It is anticipated
that roughly 10 new addresses will be added to a whitelist (list of acceptable addresses) each day.
There is a debate as to whether a hash table (with the new hash function) is the best approach, or
if the whitelist would be better stored in a linked list.

(e) *Discuss whether a hash table or linked list is better to store acceptable websites. You
should compare how each structure can be searched and has data added and come to a
recommendation as to which is better for the whitelist* \[12]

### Planning
#### Known
Hashtable:
- Constant get and set complexity (due to low collisions)
- unsorted
- Fast
- Can use more memory

Linked List:
- Get is O(n)
- Set can be O(1) (only if the location of the last node is stored), otherwise O(n).
- Removing entry is fast
- can be sorted
- cache misses often
- Does not need continuous memory

#### Application
Hashtable:
- Being unsorted is fine
- Higher memory usage (cost of extra memory)
- Fast is good as firewall handles excessive web traffic
- Consistent retrieval times (user experience)

Linked List:
- Getting and setting will initially be fast but will slow down alot as more URL's are added
- Firewall is used alot so web traffic will begin to slow down
- Takes longer for allowed websites at the end of the list to be allowed (inconsistent user experience)
- Does not need continuous memory so firewall being used for other tasks is fine

#### Evaluation
Hashtable better fit:
- Entries added later on will take the same time to retrieve as earlier entries - improved user experience
- Constant retrieval time - Allows firewall to handle lots of web traffic
- Is unsorted - not relevant to a firewall since allowed or not allowed domains is not a sorted data set


## Q2
Discuss the positive and negative impacts computers are having on the environment \[9]

### Planning
#### Known
Negative:
- Use electricity
- Internet requires electricity
- Made of out rare metals

Positive:
- Can be used to monitor deforestation
- Can be used to analyse best choices to improve environment

#### Application
Negative:
- Alot of electricity comes from fossil fuels - emit CO2 and other harmful gasses causing global warming
- The internet requires alot of electricity to keep running
- Constructing under-sea cables for internet disrupts the ocean floor ecosystem.
- Extracting rare metals requires heavy industry - heavy industry produces highly toxic chemicals destroying local eco systems

Positive:
- Monitoring of deforistation and climate change easier with computers - can analyse from space with satelites and continuously watch for changes 
- Computers can run simulations and analyse data to determine the most effective environment protection that can take place, increasing the benefit to environment.

#### Evaluation
- Bad for environment 
- Are an essential component of the modern age


### MS points:
- Planned obselecence (short lifespan, sent to landfil)
- Automate tasks consuming power (such as centeral heating) to reduce energy use
- Less paper used in communication - Save tress
- Less optical media produced
- Internet allows communication without travel - save on polution

## Q3
The charity has several desktop computers in their office that use a CISC processor. They are considering buying mobile devices for their staff to use when they are not in the office. Discuss whether these mobile devices should use the same CISC processors that are used in their desktop computers or if they should use a RISC processor instead.

You should include the following in your answer:
• the difference between each processor type
• the suitability of each processor type for mobile devices. 
\[12]

### Planning
#### Known
CISC:
- Has lots of instructions
- Can execute more complex operations with single instruction
- Smaller code size
- More expensive
- High power

RISC:
- Has small amount of essential instructions
- Needs multiple instructions to perform semi-complex tasks
- larger code size
- Cheap
- Low power
### Application
CISC:
- Complex instruction set - faster processing speed of mobile
- Smaller code size - mobile storage is limited so more programs can fit
- Will be more expensive for the company
- Requires massive batteries as use lots of energy - making a mobile device heavier and harder to transport

RISC:
- Simple instruction set - slower processing speed for more complicated tasks
- Larger code size - Less applications can be stored
- Cheaper to buy - charities not much money
- Does not require much power to opperate - less batteries - lighter device, easier transport

#### Evaluation
- RISC requires less power so smaller batteris - light devices (essential as mobile primay use case)
- RISC is cheaper and charity has limited money so will be better able to afford devices
- RISC processers can be slower but charity work is not compute intensive
- Less applications can be stored, but alot of office applications are browser based
Recomend RISC


### MS
- Most software is CISC
- Buy new RISC software
- RISC more ram due to smaller instruction set as well