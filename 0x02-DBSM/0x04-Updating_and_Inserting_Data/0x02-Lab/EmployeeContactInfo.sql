CREATE DATABASE  IF NOT EXISTS `employee_directory`;
USE `employee_directory`;

--
-- Table structure for table `EmployeeContactInfo`
--

DROP TABLE IF EXISTS `EmployeeContactInfo`;

CREATE TABLE `EmployeeContactInfo` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `ContactNumber` BIGINT DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

--
-- Data for table `EmployeeContactInfo`
--

INSERT INTO `EmployeeContactInfo` VALUES 
		(1,'7044837317','folaranmifisayo@gmail.com'), 
		(2,'8066402373','folaranmibeatrice@gmail.com');
