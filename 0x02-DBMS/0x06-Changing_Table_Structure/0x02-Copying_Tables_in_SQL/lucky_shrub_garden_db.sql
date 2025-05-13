DROP DATABASE IF EXISTS `lucky_shrub_garden_db`;
CREATE DATABASE `lucky_shrub_garden_db`;
USE `lucky_shrub_garden_db`;

CREATE TABLE `clients` (
    `client_id` INT NOT NULL PRIMARY KEY,
    `full_name` VARCHAR(100) NOT NULL,
    `phone_number` BIGINT NOT NULL UNIQUE,
    `age` INT NOT NULL CHECK(`age` >= 18)
);
