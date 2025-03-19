DROP TABLE IF EXISTS `orders`;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    ClientID VARCHAR(10),
    ProductID VARCHAR(10),
    Quantity INT,
    Cost DECIMAL(10, 2),
    Date DATE
);

INSERT INTO Orders
VALUES 
    (1, 'C11', 'P1', 10, 500.00, '2020-09-01'),
    (2, 'C12', 'P2', 5, 100.00, '2020-09-05'),
    (3, 'C13', 'P3', 20, 800.00, '2020-09-03');
