CREATE DATABASE  IF NOT EXISTS `college`;
USE `college`;

DROP TABLE IF EXISTS `student`;

CREATE TABLE student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    home_address VARCHAR(255),
    college_address VARCHAR(255),
    contact_number VARCHAR(15),
    department VARCHAR(100)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO student (first_name, last_name, home_address, college_address, contact_number, department)
VALUES
('John', 'Doe', '123 Maple St, Springfield', '45 College Ave, Springfield', '555-1234', 'Computer Science'),
('Jane', 'Smith', '456 Oak St, Springfield', '45 College Ave, Springfield', '555-5678', 'Mechanical Engineering'),
('Michael', 'Johnson', '789 Pine St, Springfield', '45 College Ave, Springfield', '555-9101', 'Electrical Engineering'),
('Emily', 'Davis', '101 Birch St, Springfield', '45 College Ave, Springfield', '555-1121', 'Civil Engineering'),
('Chris', 'Brown', '202 Cedar St, Springfield', '45 College Ave, Springfield', '555-3141', 'Mathematics'),
('Jessica', 'Williams', '303 Elm St, Springfield', '45 College Ave, Springfield', '555-5161', 'Physics'),
('Matthew', 'Jones', '404 Ash St, Springfield', '45 College Ave, Springfield', '555-7181', 'Chemistry'),
('Ashley', 'Garcia', '505 Willow St, Springfield', '45 College Ave, Springfield', '555-9202', 'Biology'),
('David', 'Martinez', '606 Redwood St, Springfield', '45 College Ave, Springfield', '555-1222', 'Economics'),
('Sophia', 'Lopez', '707 Cypress St, Springfield', '45 College Ave, Springfield', '555-3243', 'Philosophy');
