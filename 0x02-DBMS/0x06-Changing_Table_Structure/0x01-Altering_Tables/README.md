# **Altering Tables**

Lucky Shrub Gardening Center has bought new heavy machinery, but it can only be operated by qualified employees. The business has a database table called `machinery` that records the contact info of all qualified employees. **However, the table has issues with its constraints and it's also missing some key information.**

Lucky Shrub can fix these issues by making alterations to the table using the `ALTER` statement.

Over the next few minutes, you'll learn about the `ALTER` statement and then use what you've learned to help Lucky Shrub `ALTER` their database. And by the end of this lesson, you'll be able to add, delete and modify columns and constraints in an existing table.

## **Overview of the `ALTER` Statement**

Let's begin with an overview of the `ALTER` statement and its syntax.

**You might often encounter tables in a database that contain missing columns or constraints or their existing columns and constraints may need to be modified.** You can use the `ALTER TABLE` statement to make these changes.

The `ALTER TABLE` statement is often used alongside different SQL commands. Here's a quick overview of some common commands used with the `ALTER TABLE` statement:

- **The `MODIFY` command** is used to target specific columns and instruct SQL to make changes to them.
- **The `ADD` command** can be used to add a new column to a table.
- **The `DROP` command** can be used to drop or delete a column from the table.

So, how are these commands used to make alterations to a table?

The `ALTER TABLE` statement begins with the `ALTER` and `TABLE` clauses followed by the name of the table to be altered. Next, insert a `MODIFY` command followed by the name of the column to be altered and the changes to be made. For example, you can change the column's data type and add a `NOT NULL` constraint. Then repeat the `MODIFY` command for all other columns you want to alter.

```sql
ALTER TABLE `table_name`
MODIFY `column_name` VARCHAR(10) NOT NULL;
```

You can also alter a table by adding another column. Just use the `ADD COLUMN` command followed by the name of the new column.

```sql
ALTER TABLE `table_name`
ADD COLUMN `column_name`;
```

To remove a column from a table, just use the `DROP` command followed by the name of the column you want to drop or delete.

```sql
ALTER TABLE `table_name`
DROP `column_name`;
```

## **Helping Lucky Shrub Update the `machinery` Table**

Now that you're familiar with the `ALTER TABLE` statement, see if you can help Lucky Shrub make the required changes to their table.

The tasks that Lucky Shrub need to complete are as follows:

- Set the `employee_id` column as the primary key
- Change the column constraints
- Add a new column to the table

Let's get started.

Lucky Shrub’s `machinery` table includes four columns: `employee_id`, `full_name`, `phone_number`, and `county`. The table is missing a primary key.

```sql
CREATE TABLE `machinery` (
    `employee_id` VARCHAR(10) NOT NULL,
    `full_name` VARCHAR(100),
    `phone_number` INT UNIQUE,
    `county` VARCHAR(50)
);
```

Fortunately, the `employee_id` column is the perfect candidate because all values are unique. To set this column as the primary key, you can write an `ALTER TABLE` statement. Add the `ALTER TABLE` clauses followed by the table name, then write the `MODIFY` command and the `employee_id` column name.

Next, set the data type as `VARCHAR` with a character limit of 10, then set a `NOT NULL` value to ensure that the column always contains data. Finally, add the `PRIMARY KEY` value to the column. The `employee ID` column is now the table's primary key.

```sql
ALTER TABLE `machinery`
MODIFY `employee_id` VARCHAR(10) PRIMARY KEY NOT NULL;
```

It looks like each column in the table is also set to accept `NULL` values. This means the table can contain empty fields or rows, which is poor practice in a database.

So to change all columns to `NOT NULL`, you can write another `ALTER TABLE` statement. In fact, you can use the same statement as before and just add a new line for each column.

- For the `full_name` and `county` columns, you can write the following syntax: Add a `MODIFY` command, set the `VARCHAR` data type to 100, and a value of `NOT NULL`.
- For the `phone_number` column, you can write the same syntax but with `INTEGER` and `UNIQUE` values. This means that the column now accepts `UNIQUE` numeric values only. This avoids any duplicate values.

```sql
ALTER TABLE `machinery`
MODIFY `full_name` VARCHAR(100) NOT NULL, MODIFY `county` VARCHAR(100) NOT NULL, MODIFY `phone_number` INT UNIQUE NOT NULL;
```

### **Viewing the New Table Structure**

To view the new table structure, write the following statement:

```sql
SHOW COLUMNS FROM machinery;
```

This query’s output shows that the `employee_id` is now set as the primary key. The `phone_number` is a `UNIQUE` value and all columns are set as `NOT NULL`.

## **Adding the `age` Column**

Now, your final task is to add a new column to the table.

Lucky Shrub’s machinery can only be operated by employees aged 18 and over. So, the company needs to identify each employee's age and determine who is old enough to operate the machinery.

There is currently no `age` column in the table, so you'll need to create it and add a constraint to ensure every new employee added to the table is at least 18 years old.

You can write the statement as follows:

* `ALTER TABLE` followed by the `machinery` table name
* Then the `ADD COLUMN` command

Next, call the new column `age` and assign it an `INTEGER` value. Finally, use the `CHECK` function to limit the values in this column to at least 18 or more.

```sql
ALTER TABLE `machinery`
ADD COLUMN `age` INT NOT CHECK(`age` >= 18)
```

Then click enter to execute the query.

### **Viewing the Final Table Structure**

To view the table's new structure, write:

```sql
SHOW COLUMNS FROM machinery;
```

The output now displays the `machinery` table with a new `age` column.

Thanks to your help, all the required changes have now been made to Lucky Shrub’s `machinery` table. You should now be able to use the `ALTER TABLE` clause to add, delete and modify columns and constraints in an existing table. Great work.
