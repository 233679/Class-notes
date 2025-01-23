---
tags:
  - Physics/Capacitance
---
# Capacitor
A [[Physics/Capacitance/Capacitor|Capacitor]] is an electrical component used to store charge.

Capacitors are measured in [[Physics/Capacitance/Capacitance|Capacitance]]. The most common capacitors are in the range of micro ($\mu$) to nano ($n$) [[Physics/Capacitance/Farad|Farads]].

### Parallel Plate Capacitor
A [[#Parallel Plate Capacitor]] is made up of two parallel conductive metal plates, often separated by a [[Physics/Capacitance/Dielectric|Dielectric]] material to ensure increase the [[Physics/Capacitance/Capacitance|Capacitance]] of the [[Physics/Capacitance/Capacitor|Capacitor]].

To calculate the [[Physics/Capacitance/Capacitance|Capacitance]], the following formula is used "$C = \frac{A\epsilon_0\epsilon_r}{d}$" (in data sheet) where:
$C$ = [[Physics/Capacitance/Capacitance|Capacitance]]
$A$ = Overlapping area of the plates
$\epsilon_0$ = [[Physics/The Permittivity Of Free Space|The Permittivity Of Free Space]]
$\epsilon_r$ = The relative permittivity of the [[Physics/Capacitance/Dielectric|Dielectric]] material between the plates
$d$ = The distance between the plates

The energy stored by a [[#Parallel Plate Capacitor]] is given by "$E = \frac{1}{2}QV$" where:
$E$ = Energy
$Q$ = [[Physics/Fields/Electrical/Charge|Charge]]
$V$ = [[Physics/Electricity/Potential Difference|Voltage]]
This formula is derived from the area under a the graph of $V$ over $Q$:
![[Physics/Capacitance/Capacitor - Parallel Plate Energy.png]]

#### Discharging
When discharging through a resistor the [[Physics/Electricity/Current|Current]], [[Physics/Electricity/Potential Difference|Voltage]], and [[Physics/Fields/Electrical/Charge|Charge]] all decrease exponentially at the same rate.
![[Physics/Capacitance/Capacitor - Discharging through resistor.png]]
This is because the values are all proportional to each other and is show by:
$V = IR => I = \frac{V}{R}$ applying $V = \frac{Q}{C} => I = \frac{Q}{RC} = \frac{V}{R}$

![[Physics/Capacitance/Capacitor - exponential decrease graph.png]]
This graph is a visual representation of the decrease for [[Physics/Fields/Electrical/Charge|Charge]]. The formula for this graph is "$Q = Q_0e^{-t/RC}$" where:
$Q$ = The current [[Physics/Fields/Electrical/Charge|Charge]]
$Q_0$ = Initial/peak [[Physics/Fields/Electrical/Charge|Charge]]
$e$ = The constant $e$
$t$ = The time taken for $Q_0$ to decrease to $Q$
$R$ = Resistance of the resistor
$C$ = [[Physics/Capacitance/Capacitance|Capacitance]] of the [[Physics/Capacitance/Capacitor|Capacitor]]

The formula for both [[Physics/Electricity/Current|Current]] and [[Physics/Electricity/Potential Difference|Voltage]] is the same, being "$I = I_0e^{-t/RC}$" and "$V = V_0e^{-t/RC}$" respectively.
### Circuit Symbol
![[Physics/Capacitance/Capacitor - circuit symbol.png]]