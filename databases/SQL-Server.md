---
title: "SQL Server"
---
# SQL Server

I've been using SQL Server for many years now, I think I first used version 6.5 many years ago and I've used every version since 2000.

# Under-used features

* Pass a set of data to stored procedures with [table-valued parameters](https://docs.microsoft.com/en-us/dotnet/framework/data/adonet/sql/table-valued-parameters).
* I hardly ever see [views](https://docs.microsoft.com/en-us/sql/t-sql/statements/create-view-transact-sql) used appropriately.  Views are SQL Servers implementation of derived relations in Relational Algebra.  Views should be used for encapsulating business logic. For example, consider a database that contains order, there should be views that correspond to new orders, in-progress orders and complete orders.  
* Indexed views can be used to quickly query summarized data.  For example, in a database containing orders you can create an indexed view that stores the total quantity and the quantity filled so far.
* the [snapshot isolation level](https://msdn.microsoft.com/en-us/library/tcbchxcb(v=vs.110).aspx) eliminates read locks and generally allows for more concurrency and less deadlocks using [Multiversion concurrency control](https://en.wikipedia.org/wiki/Multiversion_concurrency_control)
* The [READ_COMMITTED_SNAPSHOT](https://msdn.microsoft.com/en-us/library/tcbchxcb(v=vs.110).aspx) option which enables MVCC as the default isolation level
* the [OPTIMIZE FOR query hint](https://msdn.microsoft.com/en-us/library/ms181714.aspx) is useful for optimizing stored procs that have range conditions (e.g. date range) or LIKE conditions
* Forcing a stored proc to generate a optimial query plan for it queries using the [WITH RECOMPILE](https://msdn.microsoft.com/en-us/library/ms187926.aspx) option is useful when the proc queries ranges or like conditions


# SQL Server 2016

SQL Server 2016 is a _game-changer_ in that it causes you to think again about appropriate applications of SQL Server.
Why has the game changed?
* [Memory-optimized tables](https://msdn.microsoft.com/library/dn133186.aspx) with full durability and ACID properties give around 30 times performance improvement compared to traditional tables
* Memory-optimized tables can be used as [faster temp tables and table variables](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2016/03/21/improving-temp-table-and-table-variable-performance-using-memory-optimization/)
* Native compilation of stored procedures speeds up stored procedure execution
* Automatic population of audit tables using [System versioned tables](https://msdn.microsoft.com/en-us/library/dn935015.aspx)
* SQL Server now has a [JSON data type](https://msdn.microsoft.com/en-gb/library/dn921897.aspx) as well as the XML data type
* Automatically updated [column store indexes](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2016/02/29/real-time-operational-analytics-simple-example-using-nonclustered-clustered-columnstore-index-ncci/) 
* [Columnstore indexes on memory optimized tables](https://blogs.msdn.microsoft.com/sqlserverstorageengine/2016/02/29/real-time-operational-analytics-using-nonclustered-columnstore-index/) enabling real-time analytics

### Restrictions

The [following restrictions](https://msdn.microsoft.com/en-us/library/mt786797.aspx) apply:
* No database SNAPSHOTs are allowed of a database which uses Memory-optimized tables
* Memory-optimized tables are not allowed to contain columns with the [RowVersion](https://msdn.microsoft.com/en-us/library/ms182776.aspx) type
* No MERGE statements in native stored procedures
* No joins in UPDATE or DELETE statements in native stored procedures
* No CASE statements in native stored procedures, although there is a [work-around](https://msdn.microsoft.com/en-us/library/dn629453.aspx)

# Issues

The `MERGE` statement has several issues to be wary about:
* When merging _from_ a temp table or table variable make sure that the source has a __primary key__ _otherwise concurrent `MERGE` statements can deadlock_ due to reading source rows in random order and taking out a page lock. See [merge statement deadlocking itself](https://dba.stackexchange.com/questions/23467/merge-statement-deadlocking-itself)
* Use `WITH (HOLDLOCK)` hint to avoid race conditions on insert leading to _primary key violation_ errors. See [Race condition with merge](http://weblogs.sqlteam.com/dang/archive/2009/01/31/UPSERT-Race-Condition-With-MERGE.aspx)

# Tips

* Script to list [foreign key constraints without a supporting index](https://gist.github.com/busterwood/c8593112bba4f8ec21e6a32cad171332)