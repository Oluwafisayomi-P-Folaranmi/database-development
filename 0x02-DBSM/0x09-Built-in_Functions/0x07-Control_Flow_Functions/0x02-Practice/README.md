## **Practice**

### **5. Control Flow Functions in MySQL (With E-Commerce Use Cases)**  

| **Function** | **Description** | **E-Commerce Use Case** | **Example** |
|-------------|---------------|--------------------|-----------|
| `IF(condition, true_value, false_value)` | Returns a value based on condition | Label orders as "High Value" if above $500 | `SELECT order_id, IF(total_price > 500, 'High Value', 'Regular') AS order_type FROM orders;` |
| `CASE WHEN ... THEN ... ELSE ... END` | Multi-condition logic | Categorize customers based on order count | ```SELECT user_id, CASE WHEN order_count > 50 THEN 'VIP' WHEN order_count BETWEEN 10 AND 50 THEN 'Regular' ELSE 'New' END AS customer_tier FROM (SELECT user_id, COUNT(*) AS order_count FROM orders GROUP BY user_id) AS order_summary;``` |

---