---
title: "Ideal programming language"
---
# Ideal programming language

General-purpose languages seem like a good idea, but for me they allow you to mix together  [essential complexity](design/complexity) and [accidental complexity](design/complexity). The following are typically mixed together, but should be kept apart:

* pure business logic - the high level tasks the business wants to happen
* technical concerns - threading, handling technical failure
* low level details - how business task X is implemented, e.g. a calculation

## Business level

The business level deals only with high-level abstract concepts.

Belongs:
* types and operations, but no primitive types or operators (no floats, string)
* branching and iteration, but no low level comparisons
* BDD-like tests (given, when, then)

This levels deals with abstract concepts, so all types are abstract or  interfaces.

## Implementation level

This level deals with implementation details, also known as [accidental complexity](design/complexity).  This level handles technical concerns, such as threading, handling technical failure, as well as the implementation of business-level operations.

I think of this level as a general purpose language exists to implement the business-level types and operations.

Maybe this level *cannot declare public types*, only implement and declare internal (package protected) types.

## Testing

General-purpose languages have yet to embrace tests as a first-class concept, as being general-purpose tests can be added later.  I would like a language that is test first, with a complier that will produce an error if code exists that does not have a corresponding test case.