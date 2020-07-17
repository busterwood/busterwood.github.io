---
title: "Caching"
---
# Caching

Caching is a well known problem that is hard to get right.

## When to cache?

Cache things that are slow, or resource intensive, or called many times.

## What to cache?

Things that don't change or can be identified as changing, e.g. via some sort of _version_ number on the cached object.

## Where to cache?

In process, e.g. [caffeine](https://github.com/ben-manes/caffeine) for Java 8 or [System.Runtime.Caching](https://msdn.microsoft.com/en-us/library/system.runtime.caching(v=vs.110).aspx) for .NET

Out of process, e.g. [memcached](https://memcached.org/), [Redis](https://redis.io/)

## When to expire things from the cache

Most systems use a form of eviction based on "least recently used" (LRU).


## Generational caching

I had an idea that if most caching is like manual memory management in that each cache operation can cause an eviction, can a generational cache be a useful addition.  How would a generation cache work?

1. Items are put into a cache in Gen0
2. When a predefined size limit is reached on Gen0 then Gen0 is moved to be Gen1 and a new Gen0 is created
3. When reading from the cache Gen0 is check, then Gen1.  If an item is read from Gen1 it is then moved back to Gen0

This could be extended with multiple generation, e.g. Gen0, Gen1 and Gen2.
My hope is that generational caching will have a lower memory overhead when compared to the existing caching libraries.

See https://github.com/busterwood/Caching for implementation.