CREATE DATABASE  IF NOT EXISTS `company-db`;
USE `company-db`;

-- Create the Orders
DROP TABLE IF EXISTS `Orders`;
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
    (3, 'C13', 'P3', 20, 800.00, '2020-09-03');
