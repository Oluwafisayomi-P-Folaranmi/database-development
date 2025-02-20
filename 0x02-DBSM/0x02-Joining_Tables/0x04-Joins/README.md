# Joins

  + Inner JOIN
  + Left JOIN
  + Right JOIN
  + Self JOIN


### Inner JOIN

Inner JOIN extracts or selects records of data that have matching values in both tables.


```sql
SELECT table1_name.column_name
FROM table1_name
INNER JOIN table2_name
ON table1.column_name = table2.column_name;

```


### Left JOIN

Left JOIN extracts or selects records of data from the left table and matching records from the right table.


```sql
SELECT
table1alias.columnname AS 'column 1 name',
table2alias.columnname AS 'column 2 name',
FROM tablename AS table1alias
LEFT JOIN table2name AS table2alias
ON table1alias.columnname = table2alias.columnname;

```


### Right JOIN

Right JOIN extracts or selects records of data from the right table, and matching records from the left table. The right table is the main target table.


```sql
SELECT
table1alias.columnName AS 'column 1 new name',
table1alias.columnName AS 'column 2 new name',
table2alias.columnName AS 'column 3 new name',
FROM tableName AS table1alias
RIGHT JOIN table2name AS table2alias
ON table1alias.columnName = table2alias.columnName

```


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
