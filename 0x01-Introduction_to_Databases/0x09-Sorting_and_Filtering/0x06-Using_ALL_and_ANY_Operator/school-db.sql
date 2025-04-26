CREATE DATABASE IF NOT EXISTS `School`;
USE `School`;


-- Create the Students table
CREATE TABLE Students (
    id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    GPA DECIMAL(3, 2),
    Location VARCHAR(100),
    sex VARCHAR(25)
);

-- Populate the Students table
INSERT INTO Students
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
    (15, 'William', 'Scott', 2.80, 'Charlotte', 'Male');
