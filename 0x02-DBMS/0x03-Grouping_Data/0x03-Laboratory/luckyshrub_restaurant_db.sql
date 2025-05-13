CREATE DATABASE IF NOT EXISTS `luckyshrub_restaurant_db`;
USE `luckyshrub_restaurant_db`;

-- Create the `orders` table
CREATE TABLE `orders` (
  `order_id` INT PRIMARY KEY,
  `order_date` DATE,
  `department` VARCHAR(50),
  `order_total` DECIMAL(10, 2),
  `quantity` INT
);

-- Insert sample data into the `orders` table
INSERT INTO `orders` 
	(`order_id`, `order_date`, `department`, `order_total`, `quantity`)
VALUES
	(1, '2022-06-01', 'Marketing', 200.00, 3),
	(2, '2022-06-01', 'Finance', 150.00, 2),
	(3, '2022-06-02', 'Marketing', 300.00, 5),
	(4, '2022-06-03', 'HR', 250.00, 4),
	(5, '2022-06-03', 'Finance', 350.00, 1),
	(6, '2022-06-04', 'IT', 120.00, 3),
	(7, '2022-06-04', 'Marketing', 180.00, 2),
	(8, '2022-06-05', 'HR', 400.00, 6),
	(9, '2022-06-05', 'IT', 500.00, 7);
