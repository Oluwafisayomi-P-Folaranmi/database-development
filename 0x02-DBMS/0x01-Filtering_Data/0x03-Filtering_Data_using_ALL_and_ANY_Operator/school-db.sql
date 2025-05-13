DROP DATABASE IF EXISTS `college_db`;
CREATE DATABASE `college_db`;
USE `college_db`;

-- Create the students table
CREATE TABLE `students` (
    `student_id` INT PRIMARY KEY,
    `first_name` VARCHAR(100),
    `last_name` VARCHAR(100),
    `GPA` DECIMAL(3, 2),
    `location` VARCHAR(100),
    `sex` VARCHAR(25)
);

-- Populate the students table
INSERT INTO `students`
VALUES
	(1, 'John', 'Doe', 3.50, 'New York', 'Male'),
	(2, 'Jane', 'Smith', 3.80, 'Los Angeles', 'Female'),
	(3, 'Michael', 'Johnson', 2.90, 'Chicago', 'Male'),
	(4, 'Emily', 'Davis', 3.40, 'Houston', 'Female'),
	(5, 'David', 'Brown', 3.75, 'Phoenix', 'Male'),
	(6, 'Sarah', 'Wilson', 3.65, 'Philadelphia', 'Female'),
	(7, 'James', 'Clark', 2.70, 'San Antonio', 'Male'),
	(8, 'Olivia', 'Lewis', 3.90, 'San Diego', 'Female'),
	(9, 'Daniel', 'Walker', 3.20, 'Dallas', 'Male'),
	(10, 'Sophia', 'Hall', 3.60, 'San Jose', 'Female'),
	(11, 'Matthew', 'Young', 3.10, 'Austin', 'Male'),
	(12, 'Emma', 'King', 3.85, 'Jacksonville', 'Female'),
	(13, 'Noah', 'Wright', 3.30, 'Fort Worth', 'Male'),
	(14, 'Mia', 'Green', 3.70, 'Columbus', 'Female'),
	(15, 'William', 'Scott', 2.80, 'Charlotte', 'Male'),
	(16, 'Alice', 'Johnson', 3.80, 'New York', 'Female'),
	(17, 'Bob', 'Smith', 3.50, 'Los Angeles', 'Male'),
	(18, 'Carol', 'Danvers', 3.90, 'New York', 'Female'),
	(19, 'Daniel', 'Otis', 3.20, 'Gila County', 'Male'),
	(20, 'Eve', 'Thompson', 3.40, 'Chicago', 'Female'),
	(21, 'Franklin', 'Miles', 3.60, 'New York', 'Male'),
	(22, 'Grace', 'Lee', 3.70, 'Gila County', 'Female'),
	(23, 'Henry', 'Cavill', 3.10, 'New York', 'Male'),
	(24, 'Ivy', 'Baker', 3.30, 'Gila County', 'Female'),
	(25, 'Jack', 'Dawson', 3.00, 'Miami', 'Male');
