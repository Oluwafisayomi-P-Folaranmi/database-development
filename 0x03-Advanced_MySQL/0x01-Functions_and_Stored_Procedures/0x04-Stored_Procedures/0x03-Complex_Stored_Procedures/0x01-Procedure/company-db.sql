CREATE DATABASE  IF NOT EXISTS `company-db`;
USE `company-db`;

--
-- Table structure for table `Products`
-- 
DROP TABLE IF EXISTS `Products`;

-- Create the Products
CREATE TABLE Products (
    ProductID VARCHAR(5),
    ProductName VARCHAR(50),
    Price DECIMAL(5, 2),
    NumberOfItems INT,
    PRIMARY KEY (ProductID)
);

INSERT INTO Products
VALUES 
    ('P1', 'Artificial grass bags', 50.00, 100),
    ('P2', 'Wood panels', 20.00, 250),
    ('P3', 'Patio slatos', 40.00, 60),
    ('P4', 'Sycamore trees', 10.00, 50),
    ('P5', 'Trees and Shrubs', 50.00, 75),
    ('P6', 'Water fountain', 80.00, 15);
