CREATE DATABASE IF NOT EXISTS `luckyshrub_db`;
USE `luckyshrub_db`;

-- Create full-time employees table
CREATE TABLE `full_time_employees` (
    `employee_id` INT PRIMARY KEY,
    `full_name` VARCHAR(100),
    `contact_number` VARCHAR(20),
    `location` VARCHAR(100)
);

-- Create part-time employees table
CREATE TABLE `part_time_employees` (
    `employee_id` INT PRIMARY KEY,
    `full_name` VARCHAR(100),
    `contact_number` VARCHAR(20),
    `location` VARCHAR(100)
);

-- Insert sample data into full-time employees
INSERT INTO `full_time_employees`
	(`employee_id`, `full_name`, `contact_number`, `location`) 
VALUES
	(101, 'Julia Marr', '08011112222', 'Ibadan'),
	(102, 'John Smith', '08022223333', 'Lagos'),
	(103, 'Alice Johnson', '08033334444', 'Abuja'),
	(104, 'Mike Bayo', '08044445555', 'Abeokuta');

-- Insert sample data into part-time employees
INSERT INTO `part_time_employees` 
	(`employee_id`, `full_name`, `contact_number`, `location`) 
VALUES
	(201, 'Julia Marr', '08111112222', 'Ibadan'),
	(202, 'Sandra Ike', '08122223333', 'Lagos'),
	(203, 'David Obi', '08133334444', 'Kaduna'),
	(204, 'Chioma Oke', '08144445555', 'Port Harcourt');
