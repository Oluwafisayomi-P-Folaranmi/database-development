DROP SCHEMA IF EXISTS `company-db`;

CREATE SCHEMA `company-db`;

use `company-db`;

CREATE TABLE `ClientCosts` (
    ClientID INT,
    AVG_Cost DECIMAL(10,4)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO `ClientCosts`
VALUES 
	(1, 1425.0000),
    (2, 825.0000),
    (3, 800.0000),
    (4, 825.0000),
    (5, 800.0000),
    (6, 1500.0000);

CREATE TABLE Orders (
    OrderID INT,
    ItemID INT,
    Quantity INT,
    Cost DECIMAL(10,4),
    OrderDate DATE,
    DeliveryDate DATE,
    OrderStatus VARCHAR(20)
);

INSERT INTO Orders
VALUES
    (1, 1, 50, 122000.0000, '2022-04-05', '2022-05-25', 'Delivered'),
    (2, 2, 75, 28000.0000, '2022-03-08', NULL, 'In progress'),
    (3, 3, 80, 25000.0000, '2022-05-19', '2022-06-08', 'Delivered'),
    (4, 4, 45, 100000.0000, '2022-01-10', NULL, 'In progress'),
    (5, 5, 70, 56000.0000, '2022-05-19', NULL, 'In progress'),
    (6, 6, 60, 90000.0000, '2022-06-10', '2022-06-18', 'Delivered');
