---
title: "Mapping"
---
# Mapping

Mapping data between two _similar_ structures seems to be a very common activity in the type of software I work on.  Some examples:

* database to object
* DTO to object model
* XML to object
* JSON to object
* CSV to a object
* all the above the other way round

I'm not talking about serialisation, but subtle transformation with variations in _naming_ and/or type conversion, some examples:

* ORDER_ID maps to OrderId (or just Id)
* nullable int maps to int (null is treated as zero)
* integers (or strings) are mapped to enums
* all the above the other way round

While some serialisation libraries try to have some features for transformation it does not seem to be treated as a separate concept. 

## Configuration or convention

In the .NET world configuration is popular, for example attributes on properties to control Entity Framework.
I find configuration repetitive, as often transformations follow patterns.  
Configuration is like writing a long list of "a1 maps to b1, a2 maps to b2, ...", where as convention allow you write a few rules like "map a to b like this..."

## What transformations need to exist in .NET?

* Object of T to object of U
* IDataRecord to object of T
* IDataReader to sequence of T (common case of a single result)
* IDataReader to sequence of T1, T2, ... for multiple result data readers
* IXmlReader to object of T
* IXmlReader to sequence of T
* IJsonReader to object of T
* IJsonReader to sequence of T
* CSV reader to sequence of T
* all the above the other way round

Note: why is there no standard JSON Reader interface in .Net? 

