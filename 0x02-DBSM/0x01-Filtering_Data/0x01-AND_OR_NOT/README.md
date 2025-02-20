# Using AND, OR, NOT

You might already be familiar with using a `WHERE` clause and a condition to filter data in a database table. But what if you need to specify multiple conditions in a `WHERE` clause? You can use logical operators to specify multiple conditions or rules. So when the data is filtered, all specified conditions are applied.

When filtering data in a database table, you can add a `WHERE` clause to your SQL `SELECT` statement to specify a condition or rule for how the data should be filtered.


## The `AND` and `OR` Operators

The `AND` operator is used with the `WHERE` clause to filter data. It checks if all combined conditions meet the value of `true` and the `OR` operator checks if any of the combined conditions meet the value of `true`. Let's take a moment to explore the syntax for each of these logical operators. The multiple conditions are placed after the `WHERE` clause and combined using the `AND` operator.


```sql
SELECT *
FROM table_name
WHERE condition1 AND condition2 AND condition3...;

```

With the `OR` operator a record is included in the result set if any of the conditions separated by `OR` is `true`.


```sql
SELECT *
FROM table_name
WHERE condition1 OR condition2 OR condition3...;

```


## The `NOT` Operator

The `NOT` operator works slightly differently to other operators. It selects a result to be included in the query results set only if the conditions specified in the `WHERE` clause are not true. In other words it reverses or negates the results that are returned once the condition is evaluated.

To use the `NOT` operator, you just type `NOT` after the `WHERE` clause followed by the required condition.

```sql
SELECT *
FROM table_name
WHERE NOT condition1;

```
 

## AND, OR, NOT Laboratory

Your company are reviewing their accounts and need to generate specific details on their customers and the purchases they've made. They can complete this task by filtering data with the use of logical operators.

In the database there is a table called `customer_ purchases`. This table contains the data Lucky Shrub needs to complete their queries. The data is divided into the following four columns: `CustomerID`, `CustomerName`, `Location` and `Purchases`, the value of each customer's individual purchase. You can replicate the table in your database to practise.


### AND

Lucky Shrub first need to identify customers from the location Gila county who have made purchases of over $2,000. This requires two search conditions. The first is customers who are from Gila county. And the second is customers who have made purchases of over $2,000. You can retrieve these details by writing a basic select statement as follows.


```sql
-- Customers from Gila County who have made purchases over $2000
SELECT *
FROM `customer_purchases`
WHERE Location = "Gila County" AND Purchases > 2000;

```


### OR

Now Lucky Shrub need to identify customers who are from Gila county or Santa Cruz County. The logical operator `OR` can be used to combine multiple conditions in the `WHERE` clause.


```sql
-- customers from Gila County or Santa Cruz County
SELECT *
FROM `customer_purchases`
WHERE Location = "Gila County" OR Location = "Santa Cruz County";

```


### NOT

Next Lucky Shrub need to retrieve the details of customers who do not reside in Gila county or Santa Cruz county. They can perform this task using the `NOT` logical operator.


```sql
-- customers not from Gila County and Santa Cruz County
SELECT *
FROM `customer_purchases`
WHERE NOT Location = "Gila County" AND NOT Location = "Santa Cruz County";

```
