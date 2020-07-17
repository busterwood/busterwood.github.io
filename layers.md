---
title: "Layers"
---

# Layers

Software systems are composed in layers, with higher-level [modules](modules) calling lower-level [modules](modules).  In a well-designed system, different layers use different abstractions.  If modules in adjacent layers use the same abstraction then this is a *smell* that suggests a problem with class decomposition.

### Pass-through methods

A method that calls another method in another layer *without adding extra functionality* is a smell that there is confusion over the division of responsibilities between different classes.  Each class should have a distinct and coherent set of responsibilities.

### Dispatchers

One example where modules with the same interface are okay is the *dispatcher* pattern, where the dispatcher uses the arguments to select the correct implementation to call.

### Decorators

Be careful to avoid an explosion of shallow *decorator* classes.  Consider alternatives:
* combining several shallow decorator classes into one deeper one
* combining the decorator class with the main class.

### Interface and implementation

Be careful when the interface abstractions are used in the implementation, this is a *smell* that the class is not deep enough.

### Pass-through variables

Be careful with variables that are passed down a long chain of methods.  Often, the intermediate methods are forced to know about the variable but have no use for it.  This is a form of leaky abstraction.
Consider these options (none of which is ideal):
* Using a parameter of an (already) shared object, e.g. dependency injected
* Use a global (static) variable
* Use a *context object* that contains variables that would otherwise be shared or global