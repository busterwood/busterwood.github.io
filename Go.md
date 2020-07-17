---
title: "Go"
---
# Go

I love [Go](http://golang.org/), I love the [pragmatism](http://golang.org/doc/effective_go.html), I love the tool chain, I love the fast compilation to static binaries, I love the ease of cross compilation, I have a windows build server that very easily cross compiles to Linux x64. 

For those that don't know yet, I think [Go](http://golang.org/) is going to be big.  It's been around since 2007 and is the technology of choice for many Silicon Valley start-ups. 

So what makes [Go](http://golang.org/) special?
+ simple yet familiar C-like language
+ lightweight threads and safe concurrency with [go routines and channels](http://golang.org/doc/effective_go.html#concurrency)
+ eliminates a lot of null reference problems by not allowing null (nil) strings, empty string is the default :-)
+ module system allowing good design
+ object-oriented features without the complexity of allowing method overrides
+ [implicitly implemented interfaces](http://golang.org/doc/effective_go.html#interfaces) are a great idea, maybe my favourite [Go](http://golang.org/) feature
+ built-in concurrent garbage collector with typical "stop-the-world" pause time of 50µs
+ great designed feature rich [standard library](http://golang.org/pkg/), including HTTP(2) client and server 
+ fast compiler that produces static binaries, no runtime environment or JIT needed
+ simple cross compilation, my windows PC can easily build for Linux, Solaris, OS X, BSD, x86, x64, ARM, with Android and iOS being added
+ build in tools for testing, test coverage, benchmarking and profiling

Why use [Go](http://golang.org/)? Why use anything else?
+ C and C++ are slow to compile and you have to do manual memory management
+ Java requires the JVM to be installed and the JIT suffers from slow startup
+ C# requires the .NET framework and the JIT also has slow startup, although this is improving
+ Python requires the runtime, lots of [Go](http://golang.org/) developers have moved from Python for this reason

Links:
+ [Go Home Page](http://golang.org/)
+ [Support via Google Groups](https://groups.google.com/forum/#!forum/golang-nuts)

### How to set a version at compile time

You can set a public module variable using the linker:
```
go install -ldflags "-X main.Version v1.2.3" my/program
```