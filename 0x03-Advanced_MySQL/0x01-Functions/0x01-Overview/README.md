# Functions and Stored Procedures


## Overview of Functions in MySQL

In programming, functions encapsulate code that can be called by name to perform a specific task, often returning a value upon completion. The primary goal is to create reusable blocks of code that simplify repetitive tasks, improve organization, and make programs easier to maintain.

The main purpose of creating stored functions is to create reusable code that can be invoked and executed in an efficient way. So, instead of typing the same code repeatedly, you can save your blocks of code in a stored function. You can then call these blocks when you need to use your code. This makes your code more consistent, better organized, reusable and easier to maintain.


## Function

The following query is an example of a function that returns the average cost of all orders in the Orders table from the Lucky Shrub database.


```sql
SELECT AVG(Cost) FROM Orders;

```

You can wrap this statement in a stored function as follows:


```sql
DELIMITER //
CREATE FUNCTION GetCostAverage() RETURNS DECIMAL(5,2) DETERMINISTIC 
BEGIN
RETURN (SELECT AVG(Cost) FROM Orders);
END

```

You should use the `DELIMITER;` so as to restore MySQL default delimiter.
