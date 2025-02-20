# Overview

The business may have a database table called machinery that records the contact info of all qualified employees. However, the table has issues with its constraints and it's also missing some key information. You can fix these issues by making alterations to the table using the `ALTER` statement. You'll add, delete and modify columns and constraints in an existing table.

You might often encounter tables in a database that contain missing columns or constraints or their existing columns and constraints may need to be modified. You can use the `ALTER TABLE` statement to make these changes.

The `ALTER TABLE` statement is often used alongside different SQL commands. Here's a quick overview of some common commands used with the `ALTER TABLE` statement.


### The `MODIFY` command 

It is used to target specific columns and instruct SQL to make changes to them. For example, you can change the columns data type and add a `NOT NULL` constraint.


```sql
ALTER TABLE table_name
MODIFY column1_name INT NOT NULL,
MODIFY column2_name VARCHAR(255) NOT NULL,
MODIFY column3_name DATE NOT NULL,

```


### The `ADD` command 

This can be used to add a new column to a table. You can also alter a table by adding another column.


```sql
ALTER TABLE table_name
ADD COLUMN column_name;

```


### The `DROP` command 

This can be used to drop or delete a column from the table. To remove a column from a table, just use the DROP command followed by the name of the column you want to drop or delete. 


```sql
ALTER TABLE table_name
DROP COLUMN column_name;

```
