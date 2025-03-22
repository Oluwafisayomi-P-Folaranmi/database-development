## **Columns**

Within every table is/are **columns**, also sometimes called **fields** or **attributes**. Each column or field has a unique name and data type. For example, I have a table that contains data on employees in a company. The table organizes the data in the columns such as ID, and roll. And each column can hold different types of data like numeric or string. As thus:

```sql
CREATE TABLE `employees` (
    `employee_id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(50) NOT NULL,
    `date_of_birth` DATE,
    `email` VARCHAR(100) UNIQUE NOT NULL,
    `phone_number` VARCHAR(20),
    `hire_date` DATE NOT NULL,
    `job_title` VARCHAR(100),
    `department_id` INT, ------- Foreign key
    `salary` DECIMAL(10,2),
    `manager_id` INT, ---------- Foreign key
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

**A set of columns or fields form a row**. In relational database terminology, a row is known as a record. So a record is a combination of columns or fields that contain data.

Let's return to columns for a moment. As you now know every column has a data type. The data type of a column defines what type of value a column can hold like: integer, character, date, and time and so on. It's up to the developer to decide the data type for each column. And it's also a guideline for SQL around what data type to expect in each column and how to interact with the underlying data stored physically.

However, data types can vary depending on the database system. For example, you might have different types from MySQL, SQL Server or Access. Always referred to the documentation of the relevant database system to check what data types it supports.

Generally all database systems support string data types for storing characters and strings of characters, numeric data types to store exact or whole numbers and approximate numbers, date and time data types to store information on date and time, and binary data types to store images, files and other information.
