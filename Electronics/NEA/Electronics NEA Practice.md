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
![[Electronics/NEA/Debounce-wiz.png]]
My V$_{out}$ value should toggle between 0 & 5V. & There should be a current of 5mA.
I chose a value of 1k for R4 & a value of 47$\micro$F for my capacitor, which gives me an RC value of 0.47s ($1\times10^4\times4.7\times10^{-5}$). With the schmitt thresholds sourced from https://www.electronicsteaching.com/Electronics/schmitt.html, the gate will switch at 2V from a falling signal. Using this with the formula $t = -RC\times Ln(\frac{V_{out}}{V_{in}}) = -0.47\times Ln(\frac{2}{5}) =$ 0.430 seconds before the threshold will be reached. This eliminates the switch bounce problem, whilst not causing the output when releasing the switch to be too delayed.
#### Measurements:
##### Without Debounce:
![[Electronics/NEA/Bounce.jpg]]
##### With Debounce:
![[Electronics/NEA/Debounce.jpg]]
Building it on the bread board, my V$_{in}$ was 5.07V, my V$_{out}$ toggled between 5.1V & 0V. This is the desired behaviour. The measured value of my resistor was 980$\Omega$, this is within the expected range. Calculating my current with $\frac{V}{R} = I$, I get $\frac{5.07}{980} = 0.0052$A. Which is very close to my predicted 5mA ($\frac{5}{1000}$ = 0.005A), with an error value of $\pm$ 0.002mA.
![[Electronics/NEA/Debounce circuit.jpg]]
### 1 Bit Counter
With my design in circuit wizard, I connected the set & clear inputs to 5V. This is because both of the inputs are active low, so by connecting them to 5V they will never trigger. This is ideal, as I don't make use of either of these inputs in the circuit.
COUNTER IMAGE SIM
I expect Q out and $\bar{Q}$ out to toggle between 5V 0V. With input A to be also following this behaviour. The A will be toggled by the the debounce sub-circuit. I used a clock signal in circuit wizard to allow to easier testing.
COUNTER IMAGE BOARD
(The previous debounce circuit is included in this image as it allows me to eliminate switch bounce from my test data.)
On the bread board, my V$_{in}$ is 5.09V, & my V$_{out}$ toggled between 0V & 5.07V. This is within the range of acceptable results that I had specified earlier. When the output voltage was high, the resistance from the input of the D Flip-Flop was to the Q$_{out}$ 70.5$\Omega$ on average, with a range of $\pm$ 1$\Omega$. Using $V = IR$ ($I = \frac{V}{R}$), I calculated that the current is 0.072A, which is within an acceptable range. This circuit will allow me to "store" a high or low signal for use in later sub-circuits without the user having to hold down a button constantly.

### Counter Indicator
The purpose of this sub circuit is to provide a visual indicator for the user as to the state of the store logic signal in the 1 bit counter. Modelling this first in circuit wizard I settled on this layout.
COUNTER INDICATOR IMAGE SIM
(I used a clock input in circuit wizard to simulate the toggling output from the 1 bit counter).
I decided to design this circuit as a pulldown LED, that will connect to $\overline{Q}_{out}$ on the 1 bit counter. I chose to connect it to $\overline{Q}_{out}$, as to reduce the load on $Q_{out}$.
#### Help?
// Calculates as LED voltage isn't a drop of 0.7

COUNTER INDICATOR IMAGE BOARD (LED ON)
COUNTER INDICATOR IMAGE BOARD (LED OFF)
When A is high for the circuit on the bread board, the Voltage across the pull down circuit is reading 0V. This is because the entire sub-circuit is currently +5V from the ground. But since the voltage is being measured in the sub-circuit. Giving the correct reading of 0V between 5V in & A (at 5V). When A is low, the voltage across the sub-circuit is 5.05V, with a V$_{in}$ of 5.09V. This behaviour can be observed without a voltmeter, as the LED is brightly illuminated.

### Logic Circuits
The logic circuits are the heart of this project, they are the circuits that enable this entire system to compute any values. I have arranged the AND, OR, & XOR sub-circuits in parallel, with each sourcing the A & B input from the same two counters. These three sub-circuits are then connected to the pull down mosfet (the reason for this will be explained later.).

AND CIRCUIT IMG SIM
OR CIRCUIT IMG SIM
XOR CIRCUIT IMG SIM

Each logic circuit is identical in design, except for the one gate that performs the desired logical operation. They each feed into a AND gate, which is used to control the output of each gate, with the switch having to be depressed to allow the output (if high) onto the connected mosfet sub-circuit. The reason that each circuit has a diode before the output, is since the outputs are connected to the same wire, the high output (if applicable) from the chosen logic gate would drain back through the AND gates in the other logic sub-circuits, the diode prevents this from happening. Combined with each gate needing the switch depressed to & the output the of the logic circuit makes it impossible for a logic circuit, other than the one with the switch pressed down to output a high signal onto the connected output. This allows each logic circuit to output the correct values when chosen by the user, without interfering with each other.

While I was building the circuits inside circuit wizard I first built them using the logic gate each operation was corresponding to. After that I applied NAND gate simplification & reduction, this allows me to only using NAND gates to handle the logic, this greatly decreases the amount of integrated circuits I need on my bread board. I thought about trying to save a logic gate by combining the finial NAND gate into one NAND gate near the output signal, but this couldn't work in practice as the this would interfere with the method I outlined in the previous paragraph to isolate the output of the logic sub-systems from each other. So I had to abandon the concept & keep the finial NAND gate in the NAND gate version of each sub-system.

AND CIR IMG BRD
OR CIR IMG BRD
XOR CIR IMG BRD

### Output Indicator
The output indicator is a LED output that will allow the user of the system to determine the output of the logic operation, without the use of a voltmeter. The input voltage that will be supplied from the previously mention logic sub-circuits. Circuit wizard shows me that the output voltage of these sub-circuits will be in the range of 2.5V, this is a bit bellow the desired 5V for input, however, it is still enough for the LED to illuminate to a sufficient brightness. I'm using a 100$\Omega$ resistor in series with the LED to ensure that a short circuit cannot happen, the resistor can have such a low resistance, as the input voltage is only 2.5V. This reduces the current within the sub-circuit, which has causes the power (P = VI) dissipated over the resistor to be dramatically reduced compared to that of a 5V Q in.

OUTPUT IMG SIM

