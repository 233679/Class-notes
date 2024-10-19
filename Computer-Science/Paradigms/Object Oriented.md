---
tags:
  - Computer_Science/Paradigms
---
# Object Oriented
There are four core pillars of Object Oriented programming are:
- Abstraction
- Encapsulation
- Inheritance
- Polymorphism

### Abstraction
Abstraction is hiding the detailed implementation of methods though a simple public api/public methods.

### Encapsulation
Encapsulation is hiding the implementation details within a class, so other code can't interact with code in a class, except though its public methods.

### Inheritance
Inheritance is when classes *inherit* attributes from a parent class.

### Polymorphism
Polymorphism has two main components.
##### Overriding
Overriding is changing the default implementation of methods given by an inherited parent class to a different one.
##### Over Loading
Over loading is providing multiple implementations of a method which do similar but different things. For example one implementation might take a string as an argument & another might take an integer.

### Details

#### Class
A class is a "blueprint" for an object.

##### Sudo-code Example
```
class Turtle
    private name
    private xcoord, ycoord, angle, colour
    public procedure new(x, y, myAngle, myColour)
        this.xcoord = x
        (etc)
    endprocedure
    public procedure forwards(steps)
        (statement to calculate new position)
    endprocedure
    (other procedures)
endclass
```

```
class Blob
    private name, x_coord, y_coord, red_colour, green_colour, blue_colour
    public procedure new(name, x_coord, y_coord, red_colour, green_colour, blue_colour)
        this.name = name
        this.x_coord = x_coord
        this.y_coord = y_coord
        this.red_colour = red_colour
        this.green_colour = green_colour
        this.blue_colour = blue_colour
    endprocedure
    public procedure move_x(value)
        if value = 1 {
            this.x_coord += 1
        } else if value = -1 {
            this.x_coord -= 1
        }
    endprocedure
endclass
```