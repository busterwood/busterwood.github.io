---
title: "Essential and accidental complexity"
---
# Essential and accidental complexity

[Out of the tar pit](http://curtclifton.net/papers/MoseleyMarks06a.pdf) by Moseley and Marks argues solutions are made up of:
* essential complexity, i.e. the business logic, constraints
* accidental complexity, which is everything else that is not essential, e.g. patterns, libraries, tools

They argue that it is our job to try to _minimize the accidental complexity_ and suggest that mutable state is the major source of bugs.  They go on to suggest that functional programming combined with relational algebra could be a better way of minimizing accidental complexity.