# Functions in MySQL


---




---


---

### **5. Control Flow Functions in MySQL (With E-Commerce Use Cases)**  

| **Function** | **Description** | **E-Commerce Use Case** | **Example** |
|-------------|---------------|--------------------|-----------|
| `IF(condition, true_value, false_value)` | Returns a value based on condition | Label orders as "High Value" if above $500 | `SELECT order_id, IF(total_price > 500, 'High Value', 'Regular') AS order_type FROM orders;` |
| `CASE WHEN ... THEN ... ELSE ... END` | Multi-condition logic | Categorize customers based on order count | ```SELECT user_id, CASE WHEN order_count > 50 THEN 'VIP' WHEN order_count BETWEEN 10 AND 50 THEN 'Regular' ELSE 'New' END AS customer_tier FROM (SELECT user_id, COUNT(*) AS order_count FROM orders GROUP BY user_id) AS order_summary;``` |

---

### **6. JSON Functions in MySQL (With E-Commerce Use Cases)**  

| **Function** | **Description** | **E-Commerce Use Case** | **Example** |
|-------------|---------------|--------------------|-----------|
| `JSON_OBJECT(key, value, ...)` | Creates a JSON object | Store product details in JSON format | `SELECT JSON_OBJECT('id', id, 'name', name, 'price', price) FROM products;` |
| `JSON_EXTRACT(json, path)` | Extracts value from JSON | Get shipping address from a JSON field | `SELECT JSON_EXTRACT(order_data, '$.shipping_address') FROM orders;` |
| `JSON_ARRAY(val1, val2, ...)` | Creates a JSON array | Store multiple product images as JSON | `UPDATE products SET images = JSON_ARRAY('img1.jpg', 'img2.jpg', 'img3.jpg') WHERE id = 1;` |

---

These MySQL functions provide powerful ways to handle data in an e-commerce system, from customer orders to product management and analytics. Let me know if you need more examples or explanations!

