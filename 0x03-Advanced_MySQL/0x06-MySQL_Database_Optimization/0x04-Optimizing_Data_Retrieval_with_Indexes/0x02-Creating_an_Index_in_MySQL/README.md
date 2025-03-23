## **Creating an Index in MySQL**

### **Syntax for Creating an Index**  

```sql
CREATE INDEX `idx_column_name`  
ON `table_name`(`column_name`);
```

### **Breaking Down the Syntax**  

  1. **`CREATE INDEX`** → Creates a new index.  
  2. **`idx_column_name`** → A descriptive name for the index (e.g., prefix with `idx_`).  
  3. **`ON table_name (column_name)`** → Specifies the table and column for indexing.  

You can **create an index on one or more columns**, but **only index columns** that are frequently used in **search queries**.  

⚠️ **Why?** Because updating or inserting data **also updates the index**, which **adds overhead**.  

### **Optimizing *Lucky Shrub’s* Query with an Index**

Lucky Shrub needs to **find the contact number** for the client **Jane Delgado**.  

- The **clients table** has **many names**, making the search slow.  
- MySQL **scans all rows** until it finds **Jane Delgado**.  

#### **Analyzing Query Performance with `EXPLAIN`**  

Before optimizing the query, let's analyze how MySQL executes it.  

```sql
EXPLAIN  
SELECT `contact_number`  
FROM `clients`  
WHERE `full_name` = 'Jane Delgado';
```

🔍 **Results from `EXPLAIN`**:  
   
  - MySQL **scanned 10 rows** before finding a match.  
  - The **`possible_keys` column is NULL**, meaning **no index was used**.  

### **The Solution: Creating a Secondary Index**  

To speed up the query, *Lucky Shrub* can **create an index on the `full_name` column**.  

```sql
CREATE INDEX `idx_full_name`  
ON `clients`(`full_name`);
```

### **Testing the Optimized Query**  

After creating the index, let's **run `EXPLAIN` again**:  

```sql
EXPLAIN  
SELECT `contact_number`  
FROM `clients`  
WHERE `full_name` = 'Jane Delgado';
```

🔍 **New Results from `EXPLAIN`**:  
- MySQL **only scans 1 row** instead of 10.  
- The **`possible_keys` column now lists `idx_full_name`**, meaning MySQL **used the index**.  

### **Conclusion**

You should now be able to:  

  ✅ **Explain what an index is**  
  ✅ **Outline the differences between primary and secondary indexes**  
  ✅ **Describe the process of creating an index**  
  ✅ **Optimize MySQL SELECT queries using indexes**  

By using indexes, *Lucky Shrub* can **retrieve data faster**, reducing **query execution time** and **database load**.
