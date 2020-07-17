---
title: "Java"
---
# Java

I wrote my first commercial Java code around the same time as I started using [[C#|C Sharp]], but I have got back into it again in the last couple of years. Recently I have developed in Java 1.6, 1.7 and 1.8.  Mostly I just have to forget a lot of nice [[C#|C Sharp]] features and embrace the complexity of the "Java ecosystem".

Java has generics, but only the compiler knows about them.  At compile time the generic type information is erased.  If you use reflection to examine an object at run-time the generic type information has gone.

## Java 8

The [latest version of Java](http://www.oracle.com/technetwork/java/javase/overview/java8-2100321.html) has made some steps to catch up with the rest of the world as it now includes:

+ [lambda expressions](https://en.wikipedia.org/wiki/Anonymous_function#Java). Of course, they could not copy [[C#|C Sharp]] so the syntax is just a _little_ different.
+ [higher order functions](https://en.wikipedia.org/wiki/Higher-order_function) in the standard library, i.e. [streams](https://docs.oracle.com/javase/8/docs/api/java/util/stream/Stream.html)
+ a new DateTime package that mostly copies [Jodatime](http://www.joda.org/joda-time/)

## JVM

The Java language is not great, but the Hotspot JVM is probably the best optimized virtual machine out there.  It has lots of configuration and tuning options, which is both a blessing (tuning) and a curse (complexity).
The Hotspot JVM also has many Garbage collection options.  The default GC works okay for server-side and GUI applications, but not so well for websites.  For web development (and many financial systems) you want low GC pause time.  Prior to Java 1.8 the best options was the [CMS collector](https://docs.oracle.com/javase/8/docs/technotes/guides/vm/gctuning/cms.html), but with the release of 1.8 the CMS collector has been _deprecated_ and the [G1 collector](http://www.oracle.com/technetwork/java/javase/tech/g1-intro-jsp-135488.html) is the preferred option.   Indeed it has been proposed the [G1 collector](http://www.oracle.com/technetwork/java/javase/tech/g1-intro-jsp-135488.html) be made the default GC in Java 1.9.