---
title: "Micro-service architecture"
---
# Micro-service architecture

A number of small services that together implement the overall system.  Popularized by Netflix.

Services must:
* be **autonomous**, i.e. built, deployed and run independently.
* be secure, i.e. handle authentication and authorisation
* have SLAs and respect them, e.g. 150ms max per call *in total, including calls to any additional services*.
* assume any dependent services will fail or be unavailable, i.e. keep local cache and use the circuit-breaker pattern
* log

Be careful about allowing cascading calls as time quickly adds up when one service calls another which calls another, etc.  Have at most **one** additional service call, and consider *inverting service dependencies* to feed data to a service rather than one service calling multiple other services.

### Dumb pipes

Keep communications simple, put smarts into the services.

### State machines?

Some people are talking about using state machines to retry services calls, which also then allows for rolling back failed operations, i.e. a compensating transaction.

## True object-orientation?

I'm starting to think of a micro-service in terms of Alan Kay's original meaning:

> *long lived* objects that *you send messages to* to ask them to perform operations.  Messages are late-bound, dynamic things.

Alan Kay was coming from a background of biology, and was thinking about cells communicating dynamically using chemical messages.

For me:
* inter-service messages: **dynamic**
* service implementation: use a **static** language for higher safety and error checking