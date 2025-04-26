CREATE DATABASE  IF NOT EXISTS `employee_directory`;
USE `employee_directory`;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;

CREATE TABLE `Employees` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(45) DEFAULT NULL,
  `JobTitle` varchar(45) DEFAULT NULL,
  `County` varchar(45) DEFAULT NULL,
  `LineManagerID` SMALLINT DEFAULT NULL, 
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

--
-- Data for table `Employees`
--

INSERT INTO `order` VALUES 
		(1,'Seamus Hogan','Manager','Pinal County',3), 
		(2,'Thomas Eriksson','Assistant','Pinal County',1),
		(3,'Simon Tolo','Head Chef','Gila County',3),
		(4,'Francesca Soffia','Assistant','Cochise County',1),
		(5,'Emily Sierra','Accountant','Cochise County',1),
		(6,'Greta Galkina','Accountant','Cochise County',3); 

--
-- Table structure for table `EmployeeContactInfo`
--

DROP TABLE IF EXISTS `EmployeeContactInfo`;

CREATE TABLE `EmployeeContactInfo` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `ContactNumber` BIGINT DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  FOREIGN KEY (EmployeeID) REFERENCES Employees(ID)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

--
-- Data for table `EmployeeContactInfo`
--

INSERT INTO `EmployeeContactInfo` VALUES 
		(1,'7044837317','folaranmifisayo@gmail.com'), 
		(2,'8066402373','folaranmibeatrice@gmail.com');
