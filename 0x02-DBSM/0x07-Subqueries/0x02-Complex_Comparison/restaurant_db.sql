CREATE DATABASE  IF NOT EXISTS `restaurant_db`;
USE `restaurant_db`;


--
-- Table structure for table `Employees`
-- 

DROP TABLE IF EXISTS `Employees`;

CREATE TABLE Employees (
  EmployeeID INT NOT NULL PRIMARY KEY,
  EmployeeName VARCHAR(100) NOT NULL UNIQUE,
  Role VARCHAR(100) NOT NULL UNIQUE,
  AnnualSalary INT NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


--
-- Data for table `Employees`
--

INSERT INTO `Employee`
VALUES
  (1,'Mario Gollini','Manager',70000),
  (2,'Adrian Gollini','Assistant Manager',65000),
  (3,'Giorgos Dioudis','Head Chef',50000),
  (4,'Fatma Kaya','Assistant Chef',45000),
  (5,'Elema Salvai','Head Waiter',40000),
  (6,'John Millar','Receptionist',35000);


--
-- Table structure for table `bookings`
-- 

DROP TABLE IF EXISTS `Bookings`;

CREATE TABLE `Bookings` (
    BookingID INT PRIMARY KEY,
    TableNo INT NOT NULL,
    GuestFirstName VARCHAR(50),
    GuestLastName VARCHAR(50),
    BookingSlot TIME,
    EmployeeID INT
);


--
-- Data for table `Bookings`
--

INSERT INTO Bookings
VALUES
    (1, 12, 'Anna', 'Iversen', '19:00:00', 1),
    (2, 12, 'Joakim', 'Iversen', '19:00:00', 1),
    (3, 19, 'Vanessa', 'McCarthy', '15:00:00', 3),
    (4, 15, 'Marcos', 'Romero', '17:30:00', 4),
    (5, 5, 'Hiroki', 'Yamane', '18:30:00', 2),
    (6, 8, 'Diana', 'Pinto', '20:00:00', 5);
