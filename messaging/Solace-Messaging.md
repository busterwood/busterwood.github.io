---
title: "Solace Messaging"
---
# Solace Messaging

A `Message` has header, application-specific properties and a body (payload).
The header contains:
* topic, in the form `subject/of/the/message`
* delivery mode, Direct (fastest), non-persistent (in-memory queued), persistent (guaranteed as written to disk)
* `reply-to` for request-reply messages
* `expiration` time and `TimeToLive`
* `Deliver-to-one` to force load-balancing behaviour when there are multiple topic subscribers
* etc

Direct messages can be `elided` (conflated) so that messages on a topic arrive at a maximum rate, with intermediate messages being dropped.  This can be useful:
* for slow consuming apps
* for sending to humans
* for limiting WAN distribution

## Message Patterns

* `point-to-point` when a message is sent to a queue with one subscriber.
* `non-execlusive consumption` (load balancing) when a message is sent to a queue with mutliple subscribers.
* `request-reply` is request via one queue and get a reply via another queue
* `publish-subscribe` is when a message is sent to multiple queue, where each queue is read by a single subscriber.

## VPNs

VPNs are separate domains (environments/namespaces) for messages.

## Queues and topics

`Queues` can be:
* `durable` in that they exist regardless of a client being connected
* `non-durable` are temporary queues which are automatically deleted after the client that created it disconnects.

`Topics` are only used by JMS clients for durable topic subscriptions.

### Subsriptions

Queues can have one or more topic subscriptions, which is how messages get onto queues.

## Caching

[SolCache](https://docs.solace.com/SolCache/SolCache-Overview.htm) is a last-value cache for topics.  SolCache is a separate service which is deployed as a cluster (linux only).