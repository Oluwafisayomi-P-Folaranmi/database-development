# **Laboratory**

## **✅ Lucky Shrub Restaurant**

**Grouping Data:**

### **Task 1:**

Write a SQL SELECT statement to group all records that have the same order date.

### **Task 2:**

Write a SQL SELECT statement to retrieve the number of orders placed on the same day.

### **Task 3:**

Write a SQL SELECT statement to retrieve the total order quantities placed by each department.

### **Task 4:**

Write a SQL SELECT statement to retrieve the number of orders placed on the same day between the following dates: 1st June 2022 and 30th June 2022.


## **✅ Lucky Shrub Restaurant**

Lucky Shrub gardening center's database stores data on their employees, customer orders and the details of orders handled by employees.

  + The Lucky Shrub database contains a table called orders that stores data about orders placed by different departments.
  + There’s also the employees table that stores data about Lucky Shrub’s employees.
  + There’s an employee_orders table that stores data about the employees who are handling the orders.

You will find the script to create the table and data for the tasks. It is in `luckyshrub_restaurant_new_db`.

### **Task1:**

Use the ANY operator to identify all employees with the Order status 'Completed'. 

```sql
-- Use the ANY operator to 
-- identify all employees with the Order status 'Completed'.
SELECT *
FROM `employees`
WHERE `employee_id` = ANY (
	SELECT `employee_id`
    FROM `employees_orders`
    WHERE `status` = 'Completed'
);
```

### **Task 2:**

Use the ALL operator to identify the IDs of employees who earned a handling cost of "more than 20% of the order value" from all orders they have handled.

```sql
-- Use the ALL operator to identify
-- the IDs of employees 
-- who earned a handling cost of "more than 20% of the order value" from all orders they have handled
SELECT `employee_id`, `handling_cost`
FROM `employees_orders`
WHERE `handling_cost` > ALL (
	SELECT ROUND(`order_total`/100 * 20)
    FROM `orders`
);
```

The result that’s returned by this query contains seven records, all from the same employee ID.

The same employee ID is repeated here because this employee has handled 7 orders. For all those orders, the employee has earned a handling cost of $300.

### **Task 3:**

Use the GROUP BY clause to summarize the duplicate records with the same column values into a single record by grouping them based on those columns.

```sql
-- Use the GROUP BY clause to 
-- summarize the duplicate records with the same column values into a 
-- single record by grouping them based on those columns.
SELECT `employee_id`, `handling_cost`
FROM `employees_orders`
WHERE `handling_cost` > ALL (
	SELECT ROUND(`order_total`/100 * 20)
    FROM `orders`
)
GROUP BY `employee_id`, `handling_cost`;
```

Note that the data has been grouped by the two columns that have the same (or duplicate) values, which are EmployeeID and HandlingCost.

### **Task 4:**

Use the HAVING clause to filter the grouped data in the subquery that you wrote in task 3 to filter the 20% OrderTotal values to only retrieve values that are more than $100.

```sql
-- Use the HAVING clause to 
-- filter the grouped data in the subquery that you wrote in task 3 to 
-- filter the 20% OrderTotal values to only retrieve values that are more than $100.
SELECT `employee_id`, `handling_cost`
FROM `employees_orders`
WHERE `handling_cost` > ALL(
	SELECT ROUND(`order_total`/100 * 20) AS `twentyPercent`
    FROM `orders`
    GROUP BY `order_total`
    HAVING `twentyPercent` > 100
)
GROUP BY `employee_id`, `handling_cost`;
```
