# Conditions 


You may be familiar with the `GROUP BY` clause having helped to group data from a database table. **Now, we need to filter this grouped data against the list of conditions** to determine the best performing, say departments in the business. They can use the MySQL `HAVING` clause to specify filter conditions that will generate this data. 

The `WHERE` clause is used in a `SELECT` statement to specify one or more filter conditions. **The `WHERE` clause can't be used to specify a filter condition for the group data that the `GROUP BY` clause generates**. What is the `HAVING` clause and what does it add to your grouping data skill set? **The `HAVING` clause is used in a SQL statement to specify a filter condition for the group data that the `GROUP BY` clause generates.**

How do you filter this data? You can add the `HAVING` clause to your SQL statement. The `HAVING` clause is added after the `GROUP BY` clause. The `HAVING` clause is used to specify the filter condition that needs to be applied to your grouped data. **The `HAVING` clause evaluates the group filter condition against each group returned by the `GROUP BY` clause.** If the result is true, the row is included in the results set. However, don't forget that **if you omit the `GROUP BY` clause, then the `HAVING` clause behaves just like the `WHERE` clause.**

```sql
SELECT column_name(s) 
FROM table_name 
WHERE filter_condition 
GROUP BY group_by_column_expression 
HAVING group_filter_condition 

```

The SQL below can be used to filter their customer order data to check which departments met their monthly sales target of $2,275. 

```sql
SELECT `Department`, SUM(OrderTotal) 
FROM `orders` 
GROUP BY `Department` 
HAVING SUM(OrderTotal) > 2275; 

```
