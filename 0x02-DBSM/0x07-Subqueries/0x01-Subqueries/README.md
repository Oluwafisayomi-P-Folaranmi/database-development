# Overview

A subquery is a query within another query. In other words, it's an inner query placed within an outer query. The inner query is viewed as the child query and the outer query as the parent query. But what does a query within a query look like? Well, the best way to understand the subquery is through its syntax.

The inner query or subquery executes first and its results are then passed to the outer or parent query. You can also build multiple subqueries. The outer query is presented like any normal query. It contains `SELECT`, `FROM`, and `WHERE` clauses. Likewise, the subquery is written as a standard query. However, the subquery must always be placed within a pair of parentheses.


```sql
SELECT column_name(s)
FROM table_name
WHERE expression operator
   (SELECT column_name 
   FROM table_name 
   WHERE condition);

```
 
When executed, a subquery can return any of the following results: 

   + A single value, 
   + A single row, 
   + A single column, or 
   + Multiple rows of one or more columns.


## Subquery Laboratory: Subqueries and Comparison Operator

Your company is reviewing their accounts and need employee's salary data from their database. This data is held in the employees table. We have provided the script to create the employees table in `employees-table.sql` and it's attached to this folder. The table contains four columns: `EmployeeID`, `EmployeeName`, `Role`, and `AnnualSalary`.

We will use this table to identify which employees earn a salary higher than that of the Assistant Chef. You can use a subquery to complete this task. This query can be completed in two parts as follows. The outer or main query mostly extract details of all employees whose annual salary is greater than the specified value. The subquery must identify the annual salary of the Assistant Chef. When executed, the subquery provides a subset of data from the employee's database. This subset of data is then used as an input for the outer query.


```sql
SELECT *
FROM employee
WHERE AnnualSalary > (
   SELECT AnnualSalary 
    FROM employee
    WHERE Role='Assistant Chef');

```

The subquery executes first and extracts the annual salary of the Assistant Chef. This value is now the input for the outer queries `WHERE` clause. Next, the outer query is executed. The outer queries `WHERE` clause filters out the records of all employees earning an annual salary greater than that of the Assistant Chef. In other words, the outer query filters out the values greater than the value retrieved by the subquery. That's an example of how the subquery is used in a database.
