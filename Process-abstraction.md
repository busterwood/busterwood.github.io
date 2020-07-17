---
title: "Process abstraction"
---
# Process abstraction

What is the signature of the `Main` method in C#?
```csharp
static int Main(string[] args)
```

So it takes some arguments and returns an integer, where the _convention_ is:
* returning *zero* indicates success
* returning any other number indicates an error, i.e. the error code is returned.

But, this is not the whole picture, as three streams are passed to each process:
* StdIn - read input from here
* StdOut - write output to here
* StdErr - **log output** should be written here

So conceptually the main method _should_ look like:
```csharp
static int Main(Stream stdIn, Stream stdOut, Stream stdErr, string[] args)
```

But what about environment variables?  Environment variables exist to pass deployment specific information to the proces so maybe the true signature of `main` should be:
```csharp
static int Main(
    Stream stdIn, Stream stdOut, Stream stdErr, 
    IReadOnlyDictionary<string, string> environment, 
    string[] args
)
```
So every process already has:
* Input from *StdIn*
* Output to *StdIn*
* Log to *StdErr*
* Configuration from *environment variables*
* zero or more *arguments*
* an integer *return value* where zero is success and non-zero indicates and error

So does your program require more than this?  
Does it require a separate configuration system?
Does it require a logging library?