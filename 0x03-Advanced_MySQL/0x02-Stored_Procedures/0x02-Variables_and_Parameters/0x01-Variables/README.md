## **Variables**

We have learned about variables before. A variable represents a placeholder that stores a value. This value may change at times depending on the needs of the query. Basically variables are used to pass values between SQL statements or between a procedure and a SQL statement. 

### **Variables Inside or Outside Stored Procedure**

When creating a variable inside or outside of a stored procedure. Type the `SET` command followed by the name of the variable.

```sql
SET @variable_name = value;
```

Say for example, your company has an `orders` table in their database that records orders placed with the business. They can create and use a variable called `order_id` to target the record with the `OrderID` of 3.

```sql
SET @order_id = 3;
```

They can now use this variable to delete, update or query the record.


```sql
SELECT *
FROM `orders`
WHERE OrderID = order_id;
```

#### **Example Procedure**

Say we want to know the orders made by the customer with id of 3, we can always write our procedure as:

```sql
DELIMITER //

CREATE PROCEDURE GetAnOrder()
BEGIN
  SET @customer_id = 3;
  SELECT *
  FROM `Customers`
  INNER JOIN `Orders` ON
  `Customers`.`CustomerID` = `Orders`.`CustomerID`
  WHERE `Customers`.`CustomerID` = @customer_id;
END //

DELIMITER ;

-- Call the procedure
CALL GetAnOrder();
```

### **Variables Inside or Outside Stored Procedure using `DECLARE`**

You can also create a variable inside a stored procedure using the `DECLARE` command in this instance you type the variable name without an `@` sign. Then you assign the variable a relevant data type and default value.

```sql
DECLARE variable_name DATATYPE DEFAULT VALUE;
```

Your company can use this method to create a variable called `minimum_order_cost`. The expectation is that this variable stores of value equal to the cost of the minimum order in the company's database.

```sql
DECLARE minimum_order_cost DECIMAL(5, 2) DEFAULT 0;
```

### **Variables Inside a `SELECT` Statement**

You could also create a variable inside a `SELECT` statement. However, when assigning a value to a variable in a `SELECT` statement, you need to use the assignment operator syntax, `:=`. This instructs My sequel to assign a value to the variable. A standard equals operator.

```sql
SELECT @variable_name := value;
```

Your company can create a `max_order` variable that retrieves the most expensive order from their orders table.

```sql
SELECT max_order := MAX(Cost) FROM `orders`;
```

Then, to output/shows the most expensive order:

```sql
SELECT @max_order;
```

### **Variables Inside a `SELECT` Statement using a Function**

It's also possible to create a variable inside of a `SELECT` statement and assign it a value returned from a function.

```sql
SELECT function() INTO variable_name FROM table_name;
```

Your company can use this method to create a variable called `average_cost` which returns the average cost of items from their orders table.

```sql
SELECT AVG(Cost) INTO average_cost FROM `orders`;
```
