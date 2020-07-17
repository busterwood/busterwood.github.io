---
title: "Automated Testing"
---
# Automated Testing

# Automated Testing
Automated testing is a great investment, and whenever the cost is not "too high" then I want to automate tests.
Do I practice [TDD](http://en.wikipedia.org/wiki/Test-driven_development)?  Well, sometimes I do, but more often than not I write unit tests after writing some code.

## Unit testing
+ [NUnit](http://www.nunit.org/) was my first test framework in .NET, although I now prefer [BusterWood.Testing](https://github.com/busterwood/Goodies/blob/master/Goodies/Testing/README.md)
+ [JUnit](http://junit.org/) is my goto test framework when using Java, and I have also used [Groovy](http://www.groovy-lang.org/) to write test as [using the assert keyword gives nice error messages](http://www.groovy-lang.org/testing.html) when tests fail.
+ [Go](http://golang.org) has a great little [built-in test tool](http://golang.org/doc/code.html#Testing), which I have used extensively
+ I recommend [tSQLt](http://tsqlt.org/) to anyone developing on [SQL Server](http://www.microsoft.com/en-gb/server-cloud/products/sql-server/).  Using [tSQLt](http://tsqlt.org/) I  have developed tests for stored procedures (and functions) that mock dependencies such as tables, view and other procs.

## Acceptance testing
+ I have used [Fitnesse](http://www.fitnesse.org/) to automate tests of a financial system.  A test system integrated with a wiki sounded like a great idea, but the wiki language is not user friendly enough so the developers ended up writing all the test.
+ [Concordion](http://concordion.org/) is a great looking framework that I have used with Java.  I think it is more (end) user friendly as the pages are pure html