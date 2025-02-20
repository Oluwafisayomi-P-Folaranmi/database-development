-- The Clients table
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    FullName VARCHAR(255),
    ContactNumber VARCHAR(255),
    Address VARCHAR(255)
);

INSERT INTO Clients (ClientID, FullName, ContactNumber, Address) VALUES
(11, 'Takashi T.', '3157834655', '72 Greenway Drive'),
(12, 'Laurie Murphy', '3155792741', '24 Sycamore Avenue'),
(13, 'Jane Delgado', '3155671233', '92 Oakwood Lane'),
(14, 'Benjamin Clauss', '315342509', '831 Beechwood Terrace'),
(15, 'Altay Ayhan', '315208983', '755 Palm Tree Hills'),
(16, 'Greta Galkina', '315298755', '831 Beechwood Terrace');


-- The Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    ClientID INT,
    ProductID INT,
    Quantity INT,
    Cost DECIMAL(10, 2),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);

INSERT INTO Orders (OrderID, ClientID, ProductID, Quantity, Cost) VALUES
(1, 11, 101, 2, 150.00),
(2, 12, 102, 1, 200.00),
(3, 11, 103, 3, 300.00),
(4, 11, 104, 5, 500.00),
(5, 11, 105, 2, 250.00),
(6, 16, 106, 4, 400.00),
(7, 11, 107, 1, 100.00),
(8, 12, 108, 3, 350.00),
(9, 13, 109, 6, 600.00),
(10, 13, 110, 2, 220.00);


-- The Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FullName VARCHAR(255),
    JobTitle VARCHAR(255),
    County VARCHAR(255),
    LineManagerID INT
);

INSERT INTO Employees (EmployeeID, FullName, JobTitle, County, LineManagerID) VALUES
(1, 'Seamus Hogan', 'Manager', 'Pinal County', 3),
(2, 'Thomas Eriksson', 'Assistant', 'Pinal County', 1),
(3, 'Simon Tolo', 'Head Chef', 'Gila County', 3),
(4, 'Francesca Soffia', 'Assistant', 'Cochise County', 1),
(5, 'Emily Sierra', 'Accountant', 'Cochise County', 1),
(6, 'Greta Galkina', 'Accountant', 'Cochise County', 3);
