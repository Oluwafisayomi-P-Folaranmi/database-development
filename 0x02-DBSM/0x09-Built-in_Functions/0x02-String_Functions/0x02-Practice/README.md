## **Practice**

### **1. String Functions in MySQL (With E-Commerce Use Cases)**  

| **Function** | **Description** | **E-Commerce Use Case** | **Example** |
|-------------|---------------|--------------------|-----------|
| `LENGTH(str)` | Returns string length in bytes | Check if a product description is too long | `SELECT LENGTH(product_description) FROM products WHERE product_id = 1;` |
| `CHAR_LENGTH(str)` | Returns string length in characters | Validate username length in sign-up forms | `SELECT CHAR_LENGTH(username) FROM users WHERE user_id = 5;` |
| `CONCAT(str1, str2, ...)` | Combines multiple strings | Generate product names dynamically | `SELECT CONCAT(brand, ' ', model) AS full_product_name FROM products;` |
| `LOWER(str)`, `UPPER(str)` | Converts string to lowercase/uppercase | Standardize email addresses before storing | `SELECT LOWER(email) FROM users;` |
| `SUBSTRING(str, pos, len)` | Extracts part of a string | Get the first few characters of product titles for a preview | `SELECT SUBSTRING(product_name, 1, 20) AS short_name FROM products;` |
| `REPLACE(str, from_str, to_str)` | Replaces occurrences of a substring | Replace old brand names with new ones | `UPDATE products SET product_name = REPLACE(product_name, 'OldBrand', 'NewBrand');` |
| `TRIM(str)` | Removes spaces from both sides of a string | Ensure clean product SKUs with no leading/trailing spaces | `SELECT TRIM(sku) FROM products;` |
