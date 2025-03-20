## **Practice**

### **4. Aggregate Functions in MySQL (With E-Commerce Use Cases)**  

| **Function** | **Description** | **E-Commerce Use Case** | **Example** |
|-------------|---------------|--------------------|-----------|
| `COUNT(*)` | Counts rows in a result set | Count number of orders in a day | `SELECT COUNT(*) FROM orders WHERE order_date = CURDATE();` |
| `SUM(column)` | Sums up a column | Calculate total revenue for the day | `SELECT SUM(total_price) FROM orders WHERE order_date = CURDATE();` |
| `AVG(column)` | Calculates average value | Find the average product price | `SELECT AVG(price) FROM products;` |
| `MIN(column)`, `MAX(column)` | Finds min/max value | Get the lowest and highest order values today | `SELECT MIN(total_price), MAX(total_price) FROM orders WHERE order_date = CURDATE();` |
| `GROUP_CONCAT(column)` | Concatenates values into one | Display all product categories a user has purchased from | `SELECT user_id, GROUP_CONCAT(DISTINCT category) FROM orders JOIN products ON orders.product_id = products.id GROUP BY user_id;` |
