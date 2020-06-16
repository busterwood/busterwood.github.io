---
layout: page
title: "Comments"
permalink: /comments/
---
# Comments 

Comments on the interface complete the abstraction and should express what the programming language does not allow, e.g. why. *If the users of a module have to read the code then there is no abstraction*!  If you want to use abstractions to hide complexity then the code needs comments.

## Objections

* *I don't have time*: writing comments should not take more than 10% of programming time
* *Comments get out of date*: then keep them up-to-date and make sure code reviews also review comments
* *The comments I have seen are useless*: then write better ones

## Good comments

Good comments express what the code cannot.

### Non-obvious details

Good comments describe things that aren't obvious from the code.  Don't repeat the code, use different words to describe what is going on.

### Document at different levels

Low-level comments add precision about the detail of thing, typically of class fields.

High-level comments omit details and allow the reader to understand the overall intent and structure of the code.  Higher-level comments are also easier to maintain as they are less likely to change.

### Interface comments

The comments on an interface are the important details about the abstraction.
If the comments on an interface talk about the implementation then the module is *shallow*.

Document:
* behaviour of the method
* arguments and return value, including constraints on arguments
* any side-effects
* any exceptions
* any preconditions

### Implementation comments

Help the reader understand what the code is doing.

Document:
* sections of any longer methods
* what happens on each iteration of a *loop*
* *why* a piece of code exists

## Where to keep comments

Comments belong in the *code*, **not** the commit log.

If external documentation exists then reference that, don't repeat documentation in comments.

