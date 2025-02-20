CREATE DATABASE  IF NOT EXISTS `company-db`;
USE `company-db`;

--
-- Table structure for table `Jewelry`
-- 
DROP TABLE IF EXISTS `Products`;

-- Create the Products
CREATE TABLE Products (
    ProductID VARCHAR(5) PRIMARY KEY,
    Item VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Insert the data
INSERT INTO Products 
VALUES 
    ('P1', 'Artificial grass bags', 50.00),
    ('P2', 'Wood panels', 20.00),
    ('P3', 'Patio slates', 40.00),
    ('P4', 'Sycamore trees', 10.00),
    ('P5', 'Trees and Shrubs', 50.00),
    ('P6', 'Water fountain', 80.00),
    ('P7', 'Garden bench', 150.00),
    ('P8', 'Outdoor lighting', 60.00),
    ('P9', 'Gazebo', 200.00),
    ('P10', 'Hedge trimmer', 120.00);
