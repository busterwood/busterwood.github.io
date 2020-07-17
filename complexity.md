---
title: "Essential and accidental complexity"
---

> Complexity is anything related to the structure of a software system that makes it hard to understand and modify the system.

Complexity makes it difficult and risky to modify an existing code base.

Also, see:
 * [Simple is not easy](simple-easy)
 * [essential and accidental complexity](complexity)

### Symptoms of complexity

* A seemly simple change requires code modifications in many different places.
* A high ratio of time taken reading & understanding the code versus modifying the code (cognitive load).
* There is something you need to know but there is no way for you to know it.  *Unknown unknowns* are the worst form of complexity as you only find them out *after* something breaks.

### Causes of complexity

Complexity is caused by two things:
1. **dependencies**, i.e. when a piece of code cannot be modified in isolation.
2. **obscurity**, i.e. when an important piece of information is not obvious.  This can be misleading names, inconsistency and missing documentation.

### Complexity is incremental

Complexity is not a single thing that you can fix, **it is the accumulation of dependencies and obscurities**.

# Accidental and essential complexity

[Out of the tar pit](http://curtclifton.net/papers/MoseleyMarks06a.pdf) by Moseley and Marks argues solutions are made up of:
* essential complexity, i.e. the business logic, constraints
* accidental complexity, which is everything else that is not essential, e.g. patterns, libraries, tools

They argue that it is our job to try to _minimize the accidental complexity_ and suggest that mutable state is the major source of bugs.  They go on to suggest that functional programming combined with relational algebra could be a better way of minimizing accidental complexity.