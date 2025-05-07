## LEFT JOIN

A `LEFT JOIN` (or **LEFT OUTER JOIN**) in SQL is used to combine records from two tables. It returns:

- **All rows from the left table**, and
- **Matching rows from the right table**, or
- **NULLs** if there’s **no match** in the right table. Given:

```sql
SELECT *
FROM A
LEFT JOIN B ON A.id = B.a_id;
```

- **Table A** is the "left" table.
- **Table B** is the "right" table.
- The `ON` clause defines how rows in A and B should match.

Left JOIN extracts or selects records of data from the left table and **matching records from the right table.**

```sql
SELECT
table1alias.columnname AS 'column 1 name',
table2alias.columnname AS 'column 2 name',
FROM tablename AS table1alias
LEFT JOIN table2name AS table2alias
ON table1alias.columnname = table2alias.columnname;
```
