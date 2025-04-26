CREATE DATABASE  IF NOT EXISTS `customer_directory`;
USE `customer_directory`;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;

CREATE TABLE Customers (
  CustomerID INT NOT NULL PRIMARY KEY, 
  FullName VARCHAR(255) NOT NULL, 
  PhoneNumber INT NOT NULL UNIQUE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

--
-- Table structure for table `Bookings`
--

DROP TABLE IF EXISTS `Bookings`;

CREATE TABLE Bookings (
  BookingID INT NOT NULL PRIMARY KEY, 
  BookingDate DATE NOT NULL, 
  TableNumber INT NOT NULL UNIQUE,
  CustomerID INT NOT NULL,
  NumberOfGuests INT NOT NULL CHECK(NumberOfGuests<=8),
  FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
