---
title: "Data Structures"
---
# Data Structures

## Arrays

Arrays are the best friend of today's CPU architectures. Modern CPU favour arrays for too reasons:
+ arrays are cache-friendly as they are sequential in memory
+ sequential array access is optimised by the CPUs pre-fetch units

I rarely use arrays directly as I tend to use [ArrayLists in Java](https://docs.oracle.com/javase/7/docs/api/java/util/ArrayList.html), [Lists in .NET](https://msdn.microsoft.com/en-us/library/6sh2ey19(v=vs.110).aspx) and [Slices in Go](http://blog.golang.org/go-slices-usage-and-internals). 
The JVM is well optimised for ArrayLists as it JITs them into direct array access. 

### Slices

A Slice is a low-level wrapper over an array that was [introduced in Go](http://blog.golang.org/go-slices-usage-and-internals).  Slices are a great way of arrays and sub arrays of data.

Joe Duffy, author of [Concurrent Programming on Windows](http://www.amazon.co.uk/Concurrent-Programming-Windows-Architecture-Development/dp/032143482X), has created a [Slice.NET](https://github.com/joeduffy/slice.net) for the .NET Framework.

## AA-Trees

Most people think of [red-black trees](http://en.wikipedia.org/wiki/Red%E2%80%93black_tree) when looking for a balanced binary tree, but the implementation is particularly complex. Yes, [Java](https://docs.oracle.com/javase/7/docs/api/java/util/TreeMap.html) and the [.NET framework ship with red-black tree implementations](https://msdn.microsoft.com/en-us/library/f7fta44c%28v=vs.110%29.aspx), but if you want to implement your own trees then [AA-trees](http://en.wikipedia.org/wiki/AA_tree) are simple to implement and have comparable performance. 

## Adaptive Radix Tree

An [Adaptive Radix Tree](http://www-db.in.tum.de/~leis/papers/ART.pdf) is a cache friendly tree structure for modern CPUs.  It has `O(k log n)` lookup time, where k is the size of the key.

[Kelly Dunn](https://github.com/kellydunn) has already developed an [implementation for Go](https://github.com/kellydunn/go-art).

## Bloom Filters

[Bloom Filters](http://en.wikipedia.org/wiki/Bloom_filter) are a probabilistic data structure that has some very interesting properties.  Bloom filters are a space efficient way of detecting set membership with some certainty:
+ 100% certainty that an item is not in the set
+ tunable certainty that an item is in a set (90%, 99.9%, 99.999%? you choose)

A [bloom filter](http://en.wikipedia.org/wiki/Bloom_filter) is often used to prevent unnecessary access to slow services, for instance disk access or remote services. [Bloom filters](http://en.wikipedia.org/wiki/Bloom_filter) are also interesting in that it does not directly contain the source items, just the hash codes of the items, so that it can be used to detect sensitive information without needing to have that information in memory.

## Hash tables

[Hash tables](http://en.wikipedia.org/wiki/Hash_table) are typically used as associative arrays (key -> value) and have good performance when looking up items by a key, but are useless if you need to enumerate the items in order. There are [many ways to hash data](http://burtleburtle.net/bob/hash/doobs.html), and its good to know more than one way as both [bloom filters](http://en.wikipedia.org/wiki/Bloom_filter) and [cuckoo hash tables](http://en.wikipedia.org/wiki/Cuckoo_hashing) use multiple hash functions.  

[Hash tables](http://en.wikipedia.org/wiki/Hash_table) can have problems when nearing capacity and many implementations need to rebuild a larger table at some point leading to a latency "spike".