--
-- The database `streaming-database`
--
DROP DATABASE IF EXISTS `streaming-database`
CREATE DATABASE `streaming-database`
USE `streaming-database`;

--
-- The tables
--
--
-- Table `ServiceType`
CREATE TABLE `ServiceType` (
    `ServiceTypeID` INT PRIMARY KEY,
    `ServiceType` VARCHAR(100),
    `Price` MONEY,
    `ConcurrentUsers` INT,
    `FullHD` BIT
);

-- Table `Account`
CREATE TABLE `Account` (
    `AccountID` INT PRIMARY KEY,
    `LoginName` VARCHAR(100),
    `Password` VARBINARY(200),
    `RegisteredEmail` VARCHAR(100),
    `ServiceType` INT
);

-- Table `Profile`
CREATE TABLE `Profile` (
    `ProfileID` INT PRIMARY KEY,
    `ProfileName` VARCHAR(100),
    `Account` INT
);

--
-- Altering the tables to establish the relationships via FOREIGN KEYs
--
ALTER TABLE `Account`
ADD FOREIGN KEY(`ServiceType`)
REFERENCES `Account`(`ServiceTypeID`)
ON DELETE SET NULL;

ALTER TABLE `Profile`
ADD FOREIGN KEY(`Account`)
REFERENCES `Account`(`AccountID`)
ON DELETE SET NULL;

--
-- Populating the tables
--
-- Populating the `ServiceType` table
INSERT INTO `ServiceType` (`ServiceTypeID`, `ServiceType`, `Price`, `ConcurrentUsers`, `FullHD`)
VALUES
    (1, 'Basic', 9.99, 1, 0),
    (2, 'Standard', 14.99, 2, 1),
    (3, 'Premium', 19.99, 4, 1);

-- Populating the `Account` table
INSERT INTO `Account` (`AccountID`, `LoginName`, `Password`, `RegisteredEmail`, `ServiceType`)
VALUES
    (1, 'johndoe', 0x5f4dcc3b5aa765d61d8327deb882cf99, 'john.doe@example.com', 2),
    (2, 'janedoe', 0x202cb962ac59075b964b07152d234b70, 'jane.doe@example.com', 3),
    (3, 'alicew', 0x81dc9bdb52d04dc20036dbd8313ed055, 'alice.wonderland@example.com', 1);

-- Populating the `Profile` table
INSERT INTO `Profile` (`ProfileID`, `ProfileName`, `Account`)
VALUES
    (1, 'John', 1),
    (2, 'Jane', 2),
    (3, 'Alice', 3),
    (4, 'Wonderland', 3);


