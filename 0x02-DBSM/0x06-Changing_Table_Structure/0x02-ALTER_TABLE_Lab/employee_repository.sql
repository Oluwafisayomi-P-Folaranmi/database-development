CREATE DATABASE  IF NOT EXISTS `employee_directory`;
USE `employee_directory`;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Machinery`;

CREATE TABLE Machinery (
  EmployeeID INT NOT NULL,
  FullName VARCHAR(255),
  PhoneNumber INT,
  County VARCHAR(255)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
