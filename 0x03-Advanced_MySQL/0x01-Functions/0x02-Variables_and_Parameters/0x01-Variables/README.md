## **Variables**

A variable represents a placeholder that stores a value. This value may change at times depending on the needs of the query. Basically variables are used to pass values between SQL statements or between a procedure and a SQL statement. 

There are two different ways in which variables can be used in MySQL.

  + **You can create variables inside or outside of a `SELECT` statement**, and
  + **You can create variables inside or outside of a stored function**.

In MySQL a user defined variable is created from alpha numeric characters. You just type the `@` symbol followed by the name that you want to call your variable, then assign a value to your variable using an equal-to operator. Make sure that you end your syntax with a semi-colon.

```sql
@variable_name = value;
```

### **Variables Inside a `SELECT` Statement**

You could also create a variable inside a `SELECT` statement. However, when assigning a value to a variable in a `SELECT` statement, you need to use the assignment operator syntax, `:=`. This instructs MySQL to assign a value to the variable.

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

The following function uses the variable `max_order`:

```sql
SELECT @max_order := MIN(Cost) FROM `orders`;

DELIMITER //
CREATE FUNCTION GetMaxCost() RETURNS DECIMAL(5,2) DETERMINISTIC
BEGIN
SELECT (@max_order);
END
```

### **Variables Inside a `SELECT` Statement using a Function**

It's also possible to create a variable inside of a select statement and assign it a value returned from a function.

```sql
SELECT <function_name>() INTO <variable_name> FROM <table_name>;
```

Your company can use this method to create a variable called `average_cost` which returns the average cost of items from their orders table.

```sql
SELECT AVG(Cost) INTO average_cost FROM `orders`;
```

#### **Example Function**

We will see a function that declares variable within itself. This is a typical function that compute its values using local variables.

```sql
DELIMITER //

CREATE FUNCTION add_all() RETURNS DECIMAL(15,2) DETERMINISTIC
BEGIN
    DECLARE min_order DECIMAL(15,2);
    DECLARE average_order DECIMAL(15,2);
    DECLARE max_order DECIMAL(15,2);

    -- Retrieve values
    SELECT MIN(Cost), AVG(Cost), MAX(Cost)
    INTO min_order, average_order, max_order
    FROM orders;

    -- Return the sum
    RETURN (min_order + average_order + max_order);
END //

DELIMITER ;

-- Call the function
SELECT add_all();
```

#### **Example Function**

```sql
DELIMITER //

CREATE FUNCTION Cost_Of_The_Product_With_ID_1() RETURNS DECIMAL(15,2) DETERMINISTIC
BEGIN
	DECLARE `cost_of_product` DECIMAL(15,2);
    
    # retrieve value
    SELECT Cost
    INTO `cost_of_product`
    FROM `orders`
    WHERE `OrderID` = 1;
    
    # Returns the value
    RETURN (cost_of_product);
END //

DELIMITER ;

SELECT Cost_Of_The_Product_With_ID_1();
```
