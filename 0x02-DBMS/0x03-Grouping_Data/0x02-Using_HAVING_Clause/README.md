# **MySQL `HAVING`**

At this stage of the course, you may be familiar with the `GROUP BY` clause, having helped Lucky Shrub group data from their customer orders in an earlier video. Lucky Shrub now need to filter this grouped data against a list of conditions to determine the best-performing departments in the business. They can use the MySQL `HAVING` clause to specify filter conditions that will generate this data.

Over the next few minutes, you'll explore the `HAVING` clause so that you can help Lucky Shrub. By the end of this lesson, you'll be able to identify the MySQL `HAVING` clause and explain its purpose, and demonstrate the use of the `HAVING` clause to specify a filter condition for groups of rows.

## **What is the `HAVING` Clause?**

What is the `HAVING` clause and what does it add to your grouping data skill set? **The `HAVING` clause is used in a SQL statement to specify a filter condition for the group data that the `GROUP BY` clause generates.** Let's take a moment to review the syntax for this clause, starting with a quick recap of the syntax of a typical SQL statement.

As you learned in previous lessons, the `WHERE` clause is used in a `SELECT` statement to specify one or more filter conditions. You must place a `WHERE` clause before the use of the `GROUP BY` clause. **However, the `WHERE` clause can't be used to specify a filter condition for the grouped data that the `GROUP BY` clause generates. So how do you filter this data? You can add the `HAVING` clause to your SQL statement.**

```sql
SELECT column1, AGGREGATE_FUNCTION(column2)
FROM table_name
GROUP BY column1
HAVING AGGREGATE_FUNCTION(column2) condition;
```

The `HAVING` clause is added after the `GROUP BY` clause. The `HAVING` clause is used to specify the filter condition that needs to be applied to your grouped data. **The `HAVING` clause evaluates the *group filter condition* against each group returned by the `GROUP BY` clause.** If the result is true, the row is included in the result set.

However, don't forget that if you omit the `GROUP BY` clause, then the `HAVING` clause behaves just like the `WHERE` clause.

## **A Basic Example**

Let's take a quick look at a basic example of the `HAVING` clause. Lucky Shrub can use the `HAVING` clause with aggregate functions to determine which of their departments received orders of a certain dollar amount. Now it's time to use your new `HAVING` clause knowledge to assist Lucky Shrub.

As you discovered earlier, Lucky Shrub needs to filter their customer order data to check which departments met their monthly sales target of $510. Let's see if you can help them out.

### **Reviewing the `orders` Table**

Let's begin with a review of the `orders` table, which holds the required data. The table is divided into five columns:

- `OrderID`
- `Department`
- `OrderDate`
- `OrderQuantity`
- `OrderTotal`

The first task is to identify which departments have order totals of a value greater than $510. You're only concerned with the `Department` and `OrderTotal` columns.

### **Grouping Data First**

You can determine the order total of each department by using a `SELECT` statement with a `GROUP BY` clause:

```sql
SELECT `department` AS "Department", SUM(`order_total`) AS "Total Order Price"
FROM `orders`
GROUP BY `department`;
```

1. First type the `SELECT` clause followed by the `Department` column.
2. Then include the `SUM` aggregate function and place the `OrderTotal` column in parentheses.
3. Next, add the `FROM` keyword followed by the table name, which is `orders`.
4. Finally, include the `GROUP BY` clause targeting the `Department` column.

Run the statement to retrieve an output that shows the total sales figures for each of the five departments.

### **Filtering Grouped Data**

Your next step is to filter this data to retrieve the results that have an order total value greater than $510. You can use the same statement as before, but this time add the `HAVING` clause after the `GROUP BY` clause.

```sql
SELECT `department` AS "Department", SUM(`order_total`) AS "Total Order Price"
FROM `orders`
GROUP BY `department`
HAVING SUM(`order_total`) > 510;
```

- The `HAVING` clause is followed by a second instance of the `SUM` aggregate function, which once again targets the `OrderTotal` column.
- Then use the greater-than operator followed by the figure `510`.

This instructs the SQL statement to filter results greater than $510.

### **Using Aliases for Readability**

This SQL statement is now ready to execute. However, you could make the syntax more efficient by using an alias. You should be familiar with the concept of an alias from previous lessons.

```sql
SELECT `department` AS "Department", SUM(`order_total`) AS `Total Order Price`
FROM `orders`
GROUP BY `department`
HAVING `Total Order Price` > 510;
```

- You can use an alias called `Total Order Price` in the `SELECT` clause for the aggregate function.
- This alias can then be referred to in the `HAVING` clause.

This makes the condition concise and easier to read. Now you can execute the query.

## **Summary**

You should now be able to:

- Identify the MySQL `HAVING` clause and explain its purpose
- Demonstrate the use of the `HAVING` clause to specify a filter condition for groups of rows

You're making great progress with grouping data.
