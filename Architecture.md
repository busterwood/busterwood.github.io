---
title: "Architecture"
---
# Architecture

## Problem
To state the obvious, you must know what the problem is before you can choose the appropriate architecture.

### Statistics
It is important to know the volumes and latency requirements of your system, only then can you choose an appropriate solution.

For example, a systems that receives 100 orders per minute quite different from a system that receives 10,000 order _per second_.  What about volume spikes?  Is volume low on average but high at peak times? 

Does latency matter?  Is one second response time okay or is 10ms required?  What is acceptable when peak volume is reached?

Sometimes you cannot know exact numbers, but can you find out approximations?  Is it hundereds, thousands or millions?

## Technology

After you know the problem and statistics then you can think about appropriate technology choices. Is some technology mandated?  What is the budget? What tecnology is used already?

When evaluating vendor technology consider initial price, on-going support cost, customisation costs and profile of the vendor.  Do you really want to put all your faith in a small company with unknown longevity?

Be careful with assumptions about what is appropriate, do you really need to use that fancy new technology? For example [[SQL Server]] 2016 includes memory-optermised tables that can handles _millions_ of inserts and updates per second and can produce real-time analytics via updatable columnstore indexes. 

## Design

[Essential complexity](https://github.com/busterwood/wiki/wiki/Research-Papers#out-of-the-tar-pit) (business logic) must be separated from [accidental complexity](https://github.com/busterwood/wiki/wiki/Research-Papers#out-of-the-tar-pit) (e.g. implementation of services).  For example, in C#, the business logic belongs in it's own project (assembly) which also contains the _interfaces of services that it requires_, but implementation of interfaces must be done in separate projects (assemblies).  For example the business logic project may define a repository interface which is implemented in separate data access project.  This is known as the [dependency inversion principle](https://en.wikipedia.org/wiki/Dependency_inversion_principle).

**Keep it simple**.  Our job is to deliver the minimize the [essential complexity](https://github.com/busterwood/wiki/wiki/Research-Papers#out-of-the-tar-pit) (business logic) and __minimize everything else__.  Note: also see [[simple is not easy]] for the difference between simple and easy, they are __not__ the same.

Identify [aggregates](https://martinfowler.com/bliki/DDD_Aggregate.html) which will be treated as atomic units, e.g. and order and it's order lines are an [aggregate](https://martinfowler.com/bliki/DDD_Aggregate.html) object.

Where is the concurrency and how will it be handled?  Do you need locks in your code (really?), or can you get away with queues read by single threads?  Can you use [[CSP]] and [aggregates](https://martinfowler.com/bliki/DDD_Aggregate.html) to make each object single threaded?  How will you prevent race conditions? 
If a database is being used then will concurrency be _ignored_, _optermistic_ (version checks) or _pesermistic_ (locks).

How will the system be packaged?  One service?  Multiple services?  Multiple instances of service?  Do you need load balancing (scaling out) or hot standby (for fault tolerance)?  __Start simple__ with the minimum services, you can always break out additional services later.  Don't forget to create __diagrams__ of your system: 
* a context diagram that shows the users and other systems that interact with your system.
* a system diagram that shows how the components interact

Where is the system being hosted?  In house, cloud, hybrid cloud? What will happen in a disaster situation?