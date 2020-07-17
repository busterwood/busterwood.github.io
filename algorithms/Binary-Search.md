---
title: "Binary Search"
---
# Binary Search

# Recursive

The classic binary search finds an item in a sorted array.  The recursive algorithm goes like this:
+ set the _start_ to zero and the _end_ to the length of the search array minus one
+ if _start_ > _end_ then the search item is not present (not found)
+ finds a mid point in the array
+ compare the mid point with the search item
+ if the mid point is _less than_ the search item then set the _start_ to the the mid-point plus one and recursively search
+ if the mid point is _greater than_ the search item then set the _end_ to the the mid-point minus one and recursively search
+ if the mid point equals the search item then the item is found

## Two-way comparison

Most programming languages do not support three way comparison, so a more efficient way it to use two-way comparison, as shown by [Arne Andersson](http://user.it.uu.se/~arnea/ps/searchproc.pdf), who also invented the [[AA-Tree|Data Structures]]