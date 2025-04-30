---
tags:
  - Computer_Science
  - Revision
---
# Comparing Programs

![[Computer-Science/Revision/2024_new_q_cs.png]]

Known:
Zac no close file
Zac is fun + reuse
Kofi no fun - reuse
Kofi fixed fname
Kofi read 1000 lines
Zac reed 100
Kofi - set x to larger rather than breaking out of loop

Apply:
Zac leave file open - no other process can access will p is run
Kofi - fixed fname, other programs cannot change filename, problem if both use same file
Zac can be resused easily as is function
Kofi read 1000 - better for longer files
Zac - 100 lines, less memory but can't read long files

Eval:
Zac is alot better for reuse as it is function and takes custom fname, however zac never closes file so no other processes can use the file. Kofi can read up to 1000 lines compared to zacs's, and does close the file so it can be reused later. Furthermore, kofi cannot change the filename so only it cannot be resused, making even worse it

Zac's is better, as it can be reused. However, the lack of closing the file means the file can only be read once per program execution.