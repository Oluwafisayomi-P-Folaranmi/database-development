DROP DATABASE IF EXISTS `luckyshrub_restaurant_new_db`;
CREATE DATABASE `luckyshrub_restaurant_new_db`;
USE `luckyshrub_restaurant_new_db`;

-- Create the `employees_contact_info` table
CREATE TABLE `employees_contact_info` (
    `employee_id` INT PRIMARY KEY,
    `contact_number` VARCHAR(15),
    `email_address` VARCHAR(100)
);
