# Laboratory


## Inner JOIN

Lucky Shrub Gardening Center require information on orders recently made by their clients. This information is stored in two separate tables. The clients table and the orders table. But there must be a more efficient way to review this information that doesn't involve using two tables at the same time, right? Thankfully, Lucky Shrub can use the Inner Join clause to return records of data based on a common column with matching values in both tables.


### Identify the full names of all clients who made orders

You can do this using the Inner Join clause in a SQL Select statement.


```sql
SELECT DISTINCT `Clients`.`FullName`
FROM `Clients`
INNER JOIN `Orders`
ON `Clients`.`ClientID` = `Orders`.`ClientID`;

```

You can display the column names with more user friendly labels if required. For instance, you can take the client ID, full name and contact number of columns from the clients table and create a JOIN with the product ID, quantity and total cost column from the orders table. You can do this with the following SQL statement.


```sql
SELECT `Clients`.`FullName` AS "Full Name", `Clients`.`ContactNumber` AS "Phone Number", 
	`Clients`.`Address` AS "Address", `Orders`.`ProductID` AS "Product Code",
    `Orders`.`Quantity` AS "Quantity", `Orders`.`Cost`
FROM `Clients`
INNER JOIN `Orders`
ON `Clients`.`ClientID` = `Orders`.`ClientID`;

```


### Identify the Products and the Clients that Ordered

This is doing the code the other way around


```sql
SELECT `Orders`.`OrderID` AS "Order ID", `Orders`.`ProductID` AS "Product Code",
	`Orders`.`Quantity` AS "Product Quantity", `Orders`.`Cost`,
    `Clients`.`ClientID` AS "Client ID", `Clients`.`FullName` AS "Full Name",
    `Clients`.`ContactNumber` AS "Phone Number", `Clients`.`Address` AS "Address" 
FROM `Orders`
INNER JOIN `Clients`
ON `Clients`.`ClientID` = `Orders`.`ClientID`;

```


## Left and Right JOIN

Looking shrub need to review date on orders made by their clients. This data exists in two separate tables, clients and orders. Lucky stroke can query data from both tables using the left and right join clauses in MySQL. These clauses will work because both tables share several closely connected columns.

The first step is to create a query for the client ID and client-named columns within the client's table, which is the left table. Then you must create a join with the following columns from the order table, the right table, Order ID, quantity, and cost. You can use the left join clause in the SQL statement to complete this task.


```sql
SELECT `Clients`.`FullName` AS "Full Name", `Clients`.`ContactNumber` AS "Phone Number", 
	`Clients`.`Address` AS "Address", `Orders`.`ProductID` AS "Product Code",
    `Orders`.`Quantity` AS "Quantity", `Orders`.`Cost`
FROM `Clients`
LEFT JOIN `Orders`
ON `Clients`.`ClientID` = `Orders`.`ClientID`;

```

The output result table contains several `NULL` values for some clients. This is because they have not yet made any orders.

Next, let's create a similar query using the right join concept. You can use similar syntax to the previous query. Just replace the left keyword with the right keyword. In this statement, clients represents the left table and the orders represents the right table. This is another way of replacing table locations in our inner join code. It means, "Right join Clients on Orders."


```sql
SELECT `Clients`.`FullName` AS "Full Name", `Clients`.`ContactNumber` AS "Phone Number", 
	`Clients`.`Address` AS "Address", `Orders`.`ProductID` AS "Product Code",
    `Orders`.`Quantity` AS "Quantity", `Orders`.`Cost`
FROM `Clients`
RIGHT JOIN `Orders`
ON `Clients`.`ClientID` = `Orders`.`ClientID`;

```

No, `NULL` were printed in the output result table. This is because all clients who made orders already exist in the client's table.


## Self JOIN

The Lucky Shrub database has a table called employees which lists all staff in the business. Some of these staff members are line managers and other employees report to these line managers. Lucky shrub needs to query the data from this table to determine which roles everyone is assigned. They can complete this task using the self join clause, a special joint case. This clause let's Lucky Shrub create a joint between rows on the same table so that they can extract specific information. But the table must be treated as two tables to perform the required joints.

This is the table that stores the required information on employees and their line managers. The table includes five columns, Employee ID, Full name, JobTitle, County and LineManager ID. In this table, the primary key values, EmployeeID, are also used in the LineManagerID column, to show who manages each employee in the Lucky Shrub firm.

So, your main task is to list the full name of all line managers and the employees they manage. The full names of both sets of employees exist within the full name column. To complete this task, you can create the employees table as two identical tables, then create an inner join to investigate each employee ID and match it with the line manager ID. Then extract the full name value and print it as either line manager or employee. And remember, that the line managers are also employees. Before writing the query, remember that the self-joined clause creates two tables from one. In other words, know you're dealing with two tables in your query, not just one.


```sql
SELECT e1.FullName AS "Line Manager", e2.FullName AS "Employee"
FROM `employees` AS e1
INNER JOIN `employees` AS e2
ON e2.`EmployeeID` = e2.`LineManagerID`;

```

In this instance, the condition is e1.EmployeeID = e2.lineManagerID;. In other words the condition matches the employee ID with the line manager ID. If it finds a value of true, then the full name was returned from the left table and displayed in the LineManager column. And the full name is also returned and displayed as an employee from the right table.

A quick summary of the output results set shows that, the employees, Seamus and Greta report to the line manager Simon. Simon reports to himself and all other staff report to Seamus.
