# Hooks Law
[[Hooks law]] is a law that describes how much a material will [[Elastic Deformation|Elastically Deform]] under a given force.

[[../../../TODO|TODO]] add image from ray paper.

Formula:
$F = k \Delta L$

k - [[Spring Constant]] / stiffness
F - force
$\Delta L$ - change in length

The larger $k$ is the stiffer that a spring is.
If a spring is stretched beyond it's elastic limit (the elastic limit is where [[Elastic Deformation]] occurs), then [[Plastic Deformation]] will occur.

### Springs in Parallel
When springs are setup in parallel, the resulting [[Spring Constant]] is the total sum each springs [[Spring Constant]].

### Springs in Series
When springs are setup in series the resulting [[Spring Constant]] can be solved using this formula:
$k_t = (k_{n}^{-1} + k_{2n}^{-1})^{-1}$

$k_t$ - total [[Spring Constant]]
$k_n$ - [[Spring Constant]] of springs connected in series.

### Energy Stored
The energy stored in a spring while it is stretched follows a linear relationship, as show bellow.
![[Hooks-Law-Graph.png]]
$F$ - force
$\Delta L$ - change in length

The energy stored in a spring is represented by the area under the graph. This can be calculated with the formula:
Energy = $\frac{1}{2} F \Delta{L}$

Since $F = k \Delta L$ , the formula could be re-arranged as:
Energy = $\frac{1}{2} k (\Delta{L})^2$

$k$ can also be worked out from the gradient of the line using this formula:
$\frac{\Delta y}{\Delta x} = \frac{F}{\Delta L} = k$