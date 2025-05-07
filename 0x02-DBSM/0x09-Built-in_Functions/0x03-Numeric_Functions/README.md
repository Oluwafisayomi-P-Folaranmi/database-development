# Numeric Functions Laboratory

Here's a quick reminder of what database engineers mean by the term functions in the context of my MySQL. From earlier lessons, a function is a piece of code that performs an operation and returns a result. Some functions accept parameters or arguments, while other functions do not. Functions are very useful for manipulating data in a database table. 

MySQL functions can be grouped into five different categories as follows. Numeric, string, date, comparison, and control flow functions. Aggregate functions, which can be used on a set of values and math functions which perform basic mathematical tasks on data. 


### Aggregate Functions

Commonly used aggregate functions include:

   + SUM()
   + AVG()
   + MAX()
   + MIN()
   + COUNT()


### Math Functions

   + ROUND()
   + MOD()

These functions are a great way for a company to perform additional tasks while also determining the average dollar amount that each client has spent with the business. You can build them into your SQL `SELECT` statements. The round syntax:


```sql
SELECT column_name, ROUND(column_name, <decimal places>)
FROM table;

```

The mod syntax is similar:


```sql
SELECT column_name, MOD(column_name, <divided by>)
FROM table;

```


## `ROUND()`

Your company is reviewing the dollar amount that each client has spent with the business. The company has a table called client orders that shows the average amount each client has spent. The table has two columns, Client ID, which shows the ID of each client and average cost, which displays the average amount each client has spent. However, even though this table shows the average amount, your company needs to round down these values to two decimal places.


```sql
SELECT ROUND(AVG_Cost, 2)
FROM clientcosts
GROUP BY ClientID;

```


## `MOD()`

The data they need is in the table orders. The table contains several columns but the ones you need to complete this task are Order ID, Item ID, and Quantity. To determine if a given quantity is odd or even, you can divide the quantity by 2. The remainder is your answer. This can be done using the `MOD` function.


```sql
SELECT OrderID, ItemID, MOD(Quantity, 2)
FROM orders;

```
