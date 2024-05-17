---
tags:
  - Electronics
  - Homework
---
# Mock Revision - Core

# 1
A 12V power supply is connected to a 3k$\Omega$ resistor. What is the current flowing in the circuit?
$V = IR$
$I = \frac{V}{R} = \frac{12}{3000} = 4$mA
**CORRECT**

# 2
A 9V battery provides a current of 1.5A to a resistor, What is the value of the resistance?
$V = IR$
$R = \frac{V}{I} = \frac{9}{1.5} = 6\Omega$
**CORRECT**
# 3
A resistor of 15$\Omega$ is connected to a battery of unknown voltage. The current in the circuit is measured to be 0.1A. What is the voltage of the battery?
$V = IR = 15\times0.1 = 1.5$V
**CORRECT**
# 4
Find the total resistance in each of the following combinations of resistors.

## A
![[Homework/Electronics/Core Revision/Q4A.png]]
$R_t = R_1 + R_2 + R_3 = 10 + 30 + 80 = 120\Omega$
**CORRECT**
## B
![[Homework/Electronics/Core Revision/Q4B.png]]
$R_t = (R_n^{-1} + R_{2n}^{-1})^{-1} = (20^{-1} + 20^{-1} + 10^{-1})^{-1} = 5$k$\Omega$
**CORRECT**
## C
![[Homework/Electronics/Core Revision/Q4C.png]]
$R_{parallel} = (R_n^{-1} + R_{2n}^{-1})^{-1} = (60^{-1} + 15^{-1})^{-1} =12k\Omega$
$R_{series} = R_n + R_{1n} = 12 + 10 = 22k\Omega$
**CORRECT**
# 5
![[Homework/Electronics/Core Revision/Q5.png]]
$V = IR$

a) $R_1 = \frac{6}{0.4} = 15$k$\Omega$
b) $V_1 = 15 - 6 = 9$V
c) $I_1 = \frac{9}{1\times10^4} =0.9$mA
d) $I_2 = 0.9 - 0.4 = 0.5$mA
e) $R_2 = \frac{6}{0.5} = 12$k$\Omega$

$P = VI$
f) $P = VI = 6\times4\times10^{-4} = 2.4$mW

a) **CORRECT**
b) **CORRECT**
c) **CORRECT**
d) **CORRECT**
e) **CORRECT**
f) **CORRECT**
# 6
![[Homework/Electronics/Core Revision/Q6.png]]
$V = IR$

a) $V_1 = 12 - 3 = 9V$
b) $R_1 = \frac{9}{0.5} = 18k\Omega$
c) $I_2 = \frac{3}{15} = 0.2$mA
d) $I_3 = 0.5 - 0.2 = 0.3$mA
e) $R_3 = \frac{3}{0.3} = 10k\Omega$

f) $P = VI = 3\times2\times10^{-4} = 15$kW

a) **CORRECT**
b) **CORRECT**
c) **CORRECT**
d) **CORRECT**
e) **CORRECT**
f) **INCORRECT** - 0.6mW
# 7
![[Homework/Electronics/Core Revision/Q7.png]]
$V = IR$

a) $V_1 = 7.5 - 3 = 4.5$V
b) $I_1 = \frac{4.5}{1\times10^4} = 0.45$mA
c) $I_2 = 0.45 - 0.2 = 0.25$mA
d) $R_1 = \frac{3}{0.2} = 15k\Omega$
e) $R_2 = \frac{3}{0.25} = 12k\Omega$

f) $R_{total} = (R_n^{-1} + R_{2n}^{-1})^{-1} = (15^{-1} + 12^{-1})^{-1} = 6.7k\Omega$

a) **CORRECT**
b) **CORRECT**
c) **CORRECT**
d) **CORRECT**
e) **CORRECT**
f) **CORRECT**
# 8
Draw a light sensing circuit where the output voltage falls with increasing illumination?
Unsure.
**INCORRECT**

# 9
Draw a Temperature sensor where the output rises as it gets hotter?
Unsure.
**INCORRECT**
# 10
![[Homework/Electronics/Core Revision/Q10.png]]
$V = IR$

$I = \frac{1.5}{1\times10^4} = 0.15$mA
$V_2 = 5 - 1.5 = 3.5$V
$R = \frac{V_2}{I} = \frac{3.5}{0.15} = 23k\Omega$
**CORRECT**
# 11
Thevenin's theorem is used to produce an equivalent circuit for the voltage diver circuit shown bellow.
![[Homework/Electronics/Core Revision/Q11.png]]

# A
Calculate the $V_{oc}$ & $R_{eq}$

$12:18 = 2:3 = 1:1.5 = 6V:9V$
$V_{oc} = 9$V
**CORRECT**

$I_{sc} = \frac{V}{R} = \frac{15}{12} = 1.25$A
**CORRECT**

$R_{eq} = \frac{V_{oc}}{I_{sc}} = \frac{9}{1.25} = 7.2\Omega$
**CORRECT**

# B
### I
Draw the equivalent circuit with a load resistance connected across the output terminals
![[Homework/Electronics/Core Revision/A11Bi.png]]
**INCORRECT** - needed to draw 8v over the load resistor.
### II
Use the equivalent circuit to calculate the maximum permissible load current to ensure the output voltage $V_{out}$ does not fall bellow 8.0V.

$V = IR$
$I = \frac{V}{R} = \frac{8}{7.2} = 1.1$A
**INCORRECT** - needed to find & use the resistance over the load.