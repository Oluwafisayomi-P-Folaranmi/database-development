# **Using `SELF JOIN`**

A table is joined with itself to retrieve information that exists in the same table. In other words, **one table is treated as two in order to extract specific information from either the `LEFT JOIN`, `RIGHT JOIN`, or `INNER JOIN`**. The correct syntax for a self join is simply using `JOIN`.

The Lucky Shrub database has a table called `employees` which lists all staff in the business. Some of these staff members are line managers and other employees report to these line managers. Lucky Shrub needs to query the data from this table to determine which roles everyone is assigned.

They can complete this task using the self `JOIN` clause, a special join case. This clause lets Lucky Shrub create a **join between rows on the same table** so that they can extract specific information. But **the table must be treated as two tables** to perform the required joins.

Over the next few minutes, you'll help Lucky Shrub with this query. And by the end of this lesson, you'll be able to apply the self `JOIN` concept in MySQL and use an alias to provide the same table with two different names.

## **Reviewing the `employees` Table**

Let's begin by reviewing the `employees` table from the Lucky Shrub database. This is the table that stores the required information on employees and their line managers. The table includes five columns:

- `EmployeeID`
- `FullName`
- `JobTitle`
- `County`
- `LineManagerID`

In this table, the primary key, `EmployeeID` values, are also used in the `LineManagerID` column, to show who manages each employee in the Lucky Shrub firm.

## **Querying Line Managers and Employees**

Before writing the query, remember that the self `JOIN` clause creates two tables from one. In other words, **you're dealing with two tables in your query, not just one.**

You can do this with the following SQL statement:

```sql
SELECT  `employees`.`employee_id` AS "Employee Id", `employees`.`full_name` AS "Full Name",
		`employees`.`job_title` AS "Job Title", `employees`.`county` AS "County",
        `managers`.`employee_id` AS "Line Manager Id", `managers`.`full_name` AS "Line Manager Full Name",
		`managers`.`job_title` AS "Line Manager Job Title", `managers`.`county` AS "Line Manager County"
FROM `employees` AS `employees`
LEFT JOIN `employees` AS `managers`
ON `employees`.`line_manager_id` = `managers`.`employee_id`;
```

Let's treat this as a **referential problem**. A referential problem could involve **issues related to foreign keys and how tables relate to one another**. In our case, it involves relationships between two `employees` entities (since **you're dealing with two tables in your query, not just one**).

Treating a **self** `JOIN` task as a **referential problem** means approaching it in the same way you'd approach a relationship between two different tables — but in this case, the references are **within the same table.** We can say at this stage that, it involves relationships between two tables: `employees` and `managers`.

Not every employee will have a manager, and not every employee will have a manager. We understand.

Using the condition `employees`.`line_manager_id` = `managers`.`employee_id;`, we specify the common column between our ***abstract*** tables.

Press Enter to execute the query. The output result set links the line managers with the employees they manage.

## **Summary**

A quick summary of the output result set shows that:

- The employees, Seamus and Greta report to the line manager Simon.
- Simon reports to himself.
- All other staff report to Seamus.

Thanks to the `SELF JOIN` clause, Lucky Shrub has now determined which employee is in which role.

How about to list the Line Managers first? You can do this with the following SQL statement:

```sql
SELECT  `managers`.`employee_id` AS "Line Manager Id", `managers`.`full_name` AS "Line Manager Full Name",
		`managers`.`job_title` AS "Line Manager Job Title",
        `employees`.`employee_id` AS "Employee Id", `employees`.`full_name` AS "Full Name",
		`employees`.`job_title` AS "Job Title", `employees`.`county` AS "County"
FROM `employees` AS `managers`
LEFT JOIN `employees` AS `employees`
ON `managers`.`employee_id` = `employees`.`line_manager_id`;
```

This is self-explanatory.

And you should now be able to apply the `SELF JOIN` concept in MySQL and use aliases to provide the same table with two different names. Good work.
