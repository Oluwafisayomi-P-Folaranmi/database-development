## **Optimizing JOIN Queries**

The **finance department** needs to **report on all orders placed**. They can extract this information by targeting the **products** and **orders** tables.  

A common approach is to use an **OUTER JOIN**, but this **returns unnecessary records**, increasing execution time.  

### **❌ Bad Practice (Using OUTER JOIN)** 

```sql
SELECT `products`.`name`, `orders`.`total_price`  
FROM `products`  
LEFT JOIN `orders`
ON `products`.`product_id` = `orders`.`product_id`;
```

### **✅ Optimized Query (Using INNER JOIN)** 

A **better approach** is to use an **INNER JOIN** that targets **only matching records**.  

```sql
SELECT `products`.`name`, `orders`.`total_price`  
FROM `products`  
INNER JOIN `orders`
ON `products`.`product_id` = `orders`.`product_id`;
```

This method **retrieves only the necessary data**, making the query **more efficient**.

### **Conclusion**

You should now understand how to **optimize MySQL SELECT queries** and be familiar with **basic optimization guidelines**.  

✅ **Avoid functions in the `WHERE` clause**  
✅ **Use indexes effectively**  
✅ **Avoid leading wildcards in `LIKE` statements**  
✅ **Use `INNER JOIN` instead of `OUTER JOIN` when possible**  

By following these best practices, Lucky Shrub can process data **more efficiently**, ensuring **faster database performance**.  

**Well done!**
