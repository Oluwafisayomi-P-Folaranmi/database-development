CREATE DATABASE IF NOT EXISTS `luckyshrub_restaurant_db`;
USE `luckyshrub_restaurant_db`;

-- The `Food_Orders_Delivery_Status` table
CREATE TABLE `food_orders_delivery_status` (
    `order_id` INT PRIMARY KEY,
    `date_food_order_placed_with_supplier` DATE,
    `date_food_order_received_from_supplier` DATE,
    `rrder_status` VARCHAR(50)
);

-- The Data for the `Food_Orders_Delivery_Status`
INSERT INTO `food_orders_delivery_status`
VALUES 
    (1, '2022-04-05', '2022-04-05', 'Delivered'),
    (2, '2022-03-08', '2022-10-08', 'Delivered'),
    (3, '2022-05-19', NULL, 'In Progress'),
    (4, '2022-01-10', '2022-01-15', 'Delivered');

-- Create the `starters` table
CREATE TABLE `starters` (
    `starter_name` VARCHAR(255),
    `cost` DECIMAL(10, 2)
);

-- Insert data into the `starters` table
INSERT INTO `starters`
VALUES 
    ('Olives', 4.75),
    ('Flatbread', 5.00),
    ('Minestrone', 8.50),
    ('Tomato bread', 8.50),
    ('Falafel', 6.75),
    ('Hummus', 5.00);

-- Create the `courses` table
CREATE TABLE `courses` (
    `course_name` VARCHAR(255),
    `cost` DECIMAL(10, 2)
);

-- Insert data into the `courses` table
INSERT INTO `courses` 
VALUES 
    ('Greek salad', 15.50),
    ('Bean soup', 12.25),
    ('Pizza', 15.00),
    ('Carbonara', 12.50),
    ('Kabasa', 17.00);

-- Create the table
CREATE TABLE `employees` (
  `employee_id` INT PRIMARY KEY,
  `full_name` VARCHAR(100),
  `job_title` VARCHAR(50),
  `mentor_id` INT
);

-- Insert data into the table
INSERT INTO `employees` (`employee_id`, `full_name`, `job_title`, `mentor_id`)
VALUES
  (1, 'Alice Johnson', 'Head Chef', NULL),
  (2, 'Bob Smith', 'Sous Chef', 1),
  (3, 'Carol Danvers', 'Line Cook', 2),
  (4, 'Daniel Otis', 'Line Cook', 2),
  (5, 'Eve Thompson', 'Pastry Chef', 1);
