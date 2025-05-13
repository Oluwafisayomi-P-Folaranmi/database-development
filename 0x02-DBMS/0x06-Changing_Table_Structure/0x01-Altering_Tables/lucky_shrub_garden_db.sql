DROP DATABASE IF EXISTS `lucky_shrub_garden_db`;
CREATE DATABASE `lucky_shrub_garden_db`;
USE `lucky_shrub_garden_db`;

CREATE TABLE `machinery` (
    `employee_id` VARCHAR(10) NOT NULL,
    `full_name` VARCHAR(100),
    `phone_number` INT UNIQUE,
    `county` VARCHAR(50)
);
