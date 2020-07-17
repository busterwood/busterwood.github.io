---
title: "Modules"
---

Parnas published a paper in 1971 call [On the criteria to be used in decomposing systems into modules David L Parnas](https://www.win.tue.nl/~wstomv/edu/2ip30/.../criteria_for_modularization.pdf).

Modules are code units with a *public interface* separate from a *private implementation*. 
For example, in .NET:
 * a *class* is a module
 * a *static class* is a modules
 * an *interface* with separate implementation is also a module
 * an *assembly* is a module  

### Interface

The public part of a module is called its interface. The interface includes:
 * method signatures
 * the parameters and return values of the methods

A good interface *makes the common cases simple*.  Choose default parameters wisely, and don't require compositions of multiple abstractions to get a simple job done, e.g. Java IO buffering.  If an API for a commonly used feature forces you to know about other features that are rarely used this is *overexposure* as it is forcing extra cognitive load the user.

### Abstraction

An abstraction is a simplified view of an entity which omits *unimportant* details.  A good abstraction hides detail, often hiding *implementation* detail.  

## Deep modules

A good module hides a depth of complexity behind a simple interface.  

### Unix example
A good example is the IO methods of UNIX:
 * open
 * read
 * write
 * lseek
 * close

Those 5 methods hide all the complexity of reading and writing to hard drives, removable drives, tapes, directory structures and other hardware.

### Shallow modules

Shallow modules are those with little implementation relative to the size of the interface, i.e. they are not hiding much.

## Information leakage

Good modules hide information, bad modules leak information.  If the public interface *leaks* a structure that changes then all places that use the module must also change.

Another form of leakage is when an implementation detail in known in two modules, e.g. reading a writing a file or message format.

*Information hiding* can often be improved by combining smaller classes, e.g. one class to read *and* write files.

## Temporal decomposition

In *temporal decomposition* the structure of the code reflects the execution order, e.g. separate modules for reading, modifying and writing a file format.  If the same *knowledge* is used in multiple steps of the process then that knowledge ends up being split or repeated.  Keep *knowledge* together.

## General purpose modules

We all like the idea of general purpose modules but experience tells us it is hard to know how are modules will be used and it is expensive to try to make general purpose.

The sweet spot for modules appears to be *somewhat general purpose*, where the implementation reflects the current needs but the interface does not.  Instead, make the interface general enough to support other uses, which often leads to *better information hiding*.

### Pull complexity downwards

> It is more important for a module to have a simple interface than a simple implementation.

As a developer, it is better to make it simple for the users of your module.  It is tempting to do the opposite, e.g. push complexity up by exposing many configuration options.

## Separate or combine?

Given two pieces of functionality, should their implementations be combined or separated?  When deciding, the goal is to reduce complexity of the system as a whole.

* Bring together if the information is shared, e.g. knowledge of a serialisation format
* Bring together if it will simplify the interface, e.g. no need for separate *BufferedStream* and *Stream* classes buffered is a good default
* Bring together to eliminate duplication, e.g. refactor out repeated patterns

## Separate general-purpose and special-purpose code

A general-purpose module should not include any special-case code for one use-case.

## Splitting methods

> Each method should do one thing and do it completely

When refactoring, avoid splitting a method so that the caller now calls 2 or more methods, split a large method so it calls a smaller sub-method.