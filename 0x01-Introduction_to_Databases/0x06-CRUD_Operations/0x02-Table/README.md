# Tables

Building a database involves working with substantial amounts of data. But how do you organize your data so that you can find exactly what you need and make sense of it. With SQL, you can create a table within your database to hold and organize your data. Let's begin with a look at the SQL create table statement syntax.


```sql
CREATE TABLE <table_name>;

```

Now that you're familiar with the syntax, let's look at it in action. Be aware that before you can create tables, you must already have a database on the server. In other words, you can't build tables if there's no database to create them in. Let's assume that I already have a database ready to work with. In this example, I'll create a customer table in the bookstore database to store customer data like names and phone numbers


```sql
CREATE TABLE customers (
	customerName VARCHAR(100),
	phoneNumber INT
	);

```


## Altering Table

No table is ever static. Database developers are always restructuring tables. Sometimes they need to add new columns, delete old ones, or edit the data they contain. You can complete many of these basic restructuring actions using sequel syntax. Now you'll learn how to alter a database table by adding and removing columns and modify the attributes of a database table. 

The first part of an `ALTER` statement is the `ALTER TABLE` keywords. These keywords informed the database that there was a table whose contents must be altered. This is followed by the name of the table to be altered. I then include the `ADD` keyword. This keyword tells sequel that there's one or more items to be added to the table. There are other keywords I could include here instead. But for the purposes of this example I'll work with `ADD`. Finally I insert a pair of parentheses within these parentheses. I declare the name of a new column to be added to the table along with this data type.

Now that you're familiar with the alter-table statement, let's explore an example of the statement in action. In my example I have a `students` table located within a database called `college`. My `students` table holds information on their IDs, names, and emails of each student in a college. The script to create this table is provide in the folder.


### `ADD`

I can demonstrate the `ALTER` statement by adding, deleting, and modifying columns in this table. My first task is to add three new columns to the table: `age`, `nationality`, and `country`. To add these columns using sequel syntax.


```sql
ALTER TABLE students
ADD (
	age INT NOT NULL,
	country VARCHAR(50) NOT NULL DEFAULT "United States of America",
	nationality VARCHAR(255) NOT NULL DEFAULT "United States of America"
);
```


### `DROP`

From the previous alter transaction, `country` and `nationality` are very similar columns and in most cases will probably hold the same type of information so I can write a SQL statement to remove the nationality column just like the last example.


```sql
ALTER TABLE students
DROP COLUMN `nationality`;

```

This command instructs SQL to delete or drop this column from the table. The nationality column has now been dropped.


### `MODIFY`

Now it's time to alter the structure of the table. The country column has a limit of 50 characters just as I said it originally. Now I'm going to change it so that it holds 100 characters instead using the alter table command. I start with the syntax altar table:


```sql
ALTER TABLE students 
MODIFY country VARCHAR(300);

```
