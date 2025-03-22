--
-- The database `school`
--
DROP DATABASE IF EXISTS `shop`;
CREATE DATABASE `shop`;
USE `shop`;

--
-- The tables
--
-- Table `Customer`
CREATE TABLE `Customer` (
    `CustomerID` INT AUTO_INCREMENT PRIMARY KEY,
    `CustomerName` VARCHAR(50) NOT NULL,
    `CustomerAddress` VARCHAR(50) NOT NULL,
    `TaxIdentifier` VARCHAR(50) UNIQUE
);

-- Table `Order`
CREATE TABLE `Order` (
    `OrderID` INT AUTO_INCREMENT PRIMARY KEY,
    `OrderDate` DATE NOT NULL,
    `OrderAmount` DECIMAL(10, 2) NOT NULL,
    `Comments` TEXT,
    `Customer` INT
);

-- Table `OrderDetail`
CREATE TABLE `OrderDetail` (
    `OrderDetailID` INT AUTO_INCREMENT PRIMARY KEY,
    `ProductID` INT NOT NULL,
    `Quantity` INT NOT NULL,
    `Order` INT
);

-- Table `Product`
CREATE TABLE `Product` (
    `ProductID` INT AUTO_INCREMENT PRIMARY KEY,
    `ProductCode` VARCHAR(20),
    `ProductName` VARCHAR(100),
    `ProductDescription` VARCHAR(500),
    `ProductPrice` DECIMAL(10, 2)
);

--
-- Altering the tables to establish the relationships via FOREIGN KEYs
--
ALTER TABLE `Order`
ADD FOREIGN KEY(`Customer`)
REFERENCES `Customer`(`CustomerID`)
ON DELETE SET NULL;

ALTER TABLE `OrderDetail`
ADD FOREIGN KEY(`Order`)
REFERENCES `Order`(`OrderID`)
ON DELETE SET NULL;

--
-- Populating the tables
--
-- Populating the `Customer` table
INSERT INTO `Customer` (`CustomerID`, `CustomerName`, `CustomerAddress`, `TaxIdentifier`)
VALUES
    (1, 'John Doe', '123 Elm Street', 'TAX001'),
    (2, 'Jane Smith', '456 Oak Avenue', 'TAX002'),
    (3, 'Michael Johnson', '789 Maple Road', 'TAX003'),
    (4, 'Emily Davis', '321 Pine Street', 'TAX004');

-- Populating the `Order` table
INSERT INTO `Order` (`OrderID`, `OrderDate`, `OrderAmount`, `Comments`, `Customer`)
VALUES
    (101, '2024-10-01', 250.50, 'First order for John Doe', 1),
    (102, '2024-10-02', 500.75, 'Second order for John Doe', 1),
    (103, '2024-10-03', 100.25, 'Third order for John Doe', 1),
    (104, '2024-10-04', 350.80, 'First order for Jane Smith', 2),
    (105, '2024-10-05', 200.40, 'Second order for Jane Smith', 2),
    (106, '2024-10-06', 450.20, 'First order for Michael Johnson', 3),
    (107, '2024-10-07', 300.65, 'Fourth order for Michael Johnson', 1),
    (108, '2024-10-08', 150.15, 'Third order for Jane Smith', 2),
    (109, '2024-10-09', 400.55, 'Second order for Michael Johnson', 3),
    (110, '2024-10-10', 250.30, 'Fifth order for John Doe', 4);

-- Populating the `OrderDetail` table
INSERT INTO `OrderDetail` (`OrderDetailID`, `ProductID`, `Quantity`, `Order`)
VALUES
	-- Order 1 details
    (1001, 11, 2, 101),
    (1002, 102, 1, 101),

    -- Order 2 details
    (1003, 103, 3, 102),
    (1004, 104, 2, 102),

    -- Order 3 details
    (1005, 105, 1, 103),
    (1006, 106, 4, 103),

    -- Order 4 details
    (1007, 107, 2, 104),
    (1008, 108, 3, 104),

    -- Order 5 details
    (1009, 109, 1, 105),
    (1010, 110, 1, 105),

    -- Order 6 details
    (1011, 111, 2, 106),
    (1012, 112, 2, 106),

    -- Order 7 details
    (1013, 113, 3, 107),
    (1014, 114, 2, 107),

    -- Order 8 details
    (1015, 115, 2, 108),
    (1016, 116, 1, 108),

    -- Order 9 details
    (1017, 117, 2, 109),
    (1018, 118, 1, 109),

    -- Order 10 details
    (1019, 119, 3, 110),
    (1020, 120, 2, 110);

-----------------------------------------------------------------------------------------------------------

--
-- Now for some fun! It's query-time.
--
SELECT
	`C`.`CustomerID` AS "ID",
    `C`.`CustomerName` AS "Customer Name",
	`C`.`CustomerAddress` AS "Address",
    `C`.`TaxIdentifier` AS "Tax Number/Identifier",
    `O`.`OrderID` AS "Order ID",
    `O`.`OrderDate` AS "Date Order Made",
    `O`.`OrderAmount` AS "Amount Ordered",
    `O`.`Comments` AS "Comments",
    `OD`.`OrderDetailID` AS "Detail ID",
    `OD`.`ProductID` AS "Product Quantity",
    `OD`.`Quantity` AS "Quantity"
FROM `Customer` AS `C`
LEFT JOIN `Order` AS `O`
	ON `C`.`CustomerID` = `O`.`Customer`
LEFT JOIN `OrderDetail` AS `OD`
	ON `O`.`OrderID` = `OD`.`Order`;












