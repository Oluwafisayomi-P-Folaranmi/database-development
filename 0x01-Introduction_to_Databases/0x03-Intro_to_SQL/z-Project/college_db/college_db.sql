--
-- Data Definition Language
-- 

-- Create the database for the college
DROP DATABASE IF EXISTS `college_db`;
CREATE DATABASE `college_db`;
USE `college_db`;

-- Create the `student` and `department` tables
-- Table `student`
CREATE TABLE `student` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(50) NOT NULL,
    `date_of_birth` DATE NOT NULL
);

-- Table `department`
CREATE TABLE `department` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL UNIQUE,
    `established_year` YEAR,
    `contact_email` VARCHAR(100) UNIQUE,
    `phone_number` VARCHAR(20),
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
------------------------------------------------------------------------------------


--
-- Data Manipulation Language
-- 

-- populate the `student` table with data - three records
INSERT INTO `student` 
    (`id`, `first_name`, `last_name`, `date_of_birth`, `hobby`)
VALUES 
    (1, 'John', 'Doe', '2002-05-15', 'Reading'),
    (2, 'Jane', 'Smith', '2001-09-22', 'Swimming'),
    (3, 'David', 'Johnson', '2003-03-10', 'Chess');

-- Add more student
-- first name, "Oluwafisayomi"; second name, "Folaranmi";
-- date of birth is "1999-10-08", and hobby, "coding".
INSERT INTO `student` 
    (`first_name`, `last_name`, `date_of_birth`, `hobby`)
VALUES 
    ('Oluwafisayomi', 'Folaranmi', '1999-10-08', 'Coding');

-- set Oluwafisayomi's hobby to "Reading"
UPDATE `student`
SET `hobby` = "Reading"
WHERE `id` = 4;

-- delete the duplicated record
-- + insert a duplicate
-- + then delete
INSERT INTO `student` 
    (`first_name`, `last_name`, `date_of_birth`, `hobby`)
VALUES 
    ('Oluwafisayomi', 'Folaranmi', '1999-10-08', 'Coding');

DELETE FROM `student`
WHERE `id` = 5;
------------------------------------------------------------------------------------


--
-- Data Query Language
-- 

-- read the student with the ID of 4
SELECT first_name, last_name
FROM `student`
WHERE `id` = 4;
------------------------------------------------------------------------------------
