## **Optimizing Numeric-Based Queries in MySQL**

When working with **numeric or integer-based queries**, indexing can **greatly improve performance** by reducing the number of rows MySQL needs to scan. Below is an example of how to optimize queries on an **integer column**.  

---

### **Scenario**  
Lucky Shrub's sales team needs to find **order details** based on an **order ID** from the `orders` table.  

#### **Problem: Slow Query Without an Index**  
If the `order_id` column is not indexed, MySQL must **scan all rows** before returning the result.  

```sql
EXPLAIN  
SELECT *  
FROM orders  
WHERE order_id = 12345;
```

🔍 **Result (Without Index)**:  
- **Rows scanned:** Entire table  
- **Possible keys:** NULL (no index used)  
- **Execution time:** Slow for large datasets  

---

### **Solution: Creating an Index on `order_id`**  

To speed up the query, we create an **index on `order_id`**, which is a commonly searched integer column.  

```sql
CREATE INDEX idx_order_id  
ON orders (order_id);
```

---

### **Testing the Optimized Query**  

After creating the index, **run `EXPLAIN` again**:  

```sql
EXPLAIN  
SELECT *  
FROM orders  
WHERE order_id = 12345;
```

🔍 **New Result (With Index)**:  
- **Rows scanned:** 1 (instead of the whole table)  
- **Possible keys:** `idx_order_id` (index is used)  
- **Execution time:** Much faster  

---

### **Key Takeaways for Optimizing Integer Queries**  

✅ **Use Indexes on Frequently Queried Numeric Columns**  
- Indexes help MySQL **locate values instantly** instead of scanning the table.  

✅ **Use `PRIMARY KEY` for Unique Identifiers**  
- If `order_id` is a **unique identifier**, define it as a `PRIMARY KEY`, which automatically creates an **index**:  

```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
);
```

✅ **Avoid Functions on Indexed Columns in `WHERE` Clauses**  
- A query like:  
  ```sql
  WHERE order_id + 1 = 12346
  ```
  **prevents MySQL from using the index**. Instead, write:  
  ```sql
  WHERE order_id = 12345
  ```

✅ **Use `BETWEEN` Instead of `>` and `<` for Ranges**  
- Instead of:  
  ```sql
  WHERE order_id > 1000 AND order_id < 5000
  ```
  Use:  
  ```sql
  WHERE order_id BETWEEN 1000 AND 5000
  ```
  This allows MySQL to use **range index scans**, improving performance.  

---

### **Final Thoughts**  
By using **indexes** and **avoiding unnecessary calculations** in `WHERE` clauses, **numeric queries** can run **significantly faster**. 🚀
