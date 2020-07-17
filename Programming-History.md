---
title: "Programming History"
---
# Programming History

## 1940s

Assembly language (1947), labels, branch to labels, **goto programming**.

Register machines, i.e. explicit store and load from a number of registers.

## 1950s

[Regular expressions](https://en.wikipedia.org/wiki/Regular_expression) (1951) by Stephen Cole Kleen. Made popular in the 1970s by Unix.

[Fortran](https://en.wikipedia.org/wiki/Fortran) developed at IBM (1953-57), with `IF` statements, `DO` loops, `GO TO` statements, I/O, subroutines and access to `COMMON` global variables.  First *optimizing compiler*.

[ALGOL](https://en.wikipedia.org/wiki/ALGOL) (1958) first language with `begin...end` blocks, block-local variables, nested functions, BNF and "call-by-name" lazy evaluation of arguments.  Worked on by Backus, Naur and later Dijkstra, John McCarthy and Alan Perlis. 

[LISP](https://en.wikipedia.org/wiki/Lisp_(programming_language)) (1958) by John McCarthy includes tree data structures, automatic storage management, dynamic typing, conditionals, higher-order functions, recursion, the self-hosting compiler, the read–eval–print loop, code is data, macros for language extension.

## 1960s
[COBOL](https://en.wikipedia.org/wiki/COBOL) (1960) with English-like syntax, sequential and indexed I/O for hierarical records.  Downside was lack of modules, all data was global, extensive use of `GO TO`.

[Burroughs B5000 mainframe](https://en.wikipedia.org/wiki/Burroughs_large_systems#B5000) (1961) hardware and software designed together, including a stack-based virtual machine (a bit like the JVM and CLR).

[Semaphores](https://en.wikipedia.org/wiki/Semaphore_(programming)) (1962/63) invented by Dijkstra for concurrent resource sharing.

[Sketchpad](https://en.wikipedia.org/wiki/Sketchpad) (1963) invents computer graphics, CAD, geometric constraints and the roots of object-oriented systems.

Compiler-compilers such as [META-II](https://en.wikipedia.org/wiki/META_II) (1964) and [TREE-META](https://en.wikipedia.org/wiki/TREE-META) (1968) make it possible to create new languages easily, i.e. [domain-specific languages](https://en.wikipedia.org/wiki/Domain-specific_language).

[Solution of a problem in concurrent programming control](http://www.di.ens.fr/~pouzet/cours/systeme/bib/dijkstra.pdf) (1965) by Dijkstra introduces *critical sections* for mutual exclusion.

[ALGOL W](https://en.wikipedia.org/wiki/ALGOL_W) (1966) by Tony Hoare and Niklaus Wirth extends ALGO with discriminated union record reference type and the `IS` statement to test the record type of a reference. Also adds call-by-value and concurrency.

[APL](https://en.wikipedia.org/wiki/APL_(programming_language)) (1966) multi-dimensional array programming, chains of monadic  functions, dyadic functions and operators acting on arrays.

[Simula](https://en.wikipedia.org/wiki/Simula) (1967) by Ole-Johan Dahl and Kristen Nygaard, introduced objects, classes, inheritance, subclasses, virtual methods, corountines and had run-time garbage collection.

[Go to considered harmful](https://homepages.cwi.nl/~storm/teaching/reader/Dijkstra68.pdf) (1968) by Dijkstra, where he suggests programs with `go to` statements are less understandable by humans, so should be avoided.  To give this context, typical COBOL programs used `go to` statements extensively and could jump to _any other line of code, not just within the scoe of the current function_.

[Relation model of data](https://en.wikipedia.org/wiki/Relational_model) (1969) by is Codd published, based on [relational algebra](https://en.wikipedia.org/wiki/Relational_algebra).

[Coupling and Cohesion](https://en.wikipedia.org/wiki/Coupling_(computer_programming)) (late 1960s) by Larry Constantine measures software design quality.

## 1970s

[Pascal](https://en.wikipedia.org/wiki/Pascal_(programming_language)) (1970) notable for teaching structured programming, ported to APPLE II, Turbo Pascal (1980s) on IBM PC.

[On the criteria to be used in decomposing systems into modules](http://repository.cmu.edu/cgi/viewcontent.cgi?article=2979&context=compsci) (1971) by Parnas discusses the benifits of dividing systems into modules and introduces the term *information hiding*.  Also see [The Morning Paper blog](https://blog.acolyer.org/2016/09/05/on-the-criteria-to-be-used-in-decomposing-systems-into-modules/)

Indirect addressing (1971), i.e. goto a computed address.

[Smalltalk](https://en.wikipedia.org/wiki/Smalltalk) (1972) by Alan Kay, Dan Ingalls and Adele Goldberg.  Object-oriented (message passing), reflection, dynamically typed, modifiable while running, patterns including MVC, GUI, windowing system, mouse input.

[Prolog](https://en.wikipedia.org/wiki/Prolog) (1972) by Alain Colmerauer with Philippe Roussel. A declarative logic programming language, you state facts and rules and the engine deduces the answer.

[C](https://en.wikipedia.org/wiki/C_(programming_language)) (1972) by Dennis Ritchie didn't really add anything new, but was efficient enough to replace assembly language in the creation of operating systems.

[ML](https://en.wikipedia.org/wiki/ML_(programming_language)) (1973) by Robin Milner is a strongly typed functional programming language with inferred types (Hindley-Milner type inference), pattern matching, garbage collection and exception handling.

[Monitors](https://en.wikipedia.org/wiki/Monitor_(synchronization)) (1973/74) by Per Brinch Hansen and Tony Hoare combine locks and queues so threads can wait for some condition.  Java and .NET have a Monitor class with pulse, pulse all and wait operations.

[SQL](https://en.wikipedia.org/wiki/SQL) (1974) by Donald D. Chamberlin and Raymond F. Boyce is a domain-specific language for relational database systems based on Codd's relational data model.

[Structured programming with go to statements](https://homepages.cwi.nl/~storm/teaching/reader/Knuth74.pdf) (1974) by Knuth which argues elimination of `go to` statements is not desirable when it make the code *less understandable*, i.e. appropriate use of `go to` is good, inappropriate use is bad!

[CLU](https://en.wikipedia.org/wiki/CLU_%28programming_language%29) (1975) by Liskov, had abstract data types, classes (clusters), paramterized types with contraints (generic types with `where` clause!), iterators (`foreach` loops over collections), exceptions, multiple assignment and multiple return values.  The exception mechanism was low cost - only twice that of a normal code.

[Datalog](https://en.wikipedia.org/wiki/Datalog) (1977) for deductive databases, subset of Prolog.

[Communicating sequential processes (CSP)](https://en.wikipedia.org/wiki/Communicating_sequential_processes) (1978) by Tony Hoare is a formal language for describing patterns of interaction in concurrent systems.

## 1980s
[4 generation language (4GL)](https://en.wikipedia.org/wiki/Fourth-generation_programming_language) (1981) created by James Martin refer to non-procedural, high-level specification languages.  Some are table driven, some are database centric, some are report generators, some CASE tools.  A type of DSL with higher level abstraction.

[Occam](https://en.wikipedia.org/wiki/Occam_(programming_language)) (1983) by David May was the first language to support concurrency with CSP (channels).

[Eiffel](https://en.wikipedia.org/wiki/Eiffel_(programming_language)) (1986) by Bertrand Meyer introduces design by contract, i.e. pre-conditions, post-conditions and invariant checking.

[Law of Demeter](https://homepages.cwi.nl/~storm/teaching/reader/LieberherrHolland89.pdf) (1989) for minimizing coupling in object-oriented programs.

## 1990s

[Haskell](https://en.wikipedia.org/wiki/Haskell_(programming_language)) (1990) introduced [type classes](https://en.wikipedia.org/wiki/Type_class), sort of generic type interface constraints.

[Unit test framework](https://shebanator.com/2007/08/21/a-brief-history-of-test-frameworks/), first introduced in Taligent (1991) and SUnit (1994), but popularized by JUnit (1998).

[Plan 9](https://en.wikipedia.org/wiki/Plan_9_from_Bell_Labs) (1992) by Rob Pike, Ken Thompson, Dave Presotto and Phil Winterbottom.  Distributed OS successor to UNIX including per process namespaces, distributed resource sharing via file system abstractions and UTF-8.

## 2000s

[Parsing expression grammars](https://en.wikipedia.org/wiki/Parsing_expression_grammar) or PEGs (2004) by Bryan Ford for parsing languages.

[OMeta](http://www.tinlizzie.org/ometa/) (2007) updates the ideas of compiler-compliers for modern languages using [PEGs with left-recursion](http://www.vpri.org/pdf/tr2007002_packrat.pdf).  Comes out of [Viewpoints Research](http://www.vpri.org/) headed by Alan Kay.