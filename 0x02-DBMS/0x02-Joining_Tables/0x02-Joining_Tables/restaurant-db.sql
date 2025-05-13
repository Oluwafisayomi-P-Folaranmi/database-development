DROP DATABASE IF EXISTS `restaurant_db`;
CREATE DATABASE `restaurant_db`;
USE `restaurant_db`;

-- Create the customers table
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

-- Create the orders table
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    order_total DECIMAL(10, 2),
    customer_id INT,
    CONSTRAINT `fk_orders_customers` FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- Insert data into customers table
INSERT INTO customers
VALUES
    (1, 'Michael', 'Jordan', 'mjordan@example.com'),
    (2, 'Serena', 'Williams', 'swilliams@example.com'),
    (3, 'Roger', 'Federer', 'rfederer@example.com'),
    (4, 'Tiger', 'Woods', 'twoods@example.com');

-- Insert data into orders table
INSERT INTO orders
VALUES
    (1, '2024-09-01', 250.00, 1),
    (2, '2024-09-01', 250.00, 1),
    (3, '2024-09-01', 250.00, 1),        
    (4, '2024-09-03', 150.00, 2),
    (5, '2024-09-05', 350.00, 3),
    (6, '2024-09-06', 100.00, 4);
