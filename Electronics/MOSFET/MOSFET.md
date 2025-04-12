---
tags:
  - Electronics/Semiconductors
---
# MOSFET
A [MOSFET](../../..//Electronics/MOSFET/MOSFET.md) is a [Voltage](../Voltage/Voltage.md) controlled device, that can act as an "electronically controlled switch".
Bellow is shown a labelled N channel enhancement MOSFET.
![](N-MOSFET.png)

When working with MOSFETs we can use this formula to calculate values:
$I_D = g_m(V_{gs} - V_{th})$
- $I_D$ - Drain [Current](../Ohms%20law/Current.md)
- $g_m$ - [Transconductance](Electronics/Transconductance.md).
- $V_{gs}$ - [Voltage](../Voltage/Voltage.md) in the gate, compared to the source [Voltage](../Voltage/Voltage.md)
- $V_{th}$ - Threshold [Voltage](../Voltage/Voltage.md)

### Internal Layout
A [[Electronics/MOSFET/MOSFET|MOSFET]] consists of two types of materials, [[Electronics/Semiconductors/N-Type|N-Type]] and [[P-Type]] materials.

This is an illustration of the [[#MOSFET]] when it is not conducting.
![[Electronics/MOSFET/MOSFET - Internal Layout.png]]

Illustration of a [[Electronics/MOSFET/MOSFET|MOSFET]] when it is conducting.
![[Electronics/MOSFET/MOSFET - Internal Conducting.png]]