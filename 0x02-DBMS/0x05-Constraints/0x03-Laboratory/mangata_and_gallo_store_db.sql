DROP DATABASE IF EXISTS `little_lemon_restaurant_db`;
CREATE DATABASE `little_lemon_restaurant_db`;
USE `little_lemon_restaurant_db`;

CREATE TABLE `staffs` (
	`staff_id` INT AUTO_INCREMENT NOT NULL,
    `full_name` VARCHAR(100) NOT NULL,
    `phone_number` INT UNIQUE NOT NULL,
    CONSTRAINT `pk_staffs` PRIMARY KEY (`staff_id`)
);

CREATE TABLE `contracts_infos` (
	`contract_id` INT AUTO_INCREMENT NOT NULL,
    `staff_id` INT NOT NULL,
    `salary` DECIMAL(7, 2) NOT NULL,
    `location` VARCHAR(50) NOT NULL DEFAULT 'Texas',
    `staff_type` VARCHAR(50) NOT NULL,
    CONSTRAINT `pk_contracts_infos` PRIMARY KEY (`contract_id`),
    CONSTRAINT `chk_staff_type` CHECK (`staff_type` IN ('Junior', 'Senior')), -- or `CHECK (StaffType = "Junior" OR StaffType = "Senior"))`
    CONSTRAINT `chk_staff_id` CHECK (`staff_id` BETWEEN 1 AND 15),
    CONSTRAINT `fk_contracts_infos_staffs` FOREIGN KEY (`staff_id`) REFERENCES `staffs`(`staff_id`)
);
