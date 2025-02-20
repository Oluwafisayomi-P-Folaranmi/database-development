DROP DATABASE IF EXISTS `restaurant-db`;

CREATE DATABASE `restaurant-db`;
USE `restaurant-db`;


-- Create the customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

-- Create the orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_total DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
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
    (1001, 1, '2024-09-01', 250.00),
    (1002, 1, '2024-09-01', 250.00),
    (1003, 1, '2024-09-01', 250.00),        
    (1004, 2, '2024-09-03', 150.00),
    (1005, 3, '2024-09-05', 350.00),
    (1006, 4, '2024-09-06', 100.00);
