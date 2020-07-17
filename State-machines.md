---
title: "State machines"
---
# State machines

I have a bit of a love/hate relationship with state machines as I have had to maintain a poorly designed implementation as part of my day job.

## Libero

If you want to see a well thought out state machine design then I suggest looking at [Libero by iMatrix](https://imatix-legacy.github.io/libero/).  It's a pretty old program but has some nice features:

* multiple actions per event
* [exception handling](https://imatix-legacy.github.io/libero/lruser3.htm#TOC4)
* [default events and actions](https://imatix-legacy.github.io/libero/lruser4.htm#TOC5)
* [state inheritance](https://imatix-legacy.github.io/libero/lruser6.htm#TOC7)
* [call-return semantics](https://imatix-legacy.github.io/libero/lruser5.htm#TOC6)

Libero is a code generator and supports C, Java, and some other languages, but not any on the .NET platform.
The documentation also as an interesting [style guide](https://imatix-legacy.github.io/libero/lruser10.htm#TOC13) with some do's and do not's.

## Stateless
In the .NET world I have seen [Stateless](https://github.com/dotnet-state-machine/stateless) used (badly).