### Right JOIN

Right JOIN extracts or selects records of data from the right table, and matching records from the left table. The right table is the main target table.

A **RIGHT JOIN** returns:

- **All records from the right table**,  
- **And the matching records from the left table**,  
- If **there is no match**, the result is `NULL` on the side of the left table.

```sql
SELECT
table1alias.columnName AS 'column 1 new name',
table1alias.columnName AS 'column 2 new name',
table2alias.columnName AS 'column 3 new name',
FROM tableName AS table1alias
RIGHT JOIN table2name AS table2alias
ON table1alias.columnName = table2alias.columnName
```
