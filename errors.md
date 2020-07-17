---
title: "Errors and Exceptions"
---

## Exceptions add complexity

Exceptions cause the program to jump out of the normal flow of execution.  Exception handling is inherently more difficult to write than normal code.  

There are two approaches to handling exception:
* try to continue and complete the work despite the exception, e.g. retry the operation.
* abort the work and report upwards, note that partially complete work may need to be undone.

Exception handling via `try..catch` statements are not only verbose, but it is also hard to test, e.g. recreating an IO exception at a certain point.

### Too many exceptions

Classes with lots of exceptions have complex interfaces, and they are shallower than classes with fewer exceptions.
To reduce complexity, *reduce the number of places where exceptions have to be handled*.

### Define errors out of existence

Try to define methods so they don't throw exceptions, e.g. a `Substring` method does not need to throw an exception for a zero-length string, or when the `start` parameter is passed the end of the string, just define that as returning an empty string.  Define methods to be *idempotent*, e.g. a `delete` method can return without exception if the thing being deleted does not exist.

### Handle and retry expected exceptions

Don't force your method callers to retry when an operation can be expected to fail, e.g. retry an RPC automatically within your method/module rather than forcing the caller to handle the exception and write retying code.

### Just crash

Some exceptions should not be handled at all, e.g. `OutOfMemoryException` or an exception indicating a corrupt data structure.  

## Don't allow special-cases

Special-cases cause your code to be littered with `if` statements.  It is better to redefine the special out-of-existence.