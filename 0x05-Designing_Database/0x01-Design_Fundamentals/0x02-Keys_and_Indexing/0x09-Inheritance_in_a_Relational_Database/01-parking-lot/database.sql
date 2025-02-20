--
-- The database `parking-lot`
--
DROP DATABASE IF EXISTS `parking-lot`;
CREATE DATABASE `parking-lot`;
USE `parking-lot`;

--
-- The tables
--
-- The `CarOwner` table
CREATE TABLE `CarOwner` (
    `CarOwnerID` INT PRIMARY KEY,
    `LastName` VARCHAR(50),
    `FirstName` VARCHAR(50)
);

-- The `Vehicle` table
CREATE TABLE `Vehicle` (
    -- For `Vehicle` parent table
    `VehicleID` INT PRIMARY KEY,
    `Discriminator` VARCHAR(50),
    `Brand` VARCHAR(50),
    `Model` VARCHAR(20),

    -- For `Car` child table
    `CarID` INT NULL,
    `Seats` INT NULL,
    `CarType` VARCHAR(20) NULL,
    `CarOwner` INT NULL,    -- Foreign key to `CarOwner` table

    -- For `Bike` child table
    `BikeID` INT NULL,
    `WheelSize` INT NULL,
    `BikeType` VARCHAR(20) NULL,

    -- For `Electrical Bike` child table
    `ElectricalBikeID` INT NULL,
    `BatteryChargeTime` TIME NULL,
    `AutonomyTime` TIME NULL
);

--
-- Establishing the relationship between tables
--
ALTER TABLE `Vehicle`
ADD FOREIGN KEY (`CarOwner`) REFERENCES `CarOwner`(`CarOwnerID`)
ON DELETE SET NULL;

--
-- Populating the tables
--
-- Inserting data into `CarOwner`
INSERT INTO CarOwner (CarOwnerID, LastName, FirstName)
VALUES
    (1, 'Smith', 'John'),
    (2, 'Doe', 'Jane'),
    (3, 'Brown', 'Charlie');

-- Inserting data into `Vehicle`
INSERT INTO Vehicle (VehicleID, Discriminator, Brand, Model, CarID, Seats, CarType, CarOwner, BikeID, WheelSize, BikeType, ElectricalBikeID, BatteryChargeTime, AutonomyTime)
VALUES
    (1, 'Car', 'Toyota', 'Corolla', 1, 5, 'Sedan', 1, NULL, NULL, NULL, NULL, NULL, NULL),
    (2, 'Car', 'Honda', 'Civic', 2, 5, 'Sedan', 2, NULL, NULL, NULL, NULL, NULL, NULL),
    (3, 'Car', 'Ford', 'Mustang', 3, 4, 'Coupe', 3, NULL, NULL, NULL, NULL, NULL, NULL),
    (4, 'Bike', 'Giant', 'Defy', NULL, NULL, NULL, 1, 1, 29, 'Road', NULL, NULL, NULL),
    (5, 'Bike', 'Trek', 'Marlin', NULL, NULL, NULL, 2, 2, 27, 'Mountain', NULL, NULL, NULL),
    (6, 'Electrical Bike', 'Specialized', 'Turbo', NULL, NULL, NULL, 3, NULL, NULL, NULL, 1, '02:30:00', '05:00:00'),
    (7, 'Electrical Bike', 'Raleigh', 'Redux', NULL, NULL, NULL, 2, NULL, NULL, NULL, 2, '03:00:00', '06:00:00');

--
-- Getting information from the database
--
SELECT `CarOwnerID`
	--
    --
FROM `CarOwner`
LEFT JOIN `Vehicle`
	ON `CarOwner`.`CarOwnerID` = `Vehicle`.`CarOwner`
WHERE `Vehicle`.`Discriminator` = 'Car';
