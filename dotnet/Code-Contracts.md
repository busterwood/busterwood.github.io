---
title: "Code Contracts"
---
# Code Contracts

In 1986 [Bertrand Meyer](https://en.wikipedia.org/wiki/Bertrand_Meyer) introduced [Design By Contract](https://en.wikipedia.org/wiki/Design_by_contract) as part of the [Eiffel programming lanaguage](https://en.wikipedia.org/wiki/Eiffel_(programming_language)).

Microsoft Research released [Code Contracts for .NET](https://docs.microsoft.com/en-us/dotnet/framework/debug-trace-profile/code-contracts) which is used within the .NET Framework Library.  The Visual Studio extension re-wrote the MSIL to enforce pre-conditions, invariants, and post-conditions.  Static contract analysis is also supported.  Unfortunatly, Code Contracts are _no longer supported in VS2017_.

I really liked the experiance of using Code Contracts in C# but the lack of VS2017 support and the slowness of the MSIL re-writer means they are unusable.

To me, the big benifits of Code Contracts are can be used to enforce how an interface _must_ behave.  they are right there in the code and checked at run-time.  They also eliminate the need for many unit tests.

## Contracts by delegation with dependency injection

I occurred to me that contracts are most useful with interfaces and interfaces typically used with dependency injection, so there is a simple solution: _inject contracts instead of real dependencies_.

For example, given the following interface:
```csharp
using System.Collections.Generic;

public interface IFinder
{
    List<Order> FindOrder(string orderNumber);
}
```

Then create a contract that takes a _real_ implementation and delegates to it:
```csharp
using BusterWood.Contracts;
using System.Collections.Generic;

public sealed class FinderContract
{
    readonly IFinder _inner;
    
    public FinderContract(IFinder inner) => _inner = inner ?? throw new ArgumentNullException();

    public List<Order> FindOrder(string orderNumber) 
    {
        Contract.Requires(orderNumber != null);
        var result = _inner.FindOrder(orderNumber);
        Contract.Ensures(result != null);
        return result;
    }
}
```

Then we need to require contracts to be injected into the place they are used:
```csharp
    public class OrderController
    {
        readonly FinderContract _finder;

        public OrderController(FinderContract finder) => _finder = finder ?? throw new ArgumentNullException();

        .... use the _finder
    }
    
```

### BusterWood.Goodies.Contracts

The [Contracts class](https://github.com/busterwood/Goodies/blob/master/Goodies/Contracts/Contract.cs) of [BusterWood.Goodies](https://github.com/busterwood/Goodies) implements simple contract methods:
* `Contract.Requires()` method checks a pre-condition
* `Contract.Enqures()` method checks a post-condition in __DEBUG builds only, not RELEASE builds__.

Not checking post-conditions in RELEASE builds is a common pattern going all the way back to Eiffel.