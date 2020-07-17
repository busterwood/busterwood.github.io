---
title: "F Sharp"
---
# F Sharp

[F#](http://fsharp.org/) is a functional language that is a bit of a mixture of [ML](https://en.wikipedia.org/wiki/ML_(programming_language)) and [[C#|C Sharp]].  It has opened my eyes to functional programming and the benefits of [persistent data structures](http://en.wikipedia.org/wiki/Persistent_data_structure).

The F# syntax means you can write very compact code which is extremely testable. 

I love:

+ types are immutable by default, for example [record types](https://msdn.microsoft.com/en-us/library/dd233184.aspx)
+ [Discriminated unions](https://msdn.microsoft.com/en-us/library/dd233226.aspx) which are a natural fit to many situations
+ [match expressions](https://msdn.microsoft.com/en-us/library/dd233242.aspx) which is a bit like a superhero version of a switch statement
+ [asynchronous workflows](https://msdn.microsoft.com/en-us/library/dd233250.aspx) which allow asynchronous code to be written as like sequential code
+ [computation expressions](https://msdn.microsoft.com/en-us/library/dd233182.aspx) are a convenient way of builing [monads](https://en.wikipedia.org/wiki/Monad_(functional_programming)), and used to implement [asynchronous workflows](https://msdn.microsoft.com/en-us/library/dd233250.aspx).
+ a more recent feature that's getting a lot of attention is [type providers](https://msdn.microsoft.com/en-us/library/hh156509.aspx) which allow you to code directly against live data sources, which is best explained by [seeing some examples](http://blogs.msdn.com/b/dsyme/archive/2013/01/30/twelve-type-providers-in-pictures.aspx).

It seems the C# team also like F#, as they keep introducing features into C# that come from F#!
