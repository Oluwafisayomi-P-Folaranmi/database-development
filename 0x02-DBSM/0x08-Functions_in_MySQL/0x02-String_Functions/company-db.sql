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
