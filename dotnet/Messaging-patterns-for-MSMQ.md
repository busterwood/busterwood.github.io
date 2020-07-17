---
title: "Messaging patterns for MSMQ"
---
# Messaging patterns for MSMQ

### Point to point
Send to one queue with one receiver

> Handover of work to next step in a pipeline

### Remote procedure call
Send a request message to queue, the receiver processes the message and then sends a message back to the [response queue](https://msdn.microsoft.com/en-us/library/ms705701(v=vs.85).aspx) specified on the request message.

> Request a calculation, get the result

See [MsmqPatterns.RequestReply](https://github.com/busterwood/MsmqPatterns/blob/master/MsmqPatterns/RequestReply.cs) class

### Load balancing (and fault tolerance of stateless services)
Send to one queue with a number of receivers 

> N producers of work and M workers

### Multiple (known) recipients
* Send to [distribution list](https://msdn.microsoft.com/en-us/library/ms704262(v=vs.85).aspx) (public queues only)
* Send [multi-element format name](https://msdn.microsoft.com/en-us/library/ms704008(v=vs.85).aspx) (multiple queues)

> Change of configuration sent to multiple services

### Broadcast to unknown number of recipients
Send to [multicast group](https://msdn.microsoft.com/en-us/library/ms703254(v=vs.85).aspx) (non-transactional only, must be on same subnet).

> A transient market price message

### Serially process messages for one client (or order) but process different clients concurrently
Use a routing process that moves messages onto different [subqueues](https://msdn.microsoft.com/en-us/library/ms711414(v=vs.85).aspx) for each client.  Have different receivers for each [subqueue](https://msdn.microsoft.com/en-us/library/ms711414(v=vs.85).aspx).

See [MsmqPatterns.SubQueueFilterRouter](https://github.com/busterwood/MsmqPatterns/blob/master/MsmqPatterns/SubQueueFilterRouter.cs) class

### Filter messages
* use a cursor to peek messages and only handle those matching the filter (* although you need to be careful with cursors and transactions that rollback)
* have a routing process that moves messages onto [subqueues](https://msdn.microsoft.com/en-us/library/ms711414(v=vs.85).aspx) (or different queues) and receivers only read from the subqueues (or queues)

> Receive messages where message label starts with "XYZ"

See [MsmqPatterns.Router](https://github.com/busterwood/MsmqPatterns/blob/master/MsmqPatterns/Router.cs) and [MsmqPatterns.SubQueueFilterRouter](https://github.com/busterwood/MsmqPatterns/blob/master/MsmqPatterns/SubQueueFilterRouter.cs) classes

## Message Types

* Use [recoverable messages](https://msdn.microsoft.com/en-us/library/ms704130(v=vs.85).aspx) for messages that must be processed even if the receiving service is currently down. Also consider using transactions to make sure messages have been processed.
* Use [express messages](https://msdn.microsoft.com/en-us/library/ms704130(v=vs.85).aspx) for RPC type messages where then sender may retry, or give up after some time.  Also consider setting [message timers](https://msdn.microsoft.com/en-us/library/ms705726(v=vs.85).aspx) to expire (timeout) messages 

### Keep a log of messages sent
Turn on [message journaling](https://msdn.microsoft.com/en-us/library/ms702011(v=vs.85).aspx).  Note that journal messages do not expire, so you have to have a process in place to remove them or you will run out of space (eventually).
