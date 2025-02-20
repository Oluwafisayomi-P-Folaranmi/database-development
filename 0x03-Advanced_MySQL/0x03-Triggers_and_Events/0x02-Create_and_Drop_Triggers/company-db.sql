CREATE DATABASE  IF NOT EXISTS `company-db`;
USE `company-db`;

--
-- Table structure for table `Orders`
-- 
DROP TABLE IF EXISTS `Orders`;

-- Create the Orders
CREATE TABLE Orders (
    OrderID INT,
    ClientID VARCHAR(5),
    ProductID VARCHAR(5),
    Quantity INT,
    Cost DECIMAL(8, 2),
    Date DATE,
    PRIMARY KEY (OrderID)
);

-- Insert into Orders
INSERT INTO Orders
VALUES 
    (1, 'C1', 'P1', 10, 500.00, '2020-09-01'),
    (2, 'C12', 'P1', 5, 100.00, '2020-09-07'),
    (3, 'C13', 'P3', 20, 800.00, '2020-09-03'),
    (4, 'C13', 'P4', 15, 150.00, '2020-09-05'),
    (5, 'C1', 'P3', 10, 450.00, '2020-09-08'),
    (6, 'C1', 'P1', 5, 100.00, '2020-09-12'),
    (7, 'C12', 'P5', 22, 1200.00, '2020-09-15'),
    (8, 'C13', 'P4', 15, 150.00, '2020-09-19'),
    (9, 'C13', 'P1', 10, 500.00, '2022-09-05'),
    (10, 'C1', 'P4', 15, 150.00, '2022-09-09'),
    (11, 'C1', 'P2', 20, 800.00, '2022-09-10'),
    (12, 'C13', 'P2', 10, 450.00, '2022-09-11'),
    (13, 'C1', 'P5', 20, 1200.00, '2022-09-12'),
    (14, 'C12', 'P1', 5, 100.00, '2022-09-13'),
    (15, 'C13', 'P1', 15, 150.00, '2022-09-10');
