

--
-- The tables
--
-- The `Product` table
CREATE TABLE `Product` (
    `ProductID` INT PRIMARY KEY,
    `Price` MONEY
);

-- The `ProductLanguageVersion` table
CREATE TABLE `ProductLanguageVersion` (
    `Product` INT,
    `LanguageVersion` INT,
    `Name` VARCHAR(50),
    `Description` TEXT
);

-- The `LanguageVersion` table
CREATE TABLE `LanguageVersion` (
    `LanguageVersionID` INT PRIMARY KEY,
    `Code` VARCHAR(50),
    `IsDefault` BOOLEAN
);
