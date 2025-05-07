CREATE DATABASE IF NOT EXISTS `school-db`;
USE `school-db`;


-- Create the Students table
CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    GPA DECIMAL(3, 2)
);

-- Insert 70 records into the Students table
INSERT INTO Students
VALUES
    (1, 'John Doe', 3.50), (2, 'Jane Smith', 3.80), (3, 'Michael Johnson', 2.90), (4, 'Emily Davis', 3.40),
    (5, 'David Brown', 3.75), (6, 'Sarah Wilson', 3.65), (7, 'James Clark', 2.70), (8, 'Olivia Lewis', 3.90),
    (9, 'Daniel Walker', 3.20), (10, 'Sophia Hall', 3.60), (11, 'Matthew Young', 3.10), (12, 'Emma King', 3.85),
    (13, 'Noah Wright', 3.30), (14, 'Mia Green', 3.70), (15, 'William Scott', 2.80), (16, 'Ava Adams', 3.95), 
    (17, 'Benjamin Baker', 3.25), (18, 'Isabella Nelson', 3.55), (19, 'Elijah Carter', 2.95), (20, 'Charlotte Mitchell', 3.45),
    (21, 'Lucas Perez', 3.50), (22, 'Amelia Roberts', 3.80), (23, 'Mason Turner', 3.00), (24, 'Harper Phillips', 3.65),
    (25, 'Logan Campbell', 2.85), (26, 'Evelyn Parker', 3.75), (27, 'Alexander Evans', 3.40), (28, 'Abigail Edwards', 3.50),
    (29, 'Jacob Collins', 3.30), (30, 'Ella Stewart', 3.60), (31, 'Jackson Morris', 2.90), (32, 'Lily Rogers', 3.55), 
    (33, 'Aiden Reed', 3.25), (34, 'Chloe Cook', 3.35), (35, 'Carter Bailey', 3.45), (36, 'Sofia Howard', 3.10),
    (37, 'Sebastian Ramirez', 2.70), (38, 'Zoe Price', 3.50), (39, 'Jack Cooper', 3.80), (40, 'Aria Richardson', 3.20),
    (41, 'Lucas Ward', 2.95), (42, 'Mila Cox', 3.90), (43, 'Henry Diaz', 3.65), (44, 'Riley Perry', 3.40),
    (45, 'Liam Powell', 2.85), (46, 'Avery Bell', 3.30), (47, 'Ethan Murphy', 3.75), (48, 'Scarlett Bailey', 3.85),
    (49, 'Samuel Rivera', 3.20), (50, 'Madison Kelly', 3.50), (51, 'Gabriel Cooper', 3.25), (52, 'Grace Lee', 3.70),
    (53, 'Anthony Martin', 2.90), (54, 'Victoria Sanders', 3.55), (55, 'Andrew Price', 3.40), (56, 'Zoey Jenkins', 3.00),
    (57, 'Joshua Long', 2.80), (58, 'Lillian Scott', 3.50), (59, 'Dylan Lewis', 3.60), (60, 'Natalie Hill', 3.30),
    (61, 'Luke Torres', 3.10), (62, 'Ella Green', 2.95), (63, 'Owen Bryant', 3.85), (64, 'Leah Thompson', 3.45),
    (65, 'Grayson Wood', 3.15), (66, 'Emily Brooks', 3.65), (67, 'Ryan Foster', 2.85), (68, 'Samantha Bell', 3.50),
    (69, 'Landon Hayes', 3.35), (70, 'Victoria Collins', 3.75);
