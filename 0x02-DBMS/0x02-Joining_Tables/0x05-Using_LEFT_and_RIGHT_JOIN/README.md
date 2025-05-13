# **Using `LEFT` and `RIGHT JOIN`s**

## **Using `LEFT JOIN`**

A `LEFT JOIN` (or **LEFT OUTER JOIN**) in SQL is used to combine records from two tables. It returns:

- **All rows from the left table**, and
- **Matching rows from the right table**, or
- **NULLs** if there’s **no match** in the right table.

Lucky Shrub need to review data on orders made by their clients. This data exists in two separate tables, clients and orders. Lucky Shrub can query data from both tables using the left and right join clauses in MySQL. These clauses will work because both tables share several closely connected columns. In this lesson, you'll help Lucky Shrub use the `LEFT` and `RIGHT JOIN` clauses.

By the end, you'll be able to demonstrate how to apply a left join and right join in MySQL and utilize aliases to create temporary columns and table names.

Let's quickly review the two tables before creating the query.

- The `clients` table contains four columns:
  1. `customer_id`
  2. `full_name`
  3. `contact_number`
  4. `address`

- The `orders` table contains five columns:
  1. `order_id`
  2. `client_id`
  3. `product_id`
  4. `quantity`
  5. `cost`

The first step is to create a query for the `client_id` and `full_name` columns within the `clients` table, which is **the left table**. Then you must create a join with the following columns from the `orders` table, **the right table**: `order_id`, `quantity`, and `cost`. You can use the `LEFT JOIN` clause in the SQL statement to complete this task.

You can do this with the following SQL statement:

```sql
SELECT `c`.`client_id` AS "Id", `c`.`full_name` AS "Full Name",
       `o`.`order_id` AS "Order ID", `o`.`quantity` AS "Quantity", `o`.`cost` AS "Cost"
FROM `clients` AS c
LEFT JOIN `orders` AS o
ON `c`.`client_id` = `o`.`client_id`;
```

To start, use the `SELECT` command to retrieve data followed by the columns `client_id` and `full_name` attached to the `clients` table, separated by a dot. This syntax retrieves data from the two columns in the `clients` table. This data then joins the `order_id`, `quantity`, and `cost` columns from the `orders` table.

As you're probably already aware, it's important to specify the table name of each column when dealing with multiple tables in the same statement. This is especially important when the column name is used in more than one of the query tables. For example, the client ID column exists in both the clients and orders tables.

You can also use the SQL `AS` keyword to create suitable aliases for the column names when displayed in the output result set. You can use the `AS` keyword to create aliases for the two tables as follows: `C` for `clients` and `O` for `orders`. This now means that instead of repeatedly typing `clients` to specify the column source table, you can just use `C`, and instead of using the word `orders`, you can write `O`.

In this statement, the `LEFT JOIN` clause creates a new row of data for each matching record from the left table, the `clients` table. It does this even if there are no matching records in the `orders` table, which is the right table. For example, the clients with IDs `CL3` and `CL5` are yet to place any orders. This means that no values will be inserted for related columns from the right table.

Finally, press Enter to execute the query. The output result table contains several NULL values for the clients with IDs of CL3 and CL5. This is because they have not yet made any orders.

## **Using `RIGHT JOIN`**

Right JOIN extracts or selects records of data from the right table, and matching records from the left table. The right table is the main target table. A **`RIGHT JOIN`** returns:

- **All records from the right table**,  
- **And the matching records from the left table**,  
- If **there is no match**, the result is `NULL` on the side of the left table.

Next, let's create a similar query using the `RIGHT JOIN` concept. You can use similar syntax to the previous query. Just replace the `LEFT` keyword with the `RIGHT` keyword. In this statement, `clients` represents the left table and `orders` represents the right table. The `RIGHT JOIN` clause extracts data from both tables based on the `client_id` values—just like the previous example.

You can do this with the following SQL statement:

```sql
SELECT `c`.`client_id` AS "Id", `c`.`full_name` AS "Full Name",
       `o`.`order_id` AS "Order ID", `o`.`quantity` AS "Quantity", `o`.`cost` AS "Cost"
FROM `clients` AS c
RIGHT JOIN `orders` AS o
ON `c`.`client_id` = `o`.`client_id`;
```

Executing this query should return all requested information from the orders table (right table) joined by the requested information from the clients table (left table) based on the common column client ID. Press "Enter" to run the query and create the output.

The output shows that the `RIGHT JOIN` has returned all records from the right or `orders` table where a client has made an order. It extracted the matching records from the left or `clients` table based on the `client_id` values. No `NULL` values were printed in the output result table. This is because all clients who made orders already exist in the `clients` table.

Lucky Shrub now have the order and client information they need. And you should now be able to demonstrate how to apply a `LEFT JOIN` and `RIGHT JOIN` in MySQL and utilize aliases to create temporary column and table names. Good work.
