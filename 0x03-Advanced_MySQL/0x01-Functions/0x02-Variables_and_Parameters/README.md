# Variables and Parameters

MySQL also offers more complex stored functions which rely on variables and parameters. Your company have several repetitive but complex queries they need to create for their database. They can create these queries using variables and parameters. Let's follow their process and find out how it works first. You need to know what the term variable means in the context of MySQL.
 

## Variables

A variable represents a placeholder that stores a value. This value may change at times depending on the needs of the query. Basically variables are used to pass values between SQL statements or between a procedure and a SQL statement. 

There are two different ways in which variables can be used in MySQL.

  + You can create variables inside or outside of a stored procedure, and 
  + You can create variables inside or outside of a `SELECT` statement.

In MySQL a user defined variable is created from alpha numeric characters. You just type the `@` symbol followed by the name that you want to call your variable, then assign a value to your variable using an equal-to operator. Make sure that you end your syntax with a semi-colon.


```sql
@variable_name = value;

```


### Variables Inside a Select Statement

You could also create a variable inside a select statement. However, when assigning a value to a variable in a select statement, you need to use the assignment operator syntax, `:=`. This instructs my sequel to assign a value to the variable. A standard equals operator.


```sql
SELECT @variable_name := value;

```

Your company can create a `max_order` variable that retrieves the most expensive order from their orders table.


```sql
SELECT max_order := MAX(Cost) FROM `orders`;

```

They can then access the value by typing:


```sql
SELECT @max_order;

```


### Variables Inside a Select Statement using a Function 

It's also possible to create a variable inside of a select statement and assign it a value returned from a function.


```sql
SELECT function() INTO variable_name FROM table_name;

```

Your company can use this method to create a variable called `average_cost` which returns the average cost of items from their orders table.


```sql
SELECT AVG(Cost) INTO average_cost FROM `orders`;

```


## Parameters

A parameter is used to pass arguments or values to a function or procedure from the outside. In MySQL, a function only takes input parameters.
