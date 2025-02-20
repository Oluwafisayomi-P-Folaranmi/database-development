CREATE DATABASE  IF NOT EXISTS `company-db`;
USE `company-db`;


--
-- Table structure for table `Jewelry`
-- 

DROP TABLE IF EXISTS `Jewelry`;

-- Create the Jewelry
CREATE TABLE Jewelry (
    ItemID INT PRIMARY KEY,
    Name VARCHAR(50),
    Cost DECIMAL(10, 2)
);
 
INSERT INTO Jewelry
VALUES 
    (1, 'Engagement ring', 2500.00),
    (2, 'Silver brooch', 400.00),
    (3, 'Earrings', 350.00),
    (4, 'Luxury watch', 1250.00),
    (5, 'Golden bracelet', 800.00),
    (6, 'Gemstone', 1500.00);


--
-- Table structure for table `Orders`
-- 

DROP TABLE IF EXISTS `Orders`;

-- Create the table 
CREATE TABLE Orders (
    OrderID INT,
    ItemID INT,
    Quantity INT,
    Cost INT,
    OrderDate DATE,
    DeliveryDate DATE,
    OrderStatus VARCHAR(20)
);

-- Insert the data
INSERT INTO Orders
VALUES 
    (1, 1, 50, 122000, '2022-04-05', '2022-05-25', 'Delivered'),
    (2, 1, 75, 280000, '2022-03-08', '2022-05-25', 'In progress'),
    (3, 2, 80, 750000, '2022-05-19', '2022-06-08', 'Delivered'),
    (4, 3, 45, 1000000, '2022-01-19', '2022-05-25', 'In progress'),
    (5, 4, 70, 560000, '2022-05-19', '2022-05-25', 'In progress'),
    (6, 1, 60, 90000, '2022-06-10', '2022-06-18', 'Delivered');


--
-- Table structure for table `Clients`
-- 

DROP TABLE IF EXISTS `Clients`;

-- Create the Clients table
CREATE TABLE Clients (
    ClientID INT,
    ClientName VARCHAR(50),
    Address VARCHAR(100),
    ContactNo BIGINT
);

-- Insert the data into the Clients table
INSERT INTO Clients
VALUES 
    (1, 'Kishan Hughes', '223 Golden Hills, North Austin, TX', 387986345),
    (2, 'Indira Moncada', '119 Silver Street, Bouldin Creek, TX', 334567243),
    (3, 'Mosha Setsile', '785 Bronze Lane, East Austin, TX', 315645297),
    (4, 'Laura Mills', '908 Diamond Crescent, South Lamar, TX', 398428989),
    (5, 'Henrik Kreida', '345 Golden Hills, North Austin, TX', 358208988),
    (6, 'Millicent Blou', '812 Diamond Crescent, North Burnet, TX', 347989755);


--
-- Table structure for table `sales_revenue`
-- 

DROP TABLE IF EXISTS `sales_revenue`;

-- Create the sales_revenue table
CREATE TABLE sales_revenue (
    ItemID INT,
    Q1 DECIMAL(10, 2),
    Q2 DECIMAL(10, 2),
    Q3 DECIMAL(10, 2),
    Q4 DECIMAL(10, 2)
);

-- Insert the data into the sales_revenue table
INSERT INTO sales_revenue
VALUES 
    (1, 125000.00, 60000.00, 100000.00, 138000.00),
    (2, 30000.00, 20000.00, 23000.00, 35000.00),
    (3, 28000.00, 15000.00, 17000.00, 29000.00),
    (4, 100000.00, 70000.00, 84000.00, 110000.00),
    (5, 56000.00, 35000.00, 50000.00, 52000.00),
    (6, 90000.00, 64000.00, 85000.00, 95000.00);
