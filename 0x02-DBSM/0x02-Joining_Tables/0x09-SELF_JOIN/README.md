### Self JOIN

A table is joined with itself to retrieve information that exists in the same table. In other words, one table is treated as two in order to extract specific information from either the LEFT, RIGHT or INNER JOIN.

In the case of a company, the business holds records of all staff members in the staff table. The table contains records on sales floor, employees and line managers. The company can treat the table as two tables to determine who is a line manager and who is the sales floor employee.

```sql
SELECT
tableName.column_name AS 'alias',
tableName2.column_name AS 'alias2'
FROM tableName AS tableName1
INNER JOIN table AS tableName2
ON tableName.column_name = tableName2.column_name;
```
