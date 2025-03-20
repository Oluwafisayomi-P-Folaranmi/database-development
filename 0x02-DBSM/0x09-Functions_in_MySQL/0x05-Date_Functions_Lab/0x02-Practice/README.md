## **Practice**

### **3. Date and Time Functions in MySQL (With E-Commerce Use Cases)**  

| **Function** | **Description** | **E-Commerce Use Case** | **Example** |
|-------------|---------------|--------------------|-----------|
| `NOW()` | Returns current timestamp | Track when orders were placed | `SELECT order_id, NOW() AS order_time FROM orders;` |
| `CURDATE()`, `CURTIME()` | Returns current date/time | Check daily sales summary | `SELECT COUNT(*) FROM orders WHERE order_date = CURDATE();` |
| `DATE_FORMAT(date, format)` | Formats a date | Display order date in user-friendly format | `SELECT DATE_FORMAT(order_date, '%M %d, %Y') FROM orders;` |
| `DATEDIFF(date1, date2)` | Finds difference between dates | Calculate number of days left for delivery | `SELECT DATEDIFF(estimated_delivery, NOW()) AS days_remaining FROM orders;` |
| `TIMESTAMPDIFF(unit, start, end)` | Difference between two timestamps | Find how long a customer has been active | `SELECT TIMESTAMPDIFF(YEAR, registration_date, NOW()) AS customer_age FROM users;` |
