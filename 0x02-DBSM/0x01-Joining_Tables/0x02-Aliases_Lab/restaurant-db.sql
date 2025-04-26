CREATE DATABASE IF NOT EXISTS `restaurant-db.sql`;
USE `restaurant-db.sql`;


--
-- The Food_Orders_Delivery_Status table
--

-- The Food_Orders_Delivery_Status table
CREATE TABLE Food_Orders_Delivery_Status (
    OrderID INT PRIMARY KEY,
    Date_food_order_placed_with_supplier DATE,
    Date_food_order_received_from_supplier DATE,
    Order_status VARCHAR(50)
);

-- The Data for the Food_Orders_Delivery_Status
INSERT INTO Food_Orders_Delivery_Status
VALUES 
    (1, '2022-04-05', '2022-04-05', 'Delivered'),
    (2, '2022-03-08', '2022-10-08', 'Delivered'),
    (3, '2022-05-19', NULL, 'In Progress'),
    (4, '2022-01-10', '2022-01-15', 'Delivered');


--
-- The Starters table
--

-- Create the Starters table
CREATE TABLE Starters (
    StarterName VARCHAR(255),
    Cost DECIMAL(10, 2)
);

-- Insert data into the Starters table
INSERT INTO Starters
VALUES 
    ('Olives', 4.75),
    ('Flatbread', 5.00),
    ('Minestrone', 8.50),
    ('Tomato bread', 8.50),
    ('Falafel', 6.75),
    ('Hummus', 5.00);


--
-- The Courses table
--

-- Create the Courses table
CREATE TABLE Courses (
    CourseName VARCHAR(255),
    Cost DECIMAL(10, 2)
);

-- Insert data into the Courses table
INSERT INTO Courses 
VALUES 
    ('Greek salad', 15.50),
    ('Bean soup', 12.25),
    ('Pizza', 15.00),
    ('Carbonara', 12.50),
    ('Kabasa', 17.00);
