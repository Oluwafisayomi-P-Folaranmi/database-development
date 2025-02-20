# Common SQL Commands

The objective of this reading is to teach you how to name and explain the main commands in SQL. Here you will learn about the main commands used in SQL. At a later stage you will explore relevant examples of how to use these commands with a detailed explanation of the SQL syntax for key operations such as to create, insert, update and delete data in the database. 

The SQL Commands are grouped into four categories: **DDL**, **DML**, **DCL** and **TCL** depending on their functionality, namely the type of operation they’re used to perform.  Let’s explore these commands in greater detail.


## Data Definition Language (DDL)

The SQL DDL category provides commands for defining, deleting and modifying tables in a database. Use the following commands in this category.


### `CREATE` Command

To create the database or tables inside the database


```Sql
CREATE TABLE table_name (
	column_name1 datatype(size), 
	column_name2 datatype(size), 
	column_name3 datatype(size));

```


### `ALTER` Command 

To change the structure of the tables in the database such as changing the name of a table, adding a primary key to a table, or adding or deleting a column in a table.

1. Syntax to add a column into a table:      


```Sql
ALTER TABLE table_name
DROP COLUMN column_name;

```

2. Syntax to add a column into a table:      


```Sql
ALTER TABLE table_name
ADD COLUMN column_name datatype(size);

```

3. Syntax to add a primary key to a table:


```Sql
ALTER TABLE table_name 
ADD PRIMARY KEY (column_name);

```

4. Syntax to add a foreign key

```sql
ALTER TABLE table_name 
ADD FOREIGN KEY (column_name) REFERENCES referenced_table(referenced_column);

```


### `TRUNCATE` Command

To remove all records from a table, which will empty the table but not delete the table itself. Syntax to truncate a table: 

```Sql
TRUNCATE TABLE table_name;

```


### `DROP` Command

To delete a database or a table inside the database. 


```Sql
DROP TABLE table_name;

```


### `COMMENT` Command

To add comments to explain or document SQL statements by using double dash (--) at the start of the line. Any text after the double dash will not be executed as part of the SQL statement. These comments are not there to build the database. They are only for your own use.   


```Sql
-- Retrieve all data from a table
SELECT * FROM table_name;

```


## Data Query Language (DQL)


### `SELECT` Command

To retrieve data from tables in the database. Syntax to select data from a table: 


```Sql
SELECT * 
FROM table_name;

```


## Data Manipulation Language (DML)

The SQL DML commands provide the ability to query, delete and update data in the database.  Use the following commands in this category.


### `INSERT` Command

Purpose: To add records of data into an existing table. 
Syntax to insert data into three columns in a table:


```Sql
INSERT INTO table_name (column1, column2, column3) 
VALUES 
	(value1, value2, value3);

```


### `UPDATE` Command 

To modify or update data contained within a table in the database.


```Sql
UPDATE table_name 
SET column1 = value1, column2 = value2 
WHERE condition;

```


### `DELETE` Command

To delete data from a table in the database. Syntax to delete data:

```Sql
DELETE FROM table_name 
WHERE condition;

```


## Data Control Language (DCL)

You use DCL to deal with the rights and permissions of users of a database system. You can execute SQL commands to perform different types of operations such as create and drop tables. To do this, you need to have user rights set up. This is called user privileges. This category deals with advanced functions or operations in the database. Note that this category can have a generic description of the two main commands. Use the following commands in this category:


### `GRANT` 

Command to provide the user of the database with the privileges required to allow users to access and manipulate the database. 


### `REVOKE` 

Command to remove permissions from any user. 


## Transaction Control Language (TCL)

The TCL commands are used to manage transactions in the database. These are used to manage the changes made to the data in a table by utilizing the DML commands. It also allows SQL statements to be grouped together into logical transactions. This category deals with advanced functions or operations in a database. Note that this category can have a generic description of the two main commands. Use the following commands in this category:

### `COMMIT` 

Command to save all the work you have already done in the database. 

### `ROLLBACK` 

Command to restore a database to the last committed state. 
