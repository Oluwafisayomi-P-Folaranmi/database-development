-----------------------------------------------------------------------------------------------------
--
-- DATABASE 1:
--
-----------------------------------------------------------------------------------------------------

DROP DATABASE IF EXISTS `online_shop`;
CREATE DATABASE `online_shop`;
USE `online_shop`;

--
-- The tables
--
-- Create the 'Supplier' table
CREATE TABLE `Supplier` (
    `SupplierID` INT PRIMARY KEY,
    `SupplierName` VARCHAR(255),
    `SupplierAddress` VARCHAR(255),
    `SupplierCountry` VARCHAR(255)
);

-- Create the 'Product' table
CREATE TABLE `Product` (
    `ProductID` INT PRIMARY KEY,
    `ProductName` VARCHAR(255),
    `ProductDescription` VARCHAR(255),
    `PricePerUnit` DECIMAL(10,2)
);

-- Create the 'SupplierProduct' junction table
CREATE TABLE SupplierProduct (
    `Supplier` INT,
    `Product` INT,
    PRIMARY KEY (`Supplier`, `Product`),
    FOREIGN KEY (`Supplier`) REFERENCES Supplier(`SupplierID`),
    FOREIGN KEY (`Product`) REFERENCES Product(`ProductID`)
);

--
-- Populating the tables
--
-- Insert data into the 'Supplier' table
INSERT INTO `Supplier` (`SupplierID`, `SupplierName`, `SupplierAddress`, `SupplierCountry`)
VALUES
    (1, 'Global Supplies Co.', '123 Market St', 'USA'),
    (2, 'Tech Innovators Ltd.', '456 Silicon Ave', 'Canada'),
    (3, 'Eco Green Solutions', '789 Green Blvd', 'Germany'),
    (4, 'Future Foods Inc.', '321 Farm Lane', 'Netherlands');

-- Insert data into the 'Product' table
INSERT INTO `Product` (`ProductID`, `ProductName`, `ProductDescription`, `PricePerUnit`)
VALUES
    (101, 'Laptop', '15-inch screen, 8GB RAM, 256GB SSD', 899.99),
    (102, 'Solar Panel', 'High-efficiency solar panel 300W', 299.99),
    (103, 'Organic Apples', 'Fresh organic apples from local farms', 3.99),
    (104, 'Wireless Earbuds', 'Noise-cancelling, Bluetooth 5.0', 129.99),
    (105, 'LED Light Bulbs', 'Energy-efficient LED bulbs, pack of 4', 12.99);

-- Insert data into the 'SupplierProduct' table (many-to-many relationship)
INSERT INTO `SupplierProduct` (`Supplier`, `Product`)
VALUES
    (1, 101),  -- Global Supplies Co. supplies Laptops
    (1, 104),  -- Global Supplies Co. supplies Wireless Earbuds
    (2, 101),  -- Tech Innovators Ltd. supplies Laptops
    (2, 102),  -- Tech Innovators Ltd. supplies Solar Panels
    (3, 103),  -- Eco Green Solutions supplies Organic Apples
    (4, 103),  -- Future Foods Inc. supplies Organic Apples
    (4, 105);  -- Future Foods Inc. supplies LED Light Bulbs


-----------------------------------------------------------------------------------------------------
--
-- DATABASE 2:
--
-- Improving on our database
--
-----------------------------------------------------------------------------------------------------
--
-- The tables
--
-- Create the 'Supplier' table
CREATE TABLE `Supplier` (
    `SupplierID` INT PRIMARY KEY,
    `SupplierName` VARCHAR(255),
    `SupplierAddress` VARCHAR(255),
    `SupplierCountry` VARCHAR(255)
);

-- Create the 'Product' table
CREATE TABLE `Product` (
    `ProductID` INT PRIMARY KEY,
    `ProductName` VARCHAR(255),
    `ProductDescription` VARCHAR(255),
    `PricePerUnit` DECIMAL(10,2)
);

-- Create the 'Order' table
CREATE TABLE `Order` (
    `OrderID` INT PRIMARY KEY,
    `Supplier` INT,
    `Product` INT,
    `OrderDate` TIMESTAMP,
    `Quantity` DECIMAL(10,2),
    `TotalPrice` DECIMAL(10,2),
    `Status` VARCHAR(255),
    FOREIGN KEY (`Supplier`) REFERENCES `Supplier`(`SupplierID`),
    FOREIGN KEY (`Product`) REFERENCES `Product`(`ProductID`)
);

--
-- Populating the tables
--
-- Insert data into the 'Supplier' table
INSERT INTO `Supplier` (`SupplierID`, `SupplierName`, `SupplierAddress`, `SupplierCountry`)
VALUES
    (1, 'Tech Supplies Ltd.', '123 Main St', 'USA'),
    (2, 'Green Energy Co.', '456 Elm St', 'Germany'),
    (3, 'Fresh Foods Ltd.', '789 Oak St', 'Netherlands'),
    (4, 'Global Electronics', '321 Pine St', 'Japan');

-- Insert data into the 'Product' table
INSERT INTO `Product` (`ProductID`, `ProductName`, `ProductDescription`, `PricePerUnit`)
VALUES
    (101, 'Solar Panel', '300W high-efficiency solar panel', 250.00),
    (102, 'Laptop', '15-inch, 16GB RAM, 512GB SSD', 1200.00),
    (103, 'Organic Apples', '1 kg of fresh organic apples', 4.99),
    (104, 'Smartphone', '6.5-inch screen, 128GB storage, 5G', 799.99),
    (105, 'LED Bulbs', 'Energy-saving LED bulbs (pack of 4)', 15.99);

-- Insert data into the 'Order' table
INSERT INTO `Order` (`OrderID`, `Supplier`, `Product`, `OrderDate`, `Quantity`, `TotalPrice`, `Status`)
VALUES
    (1001, 1, 102, '2024-10-01 10:15:00', 5, 6000.00, 'Shipped'),   -- Tech Supplies Ltd. ordered Laptops
    (1002, 2, 101, '2024-10-05 14:30:00', 10, 2500.00, 'Delivered'), -- Green Energy Co. ordered Solar Panels
    (1003, 3, 103, '2024-10-07 09:20:00', 50, 249.50, 'Pending'),    -- Fresh Foods Ltd. ordered Organic Apples
    (1004, 4, 104, '2024-10-10 12:45:00', 20, 15999.80, 'Processing'),-- Global Electronics ordered Smartphones
    (1005, 1, 105, '2024-10-15 11:00:00', 100, 1599.00, 'Delivered'); -- Tech Supplies Ltd. ordered LED Bulbs


