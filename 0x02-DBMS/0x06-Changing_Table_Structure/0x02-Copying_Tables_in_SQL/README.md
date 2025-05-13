# **Copying Tables in SQL**

Lucky Shrub are planning **an overhaul of their database — to thoroughly examine and make necessary changes or repairs to improve the database.** In preparation, they want to create copies of their data to keep it safe during the rebuild. They can complete this task using the copy table process.

Over the next few minutes, you'll learn about the process for copying a table and then help Lucky Shrub to copy tables in their database. By the time you complete this lesson, you will have learned how to:

- Copy data from an existing table to a new table within the same database  
- Copy a table to a new location while ensuring it retains its constraints  
- Copy data from an existing table to a new table from a different database  

These tasks are carried out using the `CREATE TABLE` syntax. However, before you explore this syntax, let's take a moment to review the process for copying tables.

## **Table Copying Process**

It's important that you're familiar with the process before you begin copying tables.

1. Identify the database and the table you want to copy the data from.
2. Determine **the columns you want to copy** — either all columns or just some of them.
3. **Use the `CREATE TABLE` statement to build a new table** with a relevant table name.
4. **Use the `SELECT` command to structure the new table** by specifying the columns you want to copy data from.

## **Syntax for Copying Tables**

The **copy table SQL statement** begins with the `CREATE TABLE` command, followed by the name of your new table.  

Next, write the `SELECT` command, then identify the columns to be copied. You can copy one, several, or all columns.  

Finally, use the `FROM` command followed by the name of the existing table you want to copy.

```sql
CREATE TABLE `new_table_name`
SELECT `column_1`, `column_2`, `column_3`, ...
FROM `old_table_name`;
```

### **Copying Between Databases**

To copy a table between two different databases:

1. **Begin with a `CREATE TABLE` command.**
2. **Use dot notation to identify the names** of the new database and table.
3. **Use the `SELECT` command** to select the existing table's columns.
4. **Use the `FROM` clause,** followed by another instance of dot notation that identifies the names of the existing table and database to be copied.

```sql
CREATE TABLE `new_db`.`new_table_name`
SELECT `column_1`, `column_2`, `column_3`, ...
FROM `old_db`.`old_table_name`;
```

## **Practical Examples for Lucky Shrub**

Lucky Shrub are now ready to begin copying tables in their database. They want to carry out the process as follows:

1. Copy the `clients` table to a new table called `ClientsTest` in the same database. Here, we used pascal case, so as to differentiate old tables from new tables. 
2. Copy a few select columns to another table: `client_id`, `full_name`, `phone_number`.
3. Ensure that all constraints from the original table are copied over to the new one.
4. Copy a table from one database to another.

### **Step 1: Copy All Columns in Same Database**

To create a full copy:

```sql
CREATE TABLE `ClientsTest` AS
SELECT *
FROM `clients`;
```

### **Step 2: Copy Select Columns with a Condition**

Create a table with only `fullName` and `phone_number` for employees in "Pinal County":

```sql
CREATE TABLE `ClientsTest2` AS
SELECT `fullName`, `phone_number`
FROM `clients`
WHERE Location = 'Pinal County';
```

### **Step 3: Ensure Constraints are Retained**

Check constraints in original table:

```sql
SHOW COLUMNS FROM clients;
```

Check constraints in copied table:

```sql
SHOW COLUMNS FROM ClientsTest;
```

To copy constraints:

```sql
CREATE TABLE ClientsTest3 LIKE clients;
```

Verify:

```sql
SHOW COLUMNS FROM ClientsTest3;
```

In some MySQL versions, `CREATE TABLE ... LIKE` does not copy foreign keys by default. You may need to:

+ Re-create foreign key constraints manually using `ALTER TABLE`, or
+ Use a tool (like mysqldump or database-specific export utilities) that includes foreign keys.

### **Step 4: Copy Table Between Databases**

Copy from `lucky_shrub_garden.clients` to `test_db.ClientsTest`:

```sql
CREATE TABLE `test_db`.`ClientsTest` AS
SELECT *
FROM `lucky_shrub_garden`.`clients`;
```

Verify by switching to the new database and listing tables:

```sql
USE `test_db`;
SHOW TABLES;
```

## **Summary**

Lucky Shrub now have all the required copies of their tables in their database. You should now be able to:

* Copy data from an existing table to a new table within the same database
* Copy a table to a new location while ensuring it retains its constraints
* Copy data from an existing table to a new table from a different database

Great work.
