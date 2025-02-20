# Comparison Functions Laboratory

Your company are approaching the end of their business year and need to extract sales revenue data for each item in their inventory. They can extract this data using comparison functions.

MySQL comparison functions allow you to compare values within a database. For example, the function can be used to determine the highest, lowest, and other values. A benefit of comparison functions is that they can be used with a wide range of values, including numerical, strings, and characters. Here's a few examples of MySQL comparison functions.

  + `GREATEST`:
    - function is used to find the highest value,
  + `LEAST`:
    - determines the lowest value, and 
  + `ISNULL`:
    - is used as an alternative to the equals operator to test if a value is null.


### `GREATEST`

To demonstrate the syntax, let's identify the highest and lowest values from a table that contains numerical values only. The syntax begins with a `SELECT` command.


```sql
SELECT column1, GREATEST (column2, column3, column4) AS highest, LEAST (column2, column3, column4) AS lowest
FROM table_name;

```

The parenthesis following the `GREATEST` function contains the names of the columns you need to compare. Then use the `AS` keyword with a column alias of highest to ensure SQL returns the required values in a new table under this column. Next, utilize the `LEAST` function in the same manner. Finally, identify the table to be queried.


### `ISNULL`

ISNULL is often used with a SELECT command, followed by the name of the required column.


```sql
SELECT ISNULL(column_name)
FROM table_name;

```

An ISNULL function can also be used with a WHERE clause.


```sql
SELECT *
FROM table_name
WHERE ISNULL(column_name);

```

The clause calls the ISNULL function and identifies the column it must pass through.


## Comparison Functions Laboratory

Your company requires data on their sales revenue for each item in their inventory for the last four business quarters. The sales revenue data is contained in the sales revenue table. The table has five columns. One column called `ItemID`, which identifies each item in the inventory and then individual column for each quarter.


### `GREATEST`

Your company first need to identify the highest and lowest revenue each item brought in over the past four quarters. You can have them by using the greatest and least comparison functions, just like the syntax example from earlier.


```sql
SELECT ItemID, GREATEST(Q1, Q2, Q3, Q4) AS highest, LEAST(Q1, Q2, Q3, Q4) AS lowest
FROM sales_revenue;

```


## `ISNULL`

Your company need to determine which of their most recent orders are yet to be delivered. The delivery data is held in the orders table. The table contains seven columns. OrderID, ItemID, Quantity, Cost, OrderDate, DeliveryDate, and OrderStatus. The DeliveryDate column is your primary concern here. All orders yet to be delivered have a NULL value within this column. You can use the ISNULL function on this column with the WHERE clause to filter these orders.


```sql
SELECT *
FROM `orders`
WHERE NOT ISNULL(DeliveryDate);

```
