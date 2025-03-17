CREATE DATABASE  IF NOT EXISTS `company-db`;
USE `company-db`;

DROP TABLE IF EXISTS `Customers`;
DROP TABLE IF EXISTS `Orders`;

-- Create the Customers
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15),
    Address TEXT
);

-- Create the Orders
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE NOT NULL,
    TotalAmount DECIMAL(10,2) NOT NULL
);

-- Create the reference between `Customers` and `Orders`
ALTER TABLE Orders 
ADD CONSTRAINT fk_customer
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) 
ON DELETE CASCADE;

-- Insert data into the tables
INSERT INTO Customers (Name, Email, Phone, Address) VALUES
('John Doe', 'john@example.com', '123-456-7890', '123 Main St'),
('Jane Smith', 'jane@example.com', '987-654-3210', '456 Oak St');
('Alice Johnson', 'alice@example.com', '555-123-4567', '789 Pine St');

INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2025-03-16', 150.75),  -- Order for John Doe
(2, '2025-03-15', 200.50);  -- Order for Jane Smith
(1, '2025-03-14', 99.99),   -- Another order for John Doe
(2, '2025-03-12', 300.25),  -- Another order for Jane Smith
(3, '2025-03-16', 175.80);  -- First order for Alice Johnson
