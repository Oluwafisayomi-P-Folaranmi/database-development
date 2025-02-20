CREATE DATABASE IF NOT EXISTS `company-db`;
USE `company-db`;


-- Create the Customer_Purchases table
CREATE TABLE Customer_Purchases (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Location VARCHAR(100),
    Purchases INT
);

-- Insert the data into the Customer table
INSERT INTO Customer_Purchases
VALUES
    (1, 'Takashi Ito', 'Graham County', 1500),
    (2, 'Jane Murphy', 'Pinal County', 1750),
    (3, 'Laurina Delgado', 'Santa Cruz County', 1000),
    (4, 'Benjamin Clauss', 'Gila County', 2500),
    (5, 'Altay Ayhan', 'Cochise County', 2000),
    (6, 'Greta Galkina', 'Mohave County', 500),
    (7, 'Julie Marr', 'Gila County', 2250);


-- Create the Employee table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    ContactNo VARCHAR(20),
    Email VARCHAR(100),
    AnnualSalary DECIMAL(10, 2)
);

-- Insert the data into the Employee table
INSERT INTO Employee
VALUES 
    (1, 'Seamus Hogan', 'Recruitment', '351478025', 'Seamus.H@luckyshrub.com', 50000),
    (2, 'Thomas Eriksson', 'Legal', '351475828', 'Thomas.E@luckyshrub.com', 75000),
    (3, 'Simon Tolo', 'Marketing', '351939582', 'Simon.T@luckyshrub.com', 40000),
    (4, 'Francesca Soffia', 'Finance', '351258569', 'Francesca.S@luckyshrub.com', 45000),
    (5, 'Emily Sierra', 'Customer Service', '351083989', 'Emily.S@luckyshrub.com', 35000),
    (6, 'Maria Carter', 'Human Resources', '351022588', 'Maria.C@luckyshrub.com', 55000),
    (7, 'Rick Griffin', 'Marketing', '351478458', 'Rick.G@luckyshrub.com', 50000);
