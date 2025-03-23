## **Optimizing Date-Based Queries**

The **sales department** needs to find out which orders are arriving on **September 12th**.  

One approach is to use a `SELECT` query with the **`WHERE` clause** and the `DATE_ADD` function.  

However, sorting through the data and **calculating delivery dates dynamically** in the `WHERE` clause **places a lot of extra load** on the database.  

### **❌ Bad Practice (Using `DATE_ADD` in `WHERE`)**

```sql
SELECT *
FROM `orders`  
WHERE DATE_ADD(`order_date`, INTERVAL 5 DAY) = '2024-09-12';
```

A **more efficient method** is to **store the expected delivery date** in a **custom column** (`expected_delivery_date`).  

Now, Lucky Shrub only needs to scan this column for orders matching **September 12th**, **without needing a function**.  

### **✅ Optimized Query**

```sql
SELECT * FROM orders  
WHERE expected_delivery_date = '2024-09-12';
```

This reduces **computational overhead** and speeds up the query.
