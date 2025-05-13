DROP DATABASE IF EXISTS `little_lemon_restaurant_db`;
CREATE DATABASE `little_lemon_restaurant_db`;
USE `little_lemon_restaurant_db`;

CREATE TABLE `clients` (
	`client_id` INT AUTO_INCREMENT NOT NULL,
    `full_name` VARCHAR(250) NOT NULL,
    `phone_number` INT UNIQUE NOT NULL,
    CONSTRAINT `pk_clients` PRIMARY KEY (`client_id`)
);

CREATE TABLE `items` (
	`item_id` INT AUTO_INCREMENT NOT NULL,
    `item_name` VARCHAR(100) NOT NULL,
    `price` DECIMAL(6,2) NOT NULL,
    CONSTRAINT `pk_items` PRIMARY KEY (`item_id`)
);

CREATE TABLE `orders` (
	`order_id` INT AUTO_INCREMENT NOT NULL,
    `client_id` INT NOT NULL, -- foreign key
    `item_id` INT NOT NULL, -- foreign key
    `quantity` INT NOT NULL,
    `cost` INT NOT NULL,
    CONSTRAINT `pk_orders` PRIMARY KEY (`order_id`),
    CONSTRAINT `fk_orders_clients` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `fk_orders_items` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
);
