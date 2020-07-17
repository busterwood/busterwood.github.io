---
title: "WinDbg"
---
# WinDbg

Load the SOS debugger:

* `.loadby sos clr` to load sos
* `!eeheap -gc` to see the generational memory
* `!dumpheap -stat` to a summary of numbers of objects allocated
* `!finalizequeue` to see the objects on the finalization queue
* `!eestack -ee` to see all the threads with managed stacks
* `!gcroot memory-address` to see which objects are holding a root gc reference

[Investigating issues with unmanaged memory](http://kate-butenko.blogspot.co.uk/2012/07/investigating-issues-with-unmanaged.html)

# ClrMd

Managed library for analysing processes or dump files:
https://github.com/Microsoft/clrmd

# perfview

https://github.com/Microsoft/perfview

