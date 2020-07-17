---
title: "Inheritance Rules"
---
# Inheritance Rules

Inheritance is the strongest form of relationship and the hardest to undo.

To avoid inheritance hell, avoid implmentation inheritance where possible.

# Rules

1. Concreate classes must inherit from abstract classes, never from other concreate classes
2. Respect the [Liskov substitution principle](Liskov_substitution_principle) such that sub-classes respect the behaviour and constraints of super-classes.