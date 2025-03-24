## **Data Definition Language - DDL**

DDL as the name says helps you define data in your database. But what does it mean to define data? **DDL generally *deals with the data structure of a database***. It works on the structure of the database, and the database objects - like the tables.

Before you can store data in the database. You need to create the database and related objects - tables - in which your data will be stored. For this, the DDL part of SQL has a command named `CREATE`.

Then you might need to modify already created database tables/objects. For example, you might need to modify the structure of a table by adding a new column. You can perform this task with the DDL `ALTER` command.

You can remove an object like a table from a database using the DDL `DROP` command.

### **DDL**

The SQL DDL category provides commands for defining, deleting and modifying tables in a database. Use the following commands in this category.

#### **`CREATE` Command**

To create the database or tables inside the database.

```sql
CREATE TABLE <table_name> (
	<column_name1> datatype(size), 
	<column_name2> datatype(size), 
	<column_name3> datatype(size)
);
```

To create the `student` table:

```sql
CREATE TABLE `student` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(50) NOT NULL,
    `date_of_birth` DATE NOT NULL
);
```

Also the `department` table:

```sql
CREATE TABLE `department` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL UNIQUE,
    `established_year` YEAR,
    `contact_email` VARCHAR(100) UNIQUE,
    `phone_number` VARCHAR(20),
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

#### **`ALTER` Command**

**To change the structure of the tables in the database** such as: changing the name of a table, adding a primary key to a table, or adding or deleting a column in a table.

  1. **Syntax to add a column into a table**:
     ```sql
     ALTER TABLE table_name
     ADD COLUMN column_name datatype(size);
     ```
  2. **Syntax to add a column into a table**:      
     ```Sql
     ALTER TABLE table_name
     DROP COLUMN column_name;
     ```
  3. **Syntax to add a primary key to a table**:
     ```Sql
     ALTER TABLE table_name
     ADD PRIMARY KEY (column_name);
     ```
  4. **Syntax to add a foreign key**:
     ```sql
     ALTER TABLE table_name
     ADD FOREIGN KEY (column_name) REFERENCES referenced_table(referenced_column);
     ```
  5. **Syntax to rename a table**
     ```sql
     ALTER TABLE <old_table_name>
     RENAME TO <new_table_name>;
     ```
  6. **Syntax to rename a table (Recommended)**
     ```sql
     RENAME TABLE <old_table_name>
     TO <new_table_name>;
     ```     

Now, going on some hands-on experience with some DDL commands. The `student` table does not have the `hobby` column. We can add it. To add `hobby` column to the `student` table:

```sql
ALTER TABLE `student`
ADD COLUMN `hobby` VARCHAR(50);
```

If you use the command, `SHOW COLUMNS FROM student` to view the columns in the `student` table, we can see we haven't added the `NOT NULL` contraint on the `hobby` column. We can remove the column and add it again, this time around specifying the `NOT NULL` contraint:

```sql
ALTER TABLE `student`
DROP COLUMN `hobby`;
```

Now, you can add the `hobby` column again:

```sql
ALTER TABLE `student`
ADD COLUMN `hobby` VARCHAR(50) NOT NUll;
```

### **`TRUNCATE` Command**

To remove all records from a table, which will empty the table but not delete the table itself. Syntax to truncate a table: 

```Sql
TRUNCATE TABLE <table_name>;
```

Before we use the `TRUNCATE` command, let's populate the `student`:

```sql
INSERT INTO `student` 
    (`id`, `first_name`, `last_name`, `date_of_birth`, `hobby`)
VALUES 
    (1, 'John', 'Doe', '2002-05-15', 'Reading'),
    (2, 'Jane', 'Smith', '2001-09-22', 'Swimming'),
    (3, 'David', 'Johnson', '2003-03-10', 'Chess');
```

Then, using `TRUNCATE` command, all the records are nullified.

### **`DROP` Command**

To delete a database or a table inside the database. 

```Sql
DROP TABLE <table_name>;
```

### **`COMMENT` Command**

To add comments to explain or document SQL statements by using double dash (--) at the start of the line. Any text after the double dash will not be executed as part of the SQL statement. These comments are not there to build the database. They are only for your own use.   

```Sql
-- Retrieve all data from a table
SELECT * FROM <table_name>;
```
