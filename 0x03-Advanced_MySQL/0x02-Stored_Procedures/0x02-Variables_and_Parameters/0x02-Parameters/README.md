## **Parameters**

A parameter is used to pass arguments or values to a function or procedure from the outside. In MySQL, a function only takes input parameters but there are three different types of parameters that can be declared in stored procedures.

  + `IN`
  + `OUT`, and
  + `INOUT`.

### **`IN`**

The `IN` parameter is the default parameter. It's used to pass an argument or value to a stored procedure.

To use this parameter, type the following SQL. Within the procedure's parentheses, add another pair of parentheses with the parameter names. Then add a `SELECT` statement that outlines the logic of your query.

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

### **`OUT`**

The `OUT` parameter is used to pass a value to a variable outside of the procedure.

Here's an example where your company used a procedure called `GetLowestCost` to identify the order with the lowest cost in their orders table. They use the `OUT` keyword to pass the value outside the parameter.

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

### **`INOUT`**

There's the `INOUT` parameter. This is a combination of both parameters. It's used to pass an argument to the procedure and then pass the new value back to the outside.

So it's effectively an `IN` and an `OUT` parameter. For example, you could create a procedure called `SquareANumber` that returns the squared value of a specific number using the `INOUT` keyword and `a_number` variable.

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
