---
title: "Hash table"
---
# Hash table

Hash tables are data structures that store values with keys using *hash codes of the keys*. Hash codes are then used as index into an array of entires (key/value pairs).

## Chained Hash Tables

A classic way to store entries with _the same has code_ is a linked list.  This is not great for modern CPUs as it involves chasing points.

## Open-address hashing

Another way to handle storing entries with _the same has code_ is linear probing the array of entries, i.e. check entry N+1 in a loop.  This is proven to be faster than chained hash tables on modern CPUs.

## Robin Hood Hashing

[Robin Hood hashing](https://cs.uwaterloo.ca/research/tr/1986/CS-86-14.pdf) which is a varient of open-address hashing that gives preference to entries closer to there ideal position in the hash table, minimizing the number of probes that are needed to find the correct entry. There are some interesting articals on [Robin Hood Hashing](http://codecapsule.com/2013/11/11/robin-hood-hashing/) and [how to handle deletion](http://codecapsule.com/2013/11/17/robin-hood-hashing-backward-shift-deletion/).  There is an MIT licensed [C# implementation](https://github.com/jzebedee/rhbackshiftdict) available, based on the [implementation in Rust](https://github.com/rust-lang/rust/pull/12081).

Robin Hood Hashing also tolerates higher load factors, meaning hash tables tend to be **faster, have more constant performance (less variation), use less memory and create less garbage**.