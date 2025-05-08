CREATE DATABASE IF NOT EXISTS `ecommerce_db`;
USE `ecommerce_db`;

DROP TABLE IF EXISTS `orders`;
-- or, clear existing data
-- DELETE FROM Orders;

CREATE TABLE `orders` (
    `id` INT,
    `client_id` VARCHAR(10),
    `product_id` VARCHAR(10),
    `quantity` INT,
    `cost` DECIMAL(10, 2),
    CONSTRAINT `pk_orders` PRIMARY KEY (`id`)
);

-- Insert extended test data
INSERT INTO `orders`
	(`id`, `client_id`, `product_id`, `quantity`, `cost`)
VALUES
	(1, 'Cl1', 'P1', 3, 200.00),    
	(2, 'Cl2', 'P2', 1, 100.00),    
	(3, 'Cl3', 'P1', 5, 300.00),    
	(4, 'Cl3', 'P3', 2, 80.00),     
	(5, 'Cl4', 'P2', 4, 700.00),    
	(6, 'Cl5', 'P1', 1, 40.00),     
	(7, 'Cl3', 'P2', 3, 150.00),    
	(8, 'Cl6', 'P4', 2, 50.00),     
	(9, 'Cl2', 'P5', 1, 250.00),    
	(10, 'Cl1', 'P2', 2, 749.99),   
	(11, 'Cl2', 'P1', 3, 800.00),   
	(12, 'Cl3', 'P1', 1, 90.00);   
