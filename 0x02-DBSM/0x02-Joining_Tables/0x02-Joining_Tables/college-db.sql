CREATE DATABASE IF NOT EXISTS `college-db`;
USE `college-db`;

-- Create the department table
CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) 
);

-- Create the student table
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    contact_number VARCHAR(15),
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

-- Insert data into department table
INSERT INTO department
VALUES
    (1, 'Computer Science'),
    (2, 'Mathematics'),
    (3, 'Physics'),
    (4, 'Literature');

-- Insert data into student table
INSERT INTO student 
VALUES
    (101, 'John', 'Doe', 1, '123-456-7890'),
    (102, 'Jane', 'Smith', 2, '123-555-7890'),
    (103, 'Alice', 'Johnson', 3, '555-555-5555'),
    (104, 'Bob', 'Brown', 4, '444-444-4444');
