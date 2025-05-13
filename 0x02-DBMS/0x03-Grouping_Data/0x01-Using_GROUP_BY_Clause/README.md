# **Using MySQL `GROUP BY` Clause**

Lucky Shrub are reviewing recent customer orders in their database. They need to find **a way to group records with similar values into one single record** so that they can analyze the order data and produce summaries. **The MySQL `GROUP BY` clause and its related aggregate functions** are a great way for the company to complete this task.

Over the next few minutes, you'll explore these concepts and use them to help Lucky Shrub produce summaries of their orders. And by the end of this lesson, you'll be able to:

* Group rows into subgroups using the MySQL `GROUP BY` clause
* Utilize the MySQL `GROUP BY` clause with SQL **aggregate functions**

## **Understanding `GROUP BY`**

So before you begin helping Lucky Shrub, let's take a moment to find out what database developers mean by the term `GROUP BY`. **The `GROUP BY` clause is used in SQL syntax to group rows in a table *based on given columns* into *summary rows*, also known as *subgroups*.**

To get a better understanding of this clause, let's look at the syntax.

```sql
SELECT column1
FROM table_name
GROUP BY column1;
```

The syntax begins with a `SELECT` statement, followed by the name of the ***required column***. The `FROM` clause is then added and targets the name of the table that holds the required column. Finally, there's the `GROUP BY` clause. After this clause, a list of column names are added, each one separated by a comma. These are the columns according to which the data must be grouped.

If there is a `WHERE` clause in your `SELECT` statement, then the `GROUP BY` clause must be placed after this clause. And make sure that the columns listed in the `SELECT` clause include the columns listed in the `GROUP BY` clause.

## **`GROUP BY` with Aggregate Functions**

Additionally, the `GROUP BY` clause is **also frequently used with aggregate functions**. An aggregate function can be used with the `GROUP BY` clause to **perform one or more calculations and return a single value for each subgroup.**

You might be familiar with aggregate functions from previous lessons, but if not, don't worry. Here's a quick recap of the main aggregate functions used by database developers with the `GROUP BY` clause:

- `SUM()` — Adds values of given columns together and returns a single value
- `AVG()` — Determines the average of column values
- `MAX()` — Returns the maximum value of one or more given columns
- `MIN()` — Determines the minimum value of one or more given columns
- `COUNT()` — Counts the number of instances that a given column value occurs

Let's review the syntax of the `SELECT` statement when using the `GROUP BY` clause with an aggregate function:

```sql
SELECT column1, AGGREGATE_FUNCTION(column2)
FROM table_name
GROUP BY column1;
```

1. Input a `SELECT` statement followed by a list of columns.
2. Apply the aggregate function on any of these columns as required (e.g., `MAX(column1)`)
3. Include the `FROM` clause and the name of the table.
4. Include the `GROUP BY` clause followed by the names of the columns by which the data should be grouped.

Make sure that these same columns are also present in the `SELECT` column list.

## **Example Use Case: Lucky Shrub Orders**

Lucky Shrub can make use of the `GROUP BY` syntax and aggregate functions **to determine the total number of orders received by each department in the business.**

The table contains five columns:

- `Order ID`
- `Department`
- `Order Date`
- `Order Quantity`
- `Order Total`

There are multiple records with the same value for the `Department` column. For example, there were five orders placed with the Lawn Care department. This means that there are a total of five records for the Lawn care department, and there are more instances of multiple records with the same value for other departments like decking.

### **Grouping by Department**

The best approach is for Lucky Shrub to group all these records so that they have just one row for each department (group). This will make it much easier to analyze the data and produce summaries.

You can help them to reduce the departments into five groups or subgroups using the `GROUP BY` clause:

```sql
SELECT `department` AS "Department"
FROM `orders`
GROUP BY `department`;
```

In the output that's returned, all records in the `Department` column have been reduced to five groups—one row or one single record for each department in the business.

## **Adding Aggregate Functions**

Now that you have simplified the table, you can use aggregate functions to analyze the data.

### **Counting Orders**

Lucky Shrub's report must show the number of orders placed with each department. You can use the `COUNT` function to produce this data:

```sql
SELECT `department` AS "Department", COUNT(`order_qty`) AS "Total Order Quantity"
FROM `orders`
GROUP BY `department`;
```

The output returns the five departments alongside the total number of orders placed with each.

### **Summing Order Totals**

Next, let's find out how much money each department made from these orders. Use the `SUM` aggregate function with the `orderTotal` column:

```sql
SELECT `department` AS "Department", COUNT(`order_qty`) AS "Total Order Quantity",
		SUM(`order_total`) AS "Total Order Price"
FROM `orders`
GROUP BY `department`;
```

The output returns the total sum of the selected numeric column. It adds the values in the `order_total` column for each instance of each department.

### **Finding Minimum Order Quantities**

Now let's determine the minimum order quantities for each department:

```sql
SELECT `department` AS "Department", COUNT(`order_qty`) AS "Total Order Quantity",
		SUM(`order_total`) AS "Total Order Price", MIN(`order_qty`) AS "Minimum Order Quantity"
FROM `orders`
GROUP BY `department`;
```

The output returns the smallest value of the column.

### **Calculating Average Order Totals**

Finally, Lucky Shrub also need the average order total for each department:

```sql
SELECT `department` AS "Department", COUNT(`order_qty`) AS "Total Order Quantity",
		SUM(`order_total`) AS "Total Order Price", MIN(`order_qty`) AS "Minimum Order Quantity",
        AVG(`order_total`) AS "Average Total Order Price"
FROM `orders`
GROUP BY `department`;
```

The output that's returned shows the average value of the `orderTotal` column.

Thanks to your help, Lucky Shrub now have a summary that shows all the relevant data from the `order` table grouped together as required.

Having proved your skills with Lucky Shrub, you should now be able to:

* Group rows into subgroups using the MySQL `GROUP BY` clause
* Use the clause with SQL aggregate functions

Well done.
