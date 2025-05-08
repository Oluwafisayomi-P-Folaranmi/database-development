DROP DATABASE IF EXISTS `luckyshrub_db`;
CREATE DATABASE `luckyshrub_db`;
USE `luckyshrub_db`;

-- Create the clients table
CREATE TABLE `clients` (
    `client_id` INT PRIMARY KEY,
    `full_name` VARCHAR(100),
    `contact_number` VARCHAR(20),
    `address` VARCHAR(255)
);

-- Create the orders table
CREATE TABLE `orders` (
    `order_id` INT PRIMARY KEY,
    `client_id` INT,
    `product_id` INT,
    `quantity` INT,
    `cost` DECIMAL(10,2),
    CONSTRAINT `fk_orders_clients` FOREIGN KEY (`client_id`) REFERENCES `clients`(`client_id`)
);

-- Insert sample data into clients table
INSERT INTO clients 
	(client_id, full_name, contact_number, address) 
VALUES
	(1, 'Alice Johnson', '08012345678', '12 Rose Street'),
	(2, 'Bob Smith', '08023456789', '45 Lavender Avenue'),
	(3, 'Catherine Lee', '08034567890', '78 Orchid Road'),
	(4, 'David Okoro', '08045678901', '33 Tulip Lane'),
	(5, 'Evelyn Mensah', '08056789012', '89 Sunflower Blvd'),
	(6, 'Frank Iwu', '08067890123', '10 Jasmine Crescent');

-- Insert sample data into orders table
INSERT INTO orders 
	(order_id, client_id, product_id, quantity, cost)
VALUES
	(101, 1, 501, 2, 40.00),
	(102, 2, 502, 1, 15.50),
	(103, 4, 503, 4, 60.00),
	(104, 6, 504, 3, 45.75);
