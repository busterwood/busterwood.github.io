---
title: "Obvious"
---
# Obvious

Obscurity is one of the main causes of complexity, so we should try to make the code *obvious* to the reader.  It's easy to think your own code is obvious, so make sure your code is *reviewed* by other people.

## Less obvious

* Event-driven programming makes it hard to follow the flow of control.
* Methods that return generic value holders, e.g. `Tuple<T1,T2...>` or `KeyValuePair<T1,T2>` make it less obvious what the returned values mean.
* Assigning a different type for a field or variable makes it harder to understand, i.e. using polymorphism when not required.
* Non-abstract class hierarchies, e.g. a concrete class inheriting from another concrete class.
