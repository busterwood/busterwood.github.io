---
title: "Databases"
---
# Databases

# Relational Databases

[Relational databases](https://en.wikipedia.org/wiki/Relational_database) have been dominant in record storage for many years, with the [NoSQL movement](https://en.wikipedia.org/wiki/NoSQL).

I think the first commercial database I used was [Ingres](https://en.wikipedia.org/wiki/Ingres_(database)) in 1994, quickly followed by [Informix](https://en.wikipedia.org/wiki/IBM_Informix), both of which we ran on [SCO Unix](https://en.wikipedia.org/wiki/SCO_OpenServer).

The key advance of relational databases is the relational model, i.e. the abstraction _away from files into tables and rows_.

### Limitations?

Whats wrong with relational databases, why did NoSQL gain mind share?  I think the database market had become a bit stale as the big database vendors, Oracle, Sybase and Microsoft added featrures and kept prices high.  Some of the assumptions these commercial databases had been built on had also changed:
+ RAM memory is expensive and limited
+ disks are spinning platters of rust
+ one big machine is the way to scale

But things did change, RAM became cheap, networks faster, and SSDs made disk access much faster.

What are the limitations of the relational model?  _There are none!_ Its a great abstraction.  There maybe limits to how the "big" existing SQL databases scale, but the relation model is not limited, just look at [VoltDB](http://voltdb.com/), from [Dr Michael Stonebraker](https://en.wikipedia.org/wiki/Michael_Stonebraker), the same guy that developed Ingres, Postgres, and Streambase.

Some of the [NoSQL databases](https://en.wikipedia.org/wiki/NoSQL) databases were designed for massive scale problems, e.g. Google's [Big Table](https://en.wikipedia.org/wiki/BigTable), but most smaller problems don't need NoSQL, they _just need faster (or cheaper) relational databases_.

# Why is the system slow first thing in the morning?

Inconsistent performance is a percieved problem with many of the "big" commercial databases.  The problem is not that queries slow down at a certain time, its more that most of time queries run very fast.  Let me explain:
+ indexes and data live on disks, and reading from disk is _slow_
+ once read from disk the data is cached in memory (buffer caches) to speed up subsequent queries
+ over time, if the data has not been read from the memory cache for a while (LRU), the data may be removed from memory to speed up other queries
So often, after leaving a system alone for a while (e.g. overnight) the queries will appear to be slow.  If you run the same query again, straight away, it will most likely run very quickly (as now all the data needed for the query is in the memory cache).

# Why does my query go slow over time (weeks/months/years)?

Another common problem is queries that were once fast slowing down over time.  A gradual decline in performance may indicate missing indexes, but sometimes there is big change "overnight".  A big change can arise due to the query optimizer choosing a different execution plan based on updated statistics.  Most databases have features that can guarantee the stability of an execution plan, but is not always the right answer as it stops the query optimizer making adjustments to query execution based on changes in volumes of data.  There is no "right" answer here, the correct answer depends on your system behavior over time.

# Embedded databases

[LMDB](http://symas.com/mdb/doc/index.html) is the embedded database created for the OpenLDAP project.  [.NET wrapper](https://github.com/CoreyKaylor/Lightning.NET) is available, but looks like it could do with some love around interop (classes vrs ref struct).

Log Structured Merge Tree, for example [LevelDB](https://github.com/google/leveldb) from Google and [RocksDB](https://github.com/facebook/rocksdb) from Facebook are good for high insert volumes.