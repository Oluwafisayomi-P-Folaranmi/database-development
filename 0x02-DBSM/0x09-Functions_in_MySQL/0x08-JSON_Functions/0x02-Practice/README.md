## **Practice**

### **6. JSON Functions in MySQL (With E-Commerce Use Cases)**  

| **Function** | **Description** | **E-Commerce Use Case** | **Example** |
|-------------|---------------|--------------------|-----------|
| `JSON_OBJECT(key, value, ...)` | Creates a JSON object | Store product details in JSON format | `SELECT JSON_OBJECT('id', id, 'name', name, 'price', price) FROM products;` |
| `JSON_EXTRACT(json, path)` | Extracts value from JSON | Get shipping address from a JSON field | `SELECT JSON_EXTRACT(order_data, '$.shipping_address') FROM orders;` |
| `JSON_ARRAY(val1, val2, ...)` | Creates a JSON array | Store multiple product images as JSON | `UPDATE products SET images = JSON_ARRAY('img1.jpg', 'img2.jpg', 'img3.jpg') WHERE id = 1;` |
