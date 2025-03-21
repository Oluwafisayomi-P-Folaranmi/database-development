#
# Orders Table
#
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    ClientID VARCHAR(4),
    ProductID VARCHAR(2),
    Quantity INT,
    Cost DECIMAL(10, 2),
    Date DATE
);

INSERT INTO Orders 
VALUES
    (1, 'C11', 'P1', 10, 500.00, '2020-09-01'), (2, 'C12', 'P2', 5, 100.00, '2020-09-01'),
    (3, 'C13', 'P3', 20, 800.00, '2020-09-03'), (4, 'C14', 'P4', 15, 150.00, '2020-09-05'),
    (5, 'C13', 'P3', 10, 450.00, '2020-09-07'), (6, 'C11', 'P2', 5, 800.00, '2020-09-09'),
    (7, 'C12', 'P1', 22, 1200.00, '2020-09-10'), (8, 'C13', 'P4', 15, 150.00, '2020-09-10'),
    (9, 'C11', 'P1', 10, 500.00, '2020-09-13'), (10, 'C12', 'P2', 5, 100.00, '2020-09-15'),
    (11, 'C14', 'P5', 5, 100.00, '2020-09-17'), (12, 'C13', 'P3', 10, 450.00, '2020-09-19'),
    (13, 'C12', 'P1', 5, 100.00, '2020-09-21'), (14, 'C13', 'P3', 20, 800.00, '2022-09-03'),
    (15, 'C14', 'P4', 15, 150.00, '2022-09-07'), (16, 'C13', 'P3', 10, 450.00, '2022-09-08'),
    (17, 'C12', 'P2', 5, 800.00, '2022-09-07'), (18, 'C11', 'P2', 22, 1200.00, '2022-09-09'),
    (19, 'C13', 'P1', 15, 150.00, '2022-09-10'), (20, 'C11', 'P1', 10, 500.00, '2022-09-12'),
    (21, 'C12', 'P1', 5, 100.00, '2022-09-13'), (22, 'C12', 'P1', 10, 500.00, '2022-09-01'),
    (23, 'C13', 'P1', 5, 100.00, '2021-09-05'), (24, 'C11', 'P3', 20, 800.00, '2022-09-10'),
    (25, 'C14', 'P4', 15, 150.00, '2022-09-07'), (26, 'C13', 'P1', 10, 450.00, '2022-09-08'),
    (27, 'C12', 'P1', 20, 1000.00, '2022-09-01'), (28, 'C11', 'P3', 10, 800.00, '2022-09-03'),
    (29, 'C13', 'P3', 20, 800.00, '2022-09-05'), (30, 'C11', 'P1', 10, 500.00, '2022-09-01');

#
# Clients Table
#
CREATE TABLE Clients (
    ClientID VARCHAR(2) PRIMARY KEY,
    FullName VARCHAR(50),
    ContactNumber VARCHAR(15),
    AddressID INT
);

INSERT INTO Clients (ClientID, FullName, ContactNumber, AddressID) VALUES
('C1', 'Takashi Ito', '351786345', 1),
('C2', 'Jane Murphy', '351567243', 2),
('C3', 'Laurina Delgado', '351342597', 3),
('C4', 'Benjamin Clauss', '351342509', 4),
('C5', 'Altay Ayhan', '351208983', 5),
('C6', 'Greta Galkina', '351298755', 6);

#
# Products Table
#
CREATE TABLE Products (
    ProductID VARCHAR(2) PRIMARY KEY,
    ProductName VARCHAR(50),
    BuyPrice DECIMAL(10, 2),
    SellPrice DECIMAL(10, 2),
    NumberOfItems INT
);

INSERT INTO Products (ProductID, ProductName, BuyPrice, SellPrice, NumberOfItems) VALUES
('P1', 'Artificial grass bags', 40.00, 50.00, 100),
('P2', 'Wood panels', 15.00, 20.00, 250),
('P3', 'Patio slates', 35.00, 40.00, 60),
('P4', 'Sycamore trees', 7.00, 10.00, 50),
('P5', 'Trees and Shrubs', 35.00, 50.00, 75),
('P6', 'Water fountain', 65.00, 80.00, 15);
