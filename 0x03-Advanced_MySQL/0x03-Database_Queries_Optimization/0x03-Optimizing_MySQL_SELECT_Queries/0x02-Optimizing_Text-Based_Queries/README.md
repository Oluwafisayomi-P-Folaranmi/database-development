## **Optimizing Text-Based Queries**

The **sales department's next task** is to process an order for a customer with the **surname "Ito"**.  

A common approach is to use `LIKE` with a **leading wildcard**, but this **prevents MySQL from using indexes**, slowing down searches.  

### **❌ Bad Practice (Using Leading Wildcard)**

```sql
SELECT *
FROM `clients`  
WHERE `full_name` LIKE '%Ito%';
```

### **✅ Optimized Approach**

A better solution is to:  

  1. **Create a new column** (`reverse_full_name`) where the surname appears first.  
  2. **Update** the column with reversed names.  
  3. **Create an index** on the new column.  
  4. **Use a trailing wildcard (`LIKE 'Ito%'`)**, allowing MySQL to use the index.  

```sql
ALTER TABLE `clients`
ADD COLUMN `reverse_full_name` VARCHAR(255);

UPDATE `clients`  
SET `reverse_full_name` = CONCAT(last_name, ' ', first_name);  

CREATE INDEX `idx_reverse_name`
ON `clients`(`reverse_full_name`);  

SELECT * FROM clients  
WHERE `reverse_full_name` LIKE 'Ito%';
```

This method **preserves index usage**, making the query **much faster**.
