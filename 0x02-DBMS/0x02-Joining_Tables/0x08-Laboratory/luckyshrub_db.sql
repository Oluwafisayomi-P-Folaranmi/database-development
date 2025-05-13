CREATE DATABASE IF NOT EXISTS `luckyshrub_db`;
USE `luckyshrub_db`;

-- Create `customers` table
CREATE TABLE `customers` (
    `customer_id` INT PRIMARY KEY,
    `full_name` VARCHAR(100),
    `phone_number` VARCHAR(20)
);

-- Create `bookings` table
CREATE TABLE `bookings` (
    `booking_id` INT PRIMARY KEY,
    `customer_id` INT,
    `booking_date` DATE,
    `number_of_guests` INT,
    FOREIGN KEY (`customer_id`) REFERENCES `customers`(`customer_id`)
);

-- Insert data into `customers` table
INSERT INTO `customers`
	(`customer_id`, `full_name`, `phone_number`) 
VALUES
	(1, 'John Doe', '08012345678'),
	(2, 'Jane Smith', '08087654321'),
	(3, 'Alice Johnson', '08123456789');

-- Insert data into `bookings` table
INSERT INTO `bookings`
	(`booking_id`, `customer_id`, `booking_date`, `number_of_guests`) 
VALUES
	(101, 1, '2025-05-01', 4),
	(102, 2, '2025-05-02', 2);
