# **Understanding SQL `JOIN`s**

Lucky Shrub Gardening Center needs to gather information on their customers and the orders they've placed. But the records are held in three different tables. However, they can extract this information from their database using the JOIN clause to join the required elements of these tables together.

Over the next few minutes, you'll discover how the JOIN clause works, and by the end of this video, you'll be able to demonstrate an understanding of the JOIN concept in a database and describe the main types of JOINs in MySQL.

Let's take a closer look at the problem that Lucky Shrub has encountered with their database tables. Lucky Shrub needs to determine what products were ordered and which customers placed the orders. However, this information exists in three separate entities or tables: `customers`, `orders`, and `products`.

So how can Lucky Shrub extract records from three different tables? Before you can begin to assist Lucky Shrub, you first need to understand the concept of JOINs.

**The SQL JOIN clause is used to query data based on a *common column* between two target tables**. For example:

- The `customers` and `orders` tables both contain a `customer_id` column.
- The `product_id` column is a common column between the `orders` and `products` tables.

These common columns can be used to join these tables together and extract the required records.

## **Types of `JOIN`s in SQL**

There are four types of `JOIN` used to combine tables:

1. **INNER JOIN**: Extracts or selects records of data that have matching values in both tables.
2. **LEFT JOIN** (*a type of outer join*): Extracts or selects records of data from the left table and all matching records from the right table. Returns all rows from the left table, even if there is no match in the right table.
3. **RIGHT JOIN** (*a type of outer join*): Extracts or selects records of data from the right table and any matching record from the left table. Returns all rows from the right table, even if there is no match in the left table.
4. **SELF JOIN**: A table is joined with itself to retrieve information that exists in the same table. It can use any type of join (e.g., INNER or OUTER).

**Note:** in SQL, the terms “left table” and “right table” refer to their position relative to the `JOIN` clause.

### **`INNER JOIN`**

**An `INNER JOIN` returns records of data that have matching values or columns in both the left and the right tables**. This relationship between the two tables can be conceptualized using a Venn diagram, as can all other JOINs.

In terms of syntax, the left and right tables are identified as `Table1` and `Table2`, respectively.

**Use Case:**  
Lucky Shrub needs to identify the full names of all clients that placed orders with the business. To complete this query, they need the `clients` table and the `orders` table. They can then create an INNER JOIN using the `client_id` column that exists in both tables. The output reveals the records of all clients who placed orders.

**INNER JOIN Syntax:**

```sql
SELECT column_name(s)
FROM Table1
INNER JOIN Table2
ON Table1.common_column = Table2.common_column;
```

### **`LEFT JOIN`**

The LEFT JOIN returns all common records in a similar way to the INNER JOIN. In addition, it returns all available records of the common column from the left table, even if there isn't a match in the right table.

**Use Case:**
Lucky Shrub can use the LEFT JOIN to extract data from the `clients` and `orders` tables using the `client_id` values. The JOIN locates four matching records between the two tables and places them in the common area of the Venn diagram.

**LEFT JOIN Syntax:**

```sql
SELECT column_name(s) AS alias
FROM Table1 AS t1
LEFT JOIN Table2 AS t2
ON t1.common_column = t2.common_column;
```

### **`RIGHT JOIN`**

The `RIGHT JOIN` returns all records from the right and left tables, but with the right table as the main target table.

**Use Case:**
Lucky Shrub can use the RIGHT JOIN to extract records of data from the `orders` and `products` tables based on the `product_id` values. This lists all products from the `products` table joined with the matching related orders details from the left table.

**`RIGHT JOIN` Syntax:**

```sql
SELECT column_name(s)
FROM Table1
RIGHT JOIN Table2
ON Table1.common_column = Table2.common_column;
```

### **`SELF JOIN`**

A `SELF JOIN` is a special case in which a table must be joined with itself. In other words, one table is treated as two in order to extract specific information from either the LEFT, RIGHT, or INNER JOIN.

**Use Case:**
Lucky Shrub holds records of all staff members in the `staff` table. The table contains records on sales floor employees and line managers. Lucky Shrub can treat the table as two tables to determine who is a line manager and who is the sales floor employee.

**`SELF JOIN` Syntax:**

```sql
SELECT A.column_name, B.column_name
FROM Table AS A
JOIN Table AS B
ON A.common_column = B.common_column;
```

You've encountered a lot of information in this lesson, particularly in terms of syntax. Don't worry if it doesn't all make sense at this stage. In the lessons that follow, you'll learn how to create each type of JOIN in more detail.

But for now, you should be able to demonstrate an understanding of the `JOIN` concept in a database and describe the main types of `JOIN`s in MySQL.
