---
title: "CAP Theorem"
---
# CAP Theorem

The CAP Theorem is that distributed *systems* can, at most, guarantee only two follow properties, **never all three**:
* consistency - all nodes see the same data
* availability - every request receives a response
* partition tolerance - the system continues to operate despite network failure(s)

This applies to all distributed systems - including micro-service architectures - not just too distributed databases.