---
title: "Complex Event Processing"
---
# Complex Event Processing

**How to process a series of values that occur over time**

# StreamBase

My first encounter with stream processing was [StreamBase](http://www.streambase.com/), which is now owned by Tibco.  [StreamBase](http://www.streambase.com/) is a Java application which you can program via a "coding by pictures" Eclipse plugin.  Coding-by-pictures is never a good idea, it has been tried many times and text based languages always win.  That said the [StreamBase](http://www.streambase.com/) product did work well, especially when we wrote the core of the system as a Java [StreamBase](http://www.streambase.com/) operator, basically using [StreamBase](http://www.streambase.com/) for its input and output adapters.

Interestingly [StreamBase](http://www.streambase.com/) was by Turing award winner [Michael Stonebraker](https://en.wikipedia.org/wiki/Michael_Stonebraker), who also created Ingres, Postgres and [VoltDB](http://www.voltdb.com).

# Reactive Extensions (RX)

Coming out of Microsoft was a great open source project called [Reactive Extensions](https://msdn.microsoft.com/en-us/data/gg577609.aspx) which enabled you to program the .NET platform to handle complex event.  It has a functional design, basically LINQ but for events that occur over time.

## RxJava
Netflix has open-sourced a [Java version of RX](https://github.com/ReactiveX/RxJava), which they use [extensively with the Netflix platform](http://techblog.netflix.com/2013/01/reactive-programming-at-netflix.html).
