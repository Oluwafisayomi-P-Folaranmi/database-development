DROP DATABASE IF EXISTS `school`;
CREATE DATABASE `school`;
USE `school`;

--
-- The tables
--
-- The 'Professor' table
CREATE TABLE `Professor` (
    `ProfessorID` INT PRIMARY KEY,
    `FirstName` VARCHAR(255),
    `LastName` VARCHAR(255)
);

-- The 'Subject' table
CREATE TABLE `Subject` (
    `SubjectID` INT PRIMARY KEY,
    `SubjectName` VARCHAR(255)
);

-- The 'Professor_Subject' junction table
CREATE TABLE `Professor_Subject` (
    `Professor` INT,
    `Subject` INT,
    PRIMARY KEY (`Professor`, `Subject`),
    FOREIGN KEY (`Professor`) REFERENCES `Professor`(`ProfessorID`),
    FOREIGN KEY (`Subject`) REFERENCES `Subject`(`SubjectID`)
);

--
-- Populating the data
--
-- Insert data into the 'Professor' table
INSERT INTO Professor (ProfessorID, FirstName, LastName)
VALUES
    (1, 'John', 'Doe'),
    (2, 'Jane', 'Smith'),
    (3, 'Emily', 'Jones'),
    (4, 'Michael', 'Brown'),
    (5, 'Laura', 'Taylor'),
    (6, 'Peter', 'Davis');

-- Insert data into the 'Subject' table
INSERT INTO Subject (SubjectID, SubjectName)
VALUES
    (101, 'Mathematics'),
    (102, 'Physics'),
    (103, 'Chemistry'),
    (104, 'Biology'),
    (105, 'History'),
    (106, 'Literature');

-- Insert data into the 'professor_subject' junction table
INSERT INTO professor_subject (Professor, Subject)
VALUES
    (1, 101),  -- John Doe teaches Mathematics
    (1, 102),  -- John Doe also teaches Physics
    (1, 104),  -- John Doe also teaches Biology
    (2, 101),  -- Jane Smith teaches Mathematics
    (2, 103),  -- Jane Smith also teaches Chemistry
    (2, 105),  -- Jane Smith also teaches History
    (3, 102),  -- Emily Jones teaches Physics
    (3, 103),  -- Emily Jones also teaches Chemistry
    (3, 106),  -- Emily Jones also teaches Literature
    (4, 101),  -- Michael Brown teaches Mathematics
    (4, 102),  -- Michael Brown also teaches Physics
    (5, 103),  -- Laura Taylor teaches Chemistry
    (5, 104),  -- Laura Taylor also teaches Biology
    (6, 105),  -- Peter Davis teaches History
    (6, 106);  -- Peter Davis also teaches Literature

------------------------------------------------------------------------------------------------------------------------------------

--
-- Querying
--
-- Get the subjects taken by the professor with: `FirstName` = "John" AND `LastName` = "Doe"
SELECT `Professor`.`ProfessorID` AS "ID",
       CONCAT(`Professor`.`FirstName`, " ", `Professor`.`LastName`) AS "Professor Name",
	   `Subject`.`SubjectID` AS "Subject ID",
	   `Subject`.`SubjectName` AS "Subject Name"
FROM `Professor`
LEFT JOIN `Professor_Subject`
ON `Professor`.`ProfessorID` = `Professor_Subject`.`Professor`
LEFT JOIN `Subject`
ON `Professor_Subject`.`Subject` = `Subject`.`SubjectID`
WHERE `Professor`.`FirstName` = "John" AND `Professor`.`LastName` = "Doe";

-- Get the professors that take Mathematics
--
--
