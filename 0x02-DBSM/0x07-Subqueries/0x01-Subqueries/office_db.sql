CREATE DATABASE IF NOT EXISTS `employee_directory`;
USE `employee_directory`;

--
-- Table structure for table `Employee`
-- 
DROP TABLE IF EXISTS `Employee`;
CREATE TABLE Employee (
  EmployeeID INT NOT NULL PRIMARY KEY,
  EmployeeName VARCHAR(100) NOT NULL UNIQUE,
  Role VARCHAR(100) NOT NULL UNIQUE,
  AnnualSalary INT NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

 
--
-- Data for table `Employee`
--

INSERT INTO `Employee`
VALUES
  (1,'Mario Gollini','Manager',70000),
  (2,'Adrian Gollini','Assistant Manager',65000),
  (3,'Giorgos Dioudis','Head Chef',50000),
  (4,'Fatma Kaya','Assistant Chef',45000),
  (5,'Elema Salvai','Head Waiter',40000),
  (6,'John Millar','Receptionist',35000);
  