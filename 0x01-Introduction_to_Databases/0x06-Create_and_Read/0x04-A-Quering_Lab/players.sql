CREATE TABLE `players` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `age` INT NOT NULL,
    `start_date` DATE NOT NULL,
    PRIMARY KEY (`id`));


INSERT INTO `players` (`name`, `age`, `start_date`) VALUES
    ('John Doe', 25, '2023-01-15'),
    ('Jane Smith', 30, '2022-05-23'),
    ('Michael Johnson', 22, '2023-03-10'),
    ('Emily Davis', 27, '2021-09-12'),
    ('David Brown', 29, '2020-11-05'),
    ('Sarah Wilson', 24, '2023-07-14'),
    ('Chris Taylor', 31, '2022-01-30'),
    ('Jessica Martinez', 26, '2021-06-18'),
    ('Matthew Anderson', 28, '2019-08-25'),
    ('Laura Thomas', 23, '2023-02-05'),
    ('Daniel Lee', 32, '2020-12-09'),
    ('Sophia Harris', 21, '2023-04-22'),
    ('James Clark', 27, '2021-03-16'),
    ('Olivia Lewis', 24, '2022-09-28'),
    ('William Hall', 30, '2019-11-15'),
    ('Mia Young', 26, '2022-07-03'),
    ('Alexander King', 29, '2021-05-19'),
    ('Isabella Scott', 25, '2023-06-27'),
    ('Benjamin Green', 28, '2020-02-14'),
    ('Ava Adams', 23, '2023-08-11');
