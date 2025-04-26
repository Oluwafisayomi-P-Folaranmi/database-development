CREATE DATABASE  IF NOT EXISTS `company-db`;
USE `company-db`;

DROP TABLE IF EXISTS `employee`;

CREATE TABLE employee (
    employee_ID INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    allowance DECIMAL(10, 2) NOT NULL,
    tax DECIMAL(10, 2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO employee (employee_ID, employee_name, salary, allowance, tax)
VALUES
(1, 'Alex', 25000, 1000, 1000),
(2, 'John', 55000, 1000, 2000),
(3, 'James', 52000, 1000, 2000),
(4, 'Sam', 30000, 1000, 1000),
(5, 'Emily', 60000, 1500, 2500),
(6, 'Michael', 45000, 1200, 1800),
(7, 'Sarah', 47000, 1300, 1900),
(8, 'David', 48000, 1100, 1950),
(9, 'Laura', 53000, 1400, 2100),
(10, 'Robert', 50000, 1250, 2000),
(11, 'Sophia', 58000, 1450, 2300),
(12, 'Daniel', 62000, 1600, 2600),
(13, 'Olivia', 49000, 1350, 2000),
(14, 'Matthew', 51000, 1275, 2050),
(15, 'Chloe', 54000, 1425, 2150);
