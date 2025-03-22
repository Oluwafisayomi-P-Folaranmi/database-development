DROP DATABASE IF EXISTS `college_db`;
CREATE DATABASE `college_db`;
USE `college_db`;

-- Create table `student`
-- Table `student`
CREATE TABLE `student` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(50) NOT NULL,
    `date_of_birth` DATE NOT NULL,
    `home_address` TEXT,
    `faculty` VARCHAR(100) NOT NULL
);

-- an INSERT statement with six sample records
-- for the students table
INSERT INTO `student` (
    `first_name`, `last_name`, `date_of_birth`, `home_address`, `faculty`
) VALUES
    ('John', 'Doe', '2002-05-15', '123 Main St, Lagos', 'Engineering'),
    ('Jane', 'Smith', '2001-09-22', '45 Oakwood Ave, Abuja', 'Science'),
    ('David', 'Johnson', '2003-03-10', '78 Pine Rd, Ibadan', 'Business Administration'),
    ('Emily', 'Adams', '2000-12-05', '34 Maple St, Kano', 'Medicine'),
    ('Michael', 'Brown', '2002-07-18', '90 Cedar Ln, Port Harcourt', 'Law'),
    ('Sarah', 'Wilson', '2001-04-30', '12 Birch Ave, Enugu', 'Arts');
