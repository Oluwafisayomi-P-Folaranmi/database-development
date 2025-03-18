## **Subqueries**

**A subquery is a query within another query.** In other words, it's an inner query placed within an outer query. The inner query is viewed as the child query, and the outer query as the parent query. But what does a query within a query look like? The best way to understand a subquery is through its syntax.

The inner query (subquery) executes first, and its results are then passed to the outer (parent) query. You can also build multiple subqueries. The outer query is structured like a normal query, containing `SELECT`, `FROM`, and `WHERE` clauses. Likewise, the subquery is written as a standard query but must always be placed within parentheses.

```sql
SELECT column_name(s)
FROM table_name
WHERE expression operator
   (SELECT column_name 
   FROM table_name 
   WHERE condition);
```

When executed, a subquery can return any of the following results:

  + ***A single value***
  + ***A single row***
  + ***A single column***
  + ***Multiple rows of one or more columns***

### **Subqueries and Comparison Operators**

Your company is reviewing its accounts and needs employee salary data from the database. This data is stored in the `employees` table. The script to create the `employees` table is available in `employees-table.sql` (attached to this folder). The table contains four columns: `EmployeeID`, `EmployeeName`, `Role`, and `AnnualSalary`.

We will use this table to identify employees earning a salary higher than that of the Assistant Chef. A subquery can be used to complete this task. The query can be divided into two parts:

1. The outer query extracts details of all employees whose annual salary is greater than the specified value.
2. The subquery identifies the annual salary of the Assistant Chef. Once executed, the subquery provides a subset of data from the employees database, which is then used as an input for the outer query.

```sql
SELECT *
FROM employee
WHERE AnnualSalary > (
   SELECT AnnualSalary 
   FROM employee
   WHERE Role = 'Assistant Chef');
```

The subquery executes first, extracting the annual salary of the Assistant Chef. This value is then used as input in the `WHERE` clause of the outer query. Finally, the outer query filters out records of all employees earning an annual salary greater than that of the Assistant Chef. 

This is an example of how subqueries are used in a database.
