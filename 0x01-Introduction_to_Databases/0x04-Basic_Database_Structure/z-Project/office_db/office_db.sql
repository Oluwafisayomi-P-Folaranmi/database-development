DROP DATABASE IF EXISTS `office_db`;
CREATE DATABASE `office_db`;
USE `office_db`;

--
-- Table `EmployeeDepartmentAssignments`
--
CREATE TABLE `EmployeeDepartmentAssignments` (
    `EMP_ID` INT,
    `DEPT_ID` INT,
    `Assignment_Date` DATE,
    `Role` VARCHAR(50),
    PRIMARY KEY (`EMP_ID`, `DEPT_ID`)
);    

-- Data for table `EmployeeDepartmentAssignments`
INSERT INTO `EmployeeDepartmentAssignments` (`EMP_ID`, `DEPT_ID`, `Assignment_Date`, `Role`)
VALUES
    (1, 101, '2024-01-10', 'Manager'),
    (2, 102, '2024-02-15', 'Analyst'),
    (3, 103, '2024-03-20', 'Developer'),
    (1, 104, '2024-04-25', 'Consultant'),
    (2, 105, '2024-05-30', 'Intern');

