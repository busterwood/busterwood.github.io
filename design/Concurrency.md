---
title: "Concurrency"
---
# Concurrency

In general *avoid* low level concurrency in business software, it's hard to get right and very hard to keep right over time as the program is maintained.

I love CSP, I learn't about it at university about 1990, and it came back in fashion recently as channels and go routines in the [Go programming language](https://golang.org/).

In my work I have created a few channel implementations, and have published [BusterWood.Channels](https://github.com/busterwood/BusterWood.Channels) for .NET 4.6 and .NET Core, which works with Threads and Tasks (async/await code).

## Low level concurrency

If low level concurrency has it's place then it is in writing [BusterWood.Channels](https://github.com/busterwood/BusterWood.Channels)!  I used [SemaphoreSlim](https://msdn.microsoft.com/en-us/library/system.threading.semaphoreslim(v=vs.110).aspx) for locking as this is the only type of lock that supports async waiting.