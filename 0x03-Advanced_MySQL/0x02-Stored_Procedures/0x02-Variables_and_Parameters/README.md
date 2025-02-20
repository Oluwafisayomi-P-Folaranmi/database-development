# Variables and Parameters

MySQL also offers more complex stored procedures and functions which rely on variables and parameters. Your company have several repetitive but complex queries they need to create for their database. They can create these queries using variables and parameters. Let's follow their process and find out how it works first. You need to know what the term variable means in the context of MySQL.
 

## Variables

We have learned about variables before. A variable represents a placeholder that stores a value. This value may change at times depending on the needs of the query. Basically variables are used to pass values between SQL statements or between a procedure and a SQL statement. 

There are two different ways in which variables can be used in MySQL.

  + You can create variables inside or outside of a stored procedure, and 
  + You can create variables inside or outside of a `SELECT` statement.

In MySQL a user defined variable is created from alpha numeric characters. You just type the `@` symbol followed by the name that you want to call your variable, then assign a value to your variable using an equal-to operator. Make sure that you end your syntax with a semi-colon.


```sql
@variable_name = value;

```


### Variables Inside or Outside Stored Procedure

When creating a variable inside or outside of a stored procedure. Type the `SET` command followed by the name of the variable.


```sql
SET @variable_name = value;

```

Say for example, your company has an orders table in their database that records orders placed with the business. They can create and use a variable called `order_id` to target the record with the `OrderID` of 3.


```sql
SET @order_id = 3;

```

They can now use this variable to delete, update or query the record.


```sql
SELECT *
FROM `orders`
WHERE OrderID = order_id;

```


### Variables Inside or Outside Stored Procedure using `DECLARE`

You can also create a variable inside a stored procedure using the `DECLARE` command in this instance you type the variable name without an `@` sign. Then you assign the variable a relevant data type and default value.


```sql
DECLARE variable_name DATATYPE DEFAULT VALUE;

```

Your company can use this method to create a variable called `minimum_order_cost`. The expectation is that this variable stores of value equal to the cost of the minimum order in the company's database.


```sql
DECLARE minimum_order_cost DECIMAL(5, 2) DEFAULT 0;

```


### Variables Inside a Select Statement

You could also create a variable inside a select statement. However, when assigning a value to a variable in a select statement, you need to use the assignment operator syntax, `: =`. This instructs my sequel to assign a value to the variable. A standard equals operator.


```sql
SELECT @variable_name : = value;

```

Your company can create a `max_order` variable that retrieves the most expensive order from their orders table.


```sql
SELECT max_order := MAX(Cost) FROM `orders`;

```

They can then access the value by typing select max order. The output shows the most expensive order.


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

A parameter is used to pass arguments or values to a function or procedure from the outside. In MySQL, a function only takes input parameters but there are three different types of parameters that can be declared in stored procedures.

  + `IN`
  + `OUT`, and
  + `INOUT`.


### IN

The `IN` parameter is the default parameter. It's used to pass an argument or value to a stored procedure. To use this parameter, type the following SQL. Then within the procedure's parentheses add another pair of parentheses with the parameter names. Then add a select statement that outlines the logic of your query.


```sql
CREATE PROCEUDRE procedure_name(IN logic(value1, value2))
SELECT logic;

```

For example, your company can create a procedure that calculates 20% of each employee's salary for tax purposes.


```sql
CREATE PROCEDURE CalculateTax(IN Salary DECIMAL(10, 2))
SELECT Salary * 0.2 AS Tax;

```

They can then call the procedure against a specific salary value. This passes the salary to the procedure and returns the amount due in tax.


```sql
CALL CalculateTax(10000);

```


### OUT

The `OUT` parameter is used to pass a value to a variable outside of the procedure. Here's an example where your company used a procedure called `GetLowestCost` to identify the order with the lowest cost in their orders table. They use the `OUT` keyword to pass the value outside the parameter.


```sql
CREATE PROCEUDRE GetLowestCost(OUT LowestCost DECIMAL(6, 2))
SELECT MIN(Cost) INTO LowestCost FROM `orders`;

```

So the next step is to call the procedure. The value of the procedure can then be stored in the form of a variable within a pair of parentheses.


```sql
CALL GetLowestCost(@order_lowest_cost);

```

To display the variable stored value. Just use a select statement to return the output.


```sql
SELECT @order_lowest_cost;

```


### INOUT

There's the `INOUT` parameter. This is a combination of both parameters. It's used to pass an argument to the procedure and then pass the new value back to the outside. So it's effectively an `IN` and an `OUT` parameter. For example, you could create a procedure called `SquareANumber` that returns the squared value of a specific number using the `INOUT` keyword and `a_number` variable.


```sql
CREATE PROCEUDRE SquareANumber(INOUT a_number INT)
BEGIN
  SET a_number = a_number * a_number;
END

```

The procedure expects an input number through the number parameter. It multiplies this number by itself, then returns the result to the same a number parameter again. Then you can set a variable called `x_number` with a value of 5. Call the procedure using the `x_number` variable value. The procedure passes the value through the parameter. It then performs the calculation and returns the result back through the parameter. Use a select statement to output the variable value.


```sql
SET @x_number = 5;
CALL SquareANumber(x_number);
SELECT x_number;

```
