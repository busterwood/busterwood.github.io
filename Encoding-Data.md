---
title: "Encoding Data"
---
# Encoding Data

How do you communicate?  what message format do you use?

# XML
Does anyone use XML anymore? Its so verbose. On the plus side, XML is self describing, i.e. you can read an XML document without knowing the schema in advance.

# JSON
JSON is new XML, its a bit less verbose which is good, and it's portable all the way to the web browser, which of course is where it came from.  

# Protocol Buffers
Google's [Protocol Buffers](https://developers.google.com/protocol-buffers/) are binary message format that is platform and language independent.  [Protocol Buffers](https://developers.google.com/protocol-buffers/) are pretty speedy, but are not self-describing.

# MessagePack
[MessagePack](http://msgpack.org/) is like a binary version of JSON.  Its more compact and self describing.

# SBE
[Simple Binary Encoding](https://github.com/real-logic/simple-binary-encoding/wiki) binary encoding is designed for low-latency messaging, e.g. High Frequency Trading.  Its available for Java and CPP, C#.  The messages are based on schema, but are not self describing.

# Byte order

Worried about reading and writing binary data?  What about the edian-ness of the machine your running on?  Can you handle it?  Its easy, just refer to Rob Pike's post [Byte Order Fallacy](http://commandcenter.blogspot.co.uk/2012/04/byte-order-fallacy.html).