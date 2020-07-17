---
title: "Messaging"
---
# Messaging

I've used several commercial messaging systems, and have maintained and written a propitiatory messaging system.  

The basic messaging system is the **publish-subscribe** pattern, where:
* one (or more) sources of information publish a message about a particular `topic`
* zero or more consumers of information subscribe to the `topic` and receive those messages

Most messaging systems go beyond the `pub-sub` pattern and offer a `queue` pattern, where:
* one (or more) sources add a message to a particular `queue`
* each message is read by a single worker, although serveral workers may be consuming different messages from the same queue

## Tibco Rendezvous (RV)

[Tibco RV](http://www.tibco.co.uk/products/automation/enterprise-messaging/rendezvous) is a widely used commercial messaging system.  The general case for RV is to use [multicast](https://en.wikipedia.org/?title=Multicast) to allow one or more producers to efficiently broadcast messages to many consumers:

* All messages are routed through a locally installed [RV Daemon](https://docs.tibco.com/pub/rendezvous/8.4.3/doc/html/tib_rv_concepts/rv_concepts.6.041.htm#1066740)
* Typically messages are [reliable](https://docs.tibco.com/pub/rendezvous/8.4.3/doc/html/tib_rv_concepts/rv_concepts.6.044.htm) but not *guaranteed*, meaning messages can be lost but generally aren't.
* If [reliable delivery](https://docs.tibco.com/pub/rendezvous/8.4.3/doc/html/tib_rv_concepts/rv_concepts.6.044.htm) is not good enough then RV offers [guaranteed (certified) delivery](https://docs.tibco.com/pub/rendezvous/8.4.3/doc/html/tib_rv_concepts/rv_concepts.6.097.htm).
* RV supports [distributed queues](https://docs.tibco.com/pub/rendezvous/8.4.3/doc/html/tib_rv_concepts/rv_concepts.6.116.htm) where messages are guaranteed to be processed by only one receiver.
* RV has [fault tolerance](https://docs.tibco.com/pub/rendezvous/8.4.3/doc/html/tib_rv_concepts/rv_concepts.6.126.htm) features where a number of processes receive a message but only one process at-a-time is *active* and only the *active* process handles the message.
* RV has its own [self-describing message format](https://docs.tibco.com/pub/rendezvous/8.4.3/doc/html/tib_rv_concepts/rv_concepts.6.054.htm)
* RV is typically used to send messages over a network, althoug it can be used to send messages [between threads or processes on the same machine](https://docs.tibco.com/pub/rendezvous/8.4.3/doc/html/tib_rv_concepts/rv_concepts.6.069.htm)
* Caching of last known values is available via [rvcache](https://docs.tibco.com/pub/rendezvous/8.4.3/doc/html/tib_rv_administration/rv_adm.6.110.htm), for example you can cache and the client can get the last known price of a market.

## Tibco EMS

[Tibco EMS](https://docs.tibco.com/pub/ems/8.2.1/doc/html/index.htm) is a commercial implementation of the JMS interface.  Why would you use EMS over RV? RV is aimed at high message rate applications, think stock market price updates, where as EMS is aimed at lower message rates, higher delivery guarantees, and more controls.
I think the idea of message brokers appeals to larger organisations who tend to favor things which can be *centrally controlled*, and the brokers are often managed by a separate team.

If I had to name a feature of EMS that RV does not have it would be *transactional messaging*, where committing a message and database changes happen in a single distributed transaction.  You probably don't need this level of guarantee and it really kills performance.

## Solace messaging applicance

[[Solace messaging]] is a low latency hardware appliance that supports Solace API, as well as JMS, AMQP, MQTT WebSockets and REST protocols.

## 0mq (ZeroMQ)

If you are looking for a fresh take on messaging then I recommend [0MQ](http://zeromq.org/).  Its a very nicely designed cross platform library that is sort of sockets-on-steroids.  It supports [many protocols](http://zeromq.org/docs:features), including IPC and TCP.

The [0MQ Guide](http://zguide.zeromq.org/page:all) is a great read, highly recommended.

## Microsoft Message Queue (MSMQ)

See [[MSMQ]] and [[Messaging patterns for MSMQ]] pages.

## Windows PGM

Its a little known fact that Windows had [Pragmatic Genernal Multicast](https://en.wikipedia.org/wiki/Pragmatic_General_Multicast) built-in.  To enable it you must install [MSMQ](https://msdn.microsoft.com/en-us/library/ms711472(v=vs.85).aspx) and then use can use it via the [WinSock API](https://msdn.microsoft.com/en-us/library/windows/desktop/ms740125(v=vs.85).aspx).  I have written a .NET messaging library based on Windows PGM which I will get round to publishing on my GitHub page (at some point).

## STOMP

[STOMP](https://stomp.github.io/) is a text-oriented protocol suitable for publishing message all the way to the web browser.  Its a protocol specification, not a product, with support available for [many platforms and languages](https://stomp.github.io/implementations.html). 

Web browser support has generally relied on long-polling, but modern browsers also support [web sockets](https://en.wikipedia.org/wiki/WebSocket).

## ApacheNMS

In [[.NET Framework]] land there is no equivalant to Java's JMS standard.  The good fellows at Apache Foundation have developed [ApacheNMS](http://activemq.apache.org/nms/) that provides an abstraction that supports ActiveMQ, MSMQ, EMS, STOMP, WCF and AMPQ.

## Areon

[Aeron](https://github.com/real-logic/Aeron) is an open source project from [Martin Thompson](https://github.com/mjpt777) (LMAX, Disruptor) and [Todd Montgomery](https://github.com/tmontgomery) (29 West) which aimed at low latency (capital markets) applications.  [Aeron](https://github.com/real-logic/Aeron) has been designed with [mechanical-sympathy](http://mechanical-sympathy.blogspot.co.uk/), and as such have extremely high throughput.  [Aeron](https://github.com/real-logic/Aeron) supports Unicast, Multicast and IPC transports.

## Apache Kafta

[Apache Kafka](http://kafka.apache.org/) is a distributed, publish-subscribe messaging system implemented via a distributed commit log.  It has interesting properties in that is a pub-sub system but with the added concept of a partition and consumer groups.

Each topic has one or more partitions, and a message is published to exactly one partition by the publisher. Partitions are also replicated in a cluster for fault tolerance.

Consumers consume messages via a consumer group, and each message published to a topic is delivered to one consumer instance within each subscribing consumer group.

# Others

See [queues.io](http://queues.io/) for a good overview of other messaging systems.