# Conditions Laboratory 


We want to work on the `order` table whose SQL script is provided in this folder. Let's start with a quick review of the `order` table. 

The table contains five columns, **Order ID**, **Department**, **Order Date**, **Order Quantity**, and **Order Total**. 


## Grouping and order totals 

The first task is to identify which departments have order totals of a value greater than $2,275. You're only concerned with the `Department` and `OrderTotal` columns. 

You can determine the order total of each department by using a `SELECT` statement with a `GROUP BY` clause. 

```sql
SELECT `Department`, SUM(OrderTotal) 
FROM `orders` 
GROUP BY `Department`; 
```

The next step is to filter this data to retrieve the results to have an order total value greater than $2,275. 

```sql
SELECT `Department`, SUM(OrderTotal) 
FROM `orders` 
GROUP BY `Department`
HAVING SUM(OrderTotal) > 2275; 

```


## Using alias 

You can use alias in the `SELECT` clause for the aggregate function. This makes the condition concise and easier to read. 

```sql
SELECT `Department`, SUM(OrderTotal) AS `total` 
FROM `orders` 
GROUP BY `Department`
HAVING `total` > 2275; 

```
