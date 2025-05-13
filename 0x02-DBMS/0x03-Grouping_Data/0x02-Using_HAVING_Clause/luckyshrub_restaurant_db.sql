CREATE DATABASE IF NOT EXISTS `luckyshrub_restaurant_db`;
USE `luckyshrub_restaurant_db`;

-- Create the `orders` table
CREATE TABLE `orders` (
  `order_id` INT PRIMARY KEY,
  `department` VARCHAR(50),
  `order_date` DATE,
  `order_qTY` INT,
  `order_total` DECIMAL(10, 2)
);

-- Insert sample data into the `orders` table
INSERT INTO `orders` 
	(`order_id`, `department`, `order_date`, `order_qTY`, `order_total`) 
VALUES
	(1, 'Lawn Care', '2024-01-10', 3, 150.00),
	(2, 'Decking', '2024-01-11', 2, 200.00),
	(3, 'Lawn Care', '2024-01-12', 1, 50.00),
	(4, 'Garden Supplies', '2024-01-13', 5, 75.00),
	(5, 'Decking', '2024-01-14', 3, 300.00),
	(6, 'Outdoor Furniture', '2024-01-15', 2, 500.00),
	(7, 'Lawn Care', '2024-01-16', 4, 120.00),
	(8, 'Decking', '2024-01-17', 1, 100.00),
	(9, 'Garden Supplies', '2024-01-18', 2, 60.00),
	(10, 'Lawn Care', '2024-01-19', 2, 80.00),
	(11, 'Decking', '2024-01-20', 2, 150.00),
	(12, 'Outdoor Furniture', '2024-01-21', 1, 250.00),
	(13, 'Lawn Care', '2024-01-22', 3, 110.00),
	(14, 'Garden Supplies', '2024-01-23', 4, 90.00),
	(15, 'Decking', '2024-01-24', 2, 180.00);
