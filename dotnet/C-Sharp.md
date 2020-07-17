---
title: "C Sharp"
---
# C Sharp

Since .NET 1.0 CTP 2 I have developed software in C#.  Why?  I was working a in Microsoft-oriented job developing user interfaces in VB6 so the [[.NET framework]] was the natural way to go.

I embraced generics with .NET 2.0 but didn't fully appreciate the [reification](http://en.wikipedia.org/wiki/Reification_(computer_science)) implementation until I starting using Java again which has implemented generics by [type erasure](http://en.wikipedia.org/wiki/Type_erasure).

I have written more lines of C# than any other language.  My favourite features include:
+ [iterators](https://msdn.microsoft.com/en-us/library/dscyy5s0.aspx), i.e. the `yield` keyword.  This allows you to generate a sequence of data without having to have all the data in memory.  I have used this feature to yield a sequence of tokens when implementing a parser.
+ [LINQ](https://msdn.microsoft.com/en-us/library/bb397676.aspx) brings higher order functions to the party, although I tend to use the LINQ extension methods rather than the query syntax.
+ `struct`s are not widely used or appreciated feature.  Want a non-nullable type? Use a `struct`.  Want to return multiple values from a function?  Use a `struct`.

Although its more of a [[.NET framework]] feature, [expression trees](https://msdn.microsoft.com/en-us/library/bb397951.aspx) are interesting for a generating dynamic methods at runtime.  I have used them to generate methods for an Excel-like language.

## Extension methods

[Extension methods](https://msdn.microsoft.com/en-GB/library/bb383977.aspx) that allow you to write methods that appear to extend a type.  This allows you keep classes small and focused and add layers functionality via extension methods.  Another benefit is you can define extension methods on interfaces, which of course is why they were introduced, for [LINQ](https://msdn.microsoft.com/en-us/library/bb397676.aspx).

* Keep your classes and interfaces **simple** with minimal functionality
* Make your classes and interfaces **easy** to use with [extension methods](https://msdn.microsoft.com/en-GB/library/bb383977.aspx)

