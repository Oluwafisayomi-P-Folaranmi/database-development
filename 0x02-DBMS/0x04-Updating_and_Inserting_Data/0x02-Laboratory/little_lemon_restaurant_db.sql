DROP DATABASE IF EXISTS `little_lemon_restaurant_db`;
CREATE DATABASE `little_lemon_restaurant_db`;
USE `little_lemon_restaurant_db`;

CREATE TABLE `starters` (
    `starter_name` VARCHAR(100) PRIMARY KEY,
    `cost` DECIMAL(6, 2),
    `starter_type` VARCHAR(50) DEFAULT 'Mediterranean'
);
