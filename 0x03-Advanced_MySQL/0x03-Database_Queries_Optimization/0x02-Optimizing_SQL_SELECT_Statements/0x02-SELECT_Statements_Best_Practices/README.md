## **SELECT Statements Best Practices** 

Here are some **best practices** for optimizing `SELECT` queries:  

  1. **Target only required columns** in the `SELECT` clause
  2. **Avoid using functions in predicates**
  3. **Avoid using a leading wildcard in predicates**
  4. **Use INNER JOIN where possible**
  5. **Use DISTINCT and UNION clauses only when necessary**  

Let's explore these guidelines with examples.  

### **Target Only Required Columns**

When querying a table, you might be tempted to use an **asterisk (`*`)** in your `SELECT` statement to extract **all available data**.  

Example (❌ **Bad Practice**):

```sql
SELECT * FROM `orders`;
```

This approach **adds extra load** on the database and slows down performance, especially if you only need data from **specific columns**.  

Example (✅ **Optimized Query**):

```sql
SELECT  `order_id`, `customer_name`, `total_price` FROM `orders`;
```

This method helps **Lucky Shrub** retrieve only the required data **faster**.  

### **Avoid Using Functions in Predicates**

A **predicate** is an expression that returns a **true** or **false** value (e.g., **`WHERE` clause conditions**).  

Using **functions** in the `WHERE` clause **on an indexed column** prevents the database from using the index, leading to **slower performance**.  

Example (❌ **Bad Practice**):

```sql
SELECT *
FROM `orders`
WHERE YEAR(`order_date`) = 2024;
```
Instead, **rewrite the condition** so the index can be used:  

Example (✅ **Optimized Query**):

```sql
SELECT *
FROM `orders`
WHERE `order_date` BETWEEN '2024-01-01' AND '2024-12-31';
```

### **Avoid Leading Wildcards in Predicates**

Using a **leading wildcard** (`%`) in the `LIKE` operator prevents **MySQL from using indexes**.  

Example (❌ **Bad Practice**):

```sql
SELECT *
FROM `customers`
WHERE name LIKE '%John%';
```

Instead, use a **trailing wildcard**:  

Example (✅ **Optimized Query**):

```sql
SELECT *
FROM `customers`
WHERE name LIKE 'John%';
```

This allows **MySQL to use indexes** for a **faster search**.  

### **Use `INNER JOIN` Instead of `OUTER JOIN` Where Possible**

An **`OUTER JOIN`** retrieves **all** records from both tables, even those without matches, which can slow down queries.  

Example (❌ **Bad Practice** - `OUTER JOIN`):  

```sql
SELECT `customers`.`name`, `orders`.`total_price`
FROM `customers`  
LEFT JOIN orders
ON `customers`.`id` = `orders`.`customer_id`;
```

An **`INNER JOIN`** retrieves only **matching records**, making it **more efficient**.  

Example (✅ **Optimized Query** - `INNER JOIN`):  

```sql
SELECT `customers`.`name`, `orders`.`total_price`
FROM `customers`  
INNER JOIN `orders`
ON `customers`.`id` = `orders`.`customer_id`;
```

This **improves performance** by reducing unnecessary data retrieval.  

### **Use `UNION ALL` Instead of `UNION`**  

When using `UNION`, MySQL must **sort and remove duplicates**, which slows down the query. 

Example (❌ **Bad Practice** - `UNION`):

```sql
SELECT `name` FROM `customers`  
UNION  
SELECT `name` FROM `suppliers`;
```

If you **don't need to remove duplicates**, use `UNION ALL`, which is **faster** because it skips the sorting operation.  

Example (✅ **Optimized Query** - `UNION ALL`):

```sql
SELECT `name` FROM `customers`  
UNION ALL
SELECT `name` FROM `suppliers`;
```
This **speeds up execution** significantly.  

### **Conclusion**

You should now understand how to **optimize MySQL `SELECT` queries** and be familiar with **basic optimization guidelines**.  

  ✅ **Target specific columns** instead of using `SELECT *`  
  ✅ **Avoid functions in predicates** to ensure indexes are used  
  ✅ **Use trailing wildcards** instead of leading wildcards in `LIKE`  
  ✅ **Use INNER JOIN instead of OUTER JOIN** where possible  
  ✅ **Use UNION ALL instead of UNION** for better performance  

By following these best practices, you can **improve query performance** and **reduce database load. Well done!**
