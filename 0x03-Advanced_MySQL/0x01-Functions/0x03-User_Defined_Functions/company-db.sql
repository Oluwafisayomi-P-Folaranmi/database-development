CREATE DATABASE  IF NOT EXISTS `company-db`;
USE `company-db`;

--
-- Table structure for table `Jewelry`
-- 
DROP TABLE IF EXISTS `Orders`;

-- Create the Products
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    ClientID VARCHAR(10),
    ProductID VARCHAR(10),
    Quantity INT,
    Cost DECIMAL(10, 2),
    Date DATE
);

-- Insert the data
INSERT INTO Orders
VALUES 
    (1, 'C11', 'P1', 10, 500.00, '2020-09-01'),
    (2, 'C12', 'P2', 5, 100.00, '2020-09-05'),
    (3, 'C13', 'P3', 20, 800.00, '2020-09-03'),
    (4, 'C14', 'P4', 15, 150.00, '2020-09-08'),
    (5, 'C13', 'P3', 10, 450.00, '2020-09-08'),
    (6, 'C12', 'P2', 5, 100.00, '2020-09-08'),
    (7, 'C11', 'P1', 22, 1200.00, '2020-09-09'),
    (8, 'C13', 'P1', 15, 150.00, '2020-09-10'),
    (9, 'C11', 'P4', 10, 500.00, '2020-09-12'),
    (10, 'C12', 'P2', 5, 100.00, '2020-09-13');
