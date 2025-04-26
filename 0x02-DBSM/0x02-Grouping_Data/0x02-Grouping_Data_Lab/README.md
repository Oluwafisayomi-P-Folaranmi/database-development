# Grouping Data Laboratory 

 
We want to work on the `order` table whose SQL script is provided in this folder. Let's start with a quick review of the `order` table. 

The table contains five columns, **Order ID**, **Department**, **Order Date**, **Order Quantity**, and **Order Total**. There are multiple records with the same value for the `Department` column. This means that there are a total of five records for the Lawn care department and there are more instances of multiple records with the same value for other departments like `Decking`. 

You can reduce the departments into five groups (or subgroups) using the `GROUP BY` clause, so that we have just one row for each group (or department). This will make it much easier to analyze the data and produce summaries. 


## Reduce the departments into five groups 

```sql
SELECT `Department` 
FROM `orders`
GROUP BY `Department`; 

```

Finally run the statement to generate the output. In the output that's returned, all records in the `Department` column have been reduced to five groups, one row or one single record for each department in the business. Now that you have simplified the table, you can use aggregate functions to analyze the data. 


## Grouping and the `COUNT` function 

To show the number of orders placed with each department. You can use the `COUNT` function to produce this data. The syntax for this query is almost the same as the previous one you just performed. The key difference is that you must add the `COUNT` function followed by the column name in parenthesis after `SELECT` Department. This function specifies which column holds the data and it counts the occurrences of each department among the `orders` records. 

```sql
SELECT `Department`, COUNT(Department) 
FROM `orders`
GROUP BY `Department`; 

```

You can try it with this with similar order quantities too. 

```sql
SELECT `OrderQty`, COUNT(OrderQty) 
FROM `orders`
GROUP BY `OrderQty`; 

```


## Grouping and the `MIN` function 

Once again, you can use the same syntax but with the `MIN()` function targeting the `orderQTY` column. Once you run the query, the output returns the smallest value of the column. We can use the `MAX()` function too which returns the largest value of the column. 

```sql
SELECT `Department`, MIN(OrderQty), MAX(OrderQty) 
FROM `orders`
GROUP BY `Department`; 

```


## Grouping and doing some calculations with aggregate functions 

This SQL code retrieves aggregated data for each department from the orders table. It counts the number of entries `COUNT(Department)`, calculates the total quantity of orders `SUM(OrderQty)`, the average quantity of orders `AVG(OrderQty)`, the total order value `SUM(OrderTotal)`, and the average order value `AVG(OrderTotal)` for each department. The results are grouped by the `Department` column, meaning each row in the result set represents a distinct department along with its aggregated metrics. 

```sql
SELECT `Department`, COUNT(Department), SUM(OrderQty), AVG(OrderQty), SUM(OrderTotal), AVG(OrderTotal) 
FROM `orders`
GROUP BY `Department`; 

```
