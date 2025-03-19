## **User-Defined Functions**

***User-defined functions are created to perform operations that can't be completed with built-in functions***. Users develop code that implements equations or formulas to complete a task and return a result.

A database engineer creates their own code. The code carries out a specific function and the function then returns the required result.

***To build a function in MySQL***, you can use that `CRETAE FUNCTION` command alongside the returns clause and the `RETURNS` command. These commands and clauses specify the data type and values to be returned by the function.

```sql
CREATE FUNCTION function_name() RETURNS datatype DETERMINISTIC
```

The parentheses are mandatory but you don't always need to include parameters. Specify the return data-type followed by the keyword, ***deterministic***.

***Deterministic*** means that the function always returns the same result for the same input parameters. For example, if a sum function is defined as deterministic, then it always returns the same result for the numbers it adds together.

Finally, you can implement the logic with the `RETURN` keyword.

### **User Defined Functions Laboratory**

Your company can use this syntax to create a function called `FindTotalCost`. A `Cost` parameter with a decimal data type passes a user input value of cost, and the `RETURNS` clause defines the functions return type as a decimal number with five digits. Finally, the `RETURN` command calculates and returns the final cost after deducting 10%.

```sql
DELIMITER //

CREATE FUNCTION FindTotalCost(Cost DECIMAL(5,2))RETURNS DECIMAL(5,2) DETERMINISTIC
BEGIN
    RETURN (Cost - (Cost*0.1));
END //

DELIMITER ;

# Find the total cost
SELECT FindTotalCost(50);
```

So each time Lucky Shrub needs to determine the sale price of their items, they just invoke the function in a `SELECT` statement followed by the current price in parentheses.

#### **Example Function**

Your company wants to offer a 10% discount to customers who make purchases of $100 or more and a discount of 20% on purchases of $500 or more.

```sql
DELIMITER //
CREATE FUNCTION GetTotalCost(Cost DECIMAL(5,2))
RETURNS DECIMAL(5,2) DETERMINISTIC
BEGIN
IF (Cost >= 100 AND Cost < 500) THEN SET Cost = Cost - (Cost * 0.1);
ELSEIF (Cost >= 500) THEN SET Cost = Cost - (Cost * 0.2);
END IF;
RETURN (Cost);
END
```

Now, it's time to test the function using a `SELECT` statement. A customer has just made a purchase that cost $500, so your company needs to determine the discount to be applied.

```sql
SELECT GetTotalCost(500);
```

The output result is 400, so this customer's purchase now costs $400 following a 20% discount.
