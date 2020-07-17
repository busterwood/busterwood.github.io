---
title: "CSP"
---
# CSP

[Communicating Sequential Processes](https://en.wikipedia.org/wiki/Communicating_sequential_processes) (CSP) is a way of modelling the interaction between concurrent processes or threads.

## Modern examples

[Go's channels](https://golang.org/doc/effective_go.html#channels) support CSP semantics for communicating and synchronising between Go-routines.

[BusterWood.Channels](https://github.com/busterwood/Goodies/blob/master/Goodies/Channels/README.md) supports CSP semantics for communicating and synchronising between (logical async/await) threads in .NET.

## Messaging

Some messaging systems support CSP semantics, for example, in [[MSMQ]] you can send a message and wait for the destination process to receive the message by waiting for acknowledgement via an administration queue.