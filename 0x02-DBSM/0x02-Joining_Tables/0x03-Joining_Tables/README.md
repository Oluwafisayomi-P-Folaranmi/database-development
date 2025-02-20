# Joining Tables


## What is a JOIN? 

A join in a database links records of data between one or multiple tables based on a common column between them.  

## Why do you need to use a JOIN?

Sometimes you want to find information about a specific activity or object in the database, where the relevant information exists in more than one table. In this situation, you can use the SQL JOIN clause to query the required data from multiple tables. There are four different types of joins supported in MySQL that are covered in this lesson.

  + INNER JOIN 
  + LEFT JOIN 
  + RIGHT JOIN 
  + SELF-JOIN 


## Joining Tables in Real Life

Here are two scenarios where a `JOIN` would be useful between two tables in a database:


### Students and Departments

You have a `student` table that stores student information and a `department` table that holds data about different departments in a college. Each student belongs to a department, and the tables are linked by a `department_id`.

  - student table:  
    `student_id`, `first_name`, `last_name`, `department_id`, `contact_number`
  
  - department table:  
  `department_id`, `department_name`

You want to retrieve a list of students along with the name of their respective departments. You can use an `INNER JOIN` to combine data from the two tables:


```sql
SELECT student.first_name AS "First Name", 
	   student.last_name AS "Last Name",
       department.department_name AS "Department"
FROM student
INNER JOIN department ON student.department_id = department.department_id;

```

The `ON` clause is used to specify the condition that defines how two tables should be joined in a JOIN operation. It helps determine the relationship between the columns of the two tables being combined. It defines which columns from the tables should be matched. This is typically used when two tables are being joined on a foreign key relationship. It ensures that only the rows that satisfy the specified condition are included in the result set.


### Orders and Customers

You have an `orders` table that tracks customer purchases and a `customers` table that holds customer details. The tables are linked by `customer_id`.

  - orders table:  
    `order_id`, `customer_id`, `order_date`, `order_total`
  
  - customers table:  
  `customer_id`, `first_name`, `last_name`, `email`

You want to retrieve all orders placed by customers along with their contact details. This can be achieved with a `LEFT JOIN`:


```sql
SELECT CONCAT(customers.first_name, " ", customers.last_name) AS "Customer's Name",
	   customers.email AS "Email",
       orders.order_id AS "Order ID",
       orders.order_date AS "Date Ordered",
       orders.order_total AS "Total Cost of Order"
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id;

```

This query will return all orders, even if some customers don't have corresponding records in the `customers` table.
