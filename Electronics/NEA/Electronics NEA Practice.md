---
tags:
  - Electronics/NEA-Practice
---
# Electronics NEA Practice

# Problem
The problem that my circuit will solve is the process of determining the output of AND, OR, XOR, NAND, NOR, XNOR two input logic gates.
This is a problem that needs solving as it is easy to mix up the truth tables of all of these logic gates.

---
Include portion about discovering the need for a Debounce sub section.
Include portion about discovering saving a NAND gate by having mosfets be pull down

---
## Sub-Sections
### Debounce
I designed my debounce circuit first in circuit wizard before trying to build it on the bread board.
DEBOUNCE IMAGE
My V$_{out}$ value should toggle between 0 & 5V. & There should be a current of 5mA.
I chose a value of 1k for R4 & a value of 47$\micro$F for my capacitor, which gives me an RC value of 0.47s ($1\times10^4\times4.7\times10^{-5}$). With the schmitt thresholds sourced from https://www.electronicsteaching.com/Electronics/schmitt.html, the gate will switch at 2V from a falling signal. Using this with the formula $t = -RC\times Ln(\frac{V_{out}}{V_{in}}) = -0.47\times Ln(\frac{2}{5}) =$ 0.430 seconds before the threshold will be reached. This eliminates the switch bounce problem, whilst not causing the output when releasing the switch to be too delayed.
DEBOUNC IMAGE
Building it on the bread board, my V$_{in}$ was 5.07V, my V$_{out}$ toggled between 5.1V & 0V. This is the desired behaviour. The measured value of my resistor was 980$\Omega$, this is within the expected range. Calculating my current with $\frac{V}{R} = I$, I get $\frac{5.07}{980} = 0.0052$A. Which is very close to my predicted 5mA ($\frac{5}{1000}$ = 0.005A), with an error value of  $\pm$ 0.002mA. 

### 1 Bit Counter
With my design in circuit wizard, I connected the set & clear inputs to 5V. This is because both of the inputs are active low, so by connecting them to 5V they will never trigger. This is ideal, as I don't make use of either of these inputs in the circuit.
COUNTER IMAGE
I expect Q out and $\bar{Q}$ out to toggle between 5V 0V. With A to be also following this behaviour
