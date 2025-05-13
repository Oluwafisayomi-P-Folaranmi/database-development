# **Using `INNER JOIN`**

Lucky Shrub Gardening Center require information on orders recently made by their clients. This information is stored in two separate tables: the `clients` table and the `orders` table. But there must be a more efficient way to review this information that doesn't involve using two tables at the same time, right?

Thankfully, Lucky Shrub can use the **INNER JOIN** clause to return records of data based on a common column with matching values in both tables.

You'll help Lucky Shrub to complete this task. And by the end, you'll be able to apply the INNER JOIN concept in MySQL and **use SQL aliases to create *temporary column names***.

As you're probably aware by now, databases normally have more than one table. In fact, database normalization rules dictate that related data should be held in separate tables.

## **Reviewing the Two Tables**

Let's begin with a quick review of the two tables:

- The `clients` table has four columns:
  - `client_id`
  - `full_name`
  - `contact_number`
  - `address`

- The `orders` table has five columns:
  - `order_id`
  - `client_id`
  - `product_id`
  - `quantity`
  - `cost`

## **Task: Identify Clients Who Made Orders**

The first task is to identify the full names of all clients who made orders. You can do this using the INNER JOIN clause in a SQL `SELECT` statement.

You can do this with the following SQL statement:

```sql
SELECT `clients`.`full_name`
FROM `clients`
INNER JOIN `orders`
ON `clients`.`client_id` = `orders`.`client_id`;
```

1. The statement begins with the `SELECT` command.
2. This is followed by the column `full_name` attached to the `clients` table (i.e., `clients.full_name`).
3. Then, the `FROM` keyword is used to target the `clients` table.
4. Next, the `INNER JOIN` clause creates a new row of data for each matching record. In other words, where the `client_id` in the `clients` table matches the `client_id` in the `orders` table.
5. The `=` operator ensures the matching condition must be met.

⚠️ Remember: it's important to specify the table name of each column when you are dealing with multiple tables in the same statement. This is especially important when the column name is used in more than one of the query tables. For example, `client_id` exists in both the `clients` and the `orders` tables.

Press enter to execute the query. The output result set lists the full names for all clients that have made orders.

## **Querying Additional Data with Aliases**

This example just extracts a list of names. We can also query other information from both tables. For example, you can display the column names with more user-friendly labels if required.

You can take the `client_id`, `full_name`, and `contact_number` columns from the `clients` table and create a JOIN with the `product_id`, `quantity`, and `cost` columns from the `orders` table.

You can do this with the following SQL statement:

```sql
SELECT `c`.`client_id` AS "Id", `c`.`full_name` AS "Full Name", `c`.`contact_number` AS "Contact Number",
		`o`.`product_id` AS "Product ID", `o`.`quantity` AS "Quantity", `o`.`cost` AS "Cost"
FROM `clients` AS c
INNER JOIN `orders` AS o
ON `c`.`client_id` = `o`.`client_id`;
```

1. Start with a `SELECT` command that selects the required columns from the `clients` table.
2. Then use the `AS` keyword after each column to create an alias. In other words, create a new name for each column.
3. Do the same for the required columns on the `orders` table.

So in this statement, each column is attached to the related table name, and the alias technique is used to create new names for each column.

Click enter to execute the query. The result set is a table with all required data related to the four matching client IDs.

## **Summary**

You explored how to work with the `INNER JOIN` clause in MySQL to query data from two tables in the database. Also, you learned how to use an alias to create temporary column names that have more readable labels.

Lucky Shrub can now review the data they need using a more efficient table, thanks to the `INNER JOIN` clause. And you should now be able to apply the INNER JOIN concept in MySQL and use SQL aliases to create temporary column names. Great work!
