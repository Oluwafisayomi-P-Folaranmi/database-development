CREATE DATABASE  IF NOT EXISTS `college`;
USE `college`;

DROP TABLE IF EXISTS `student`;

--
-- Table structure for table `student`
--
CREATE TABLE student (
	`student_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(50) NOT NULL,
    `second_name` VARCHAR(50) NOT NULL,
    `date_of_birth` DATETIME NOT NULL,
    `home_address` VARCHAR(255) NOT NULL,
    `faculty` VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO student 
VALUES 
	(1, 'Tolu', 'Adesanya', '2000-03-15 08:30:00', '15 Adewale St., Lagos State', 'Computer Science'),
	(2, 'Chinwe', 'Okafor', '1998-06-22 14:45:00', '23 Ngwa Road, Aba, Abia State', 'Biology'),
	(3, 'Emeka', 'Ibe', '1997-11-30 09:20:00', '45 Onitsha Main Market, Onitsha, Anambra State', 'Economics'),
	(4, 'Aisha', 'Bello', '2001-01-25 12:00:00', '78 Sultan Bello Way, Kaduna State', 'Mathematics'),
	(5, 'Yemi', 'Ogunleye', '1999-05-10 16:10:00', '30 Redemption Camp, Mowe, Ogun State', 'Physics');
