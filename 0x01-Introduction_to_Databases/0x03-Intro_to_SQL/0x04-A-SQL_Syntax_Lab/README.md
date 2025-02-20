# Introduction to SQL Syntax 

As you already know, you can interact with the database using SQL. But just like with other coding languages, you need experience with SQL syntax and it's subsets before we can make use of it.

In order to demonstrate SQL syntax and it subsets, we will show the SQL commands that can be used to develop a database for a college.


## DDL 

The first task is to create the database. To do this, I use the create statement using SQL DDL subset. Let's create a college database as an example. Using the SQL DDL syntax, create the database `college`. 


```Sql
CREATE DATABASE college;

```

Once you've created a database, the next step is to create the tables. You can create tables using the `CREATE TABLE` syntax. I can use this syntax to create a `Student` table in the `college` database. This table will hold information on each student. Just repeat the same steps for each new table you want to add to your database.


```Sql
CREATE TABLE Student;

```


## DML 


### `INSERT INTO`

Now I need to populate the table with data. This is where I can use the data manipulation language or DML subset of SQL. To add table data, I use the `INSERT INTO` syntax.


```Sql
INSERT INTO table_name (column_1, column_2, column_3, column_4) 
VALUES (
  value_1, value_2, vaalue_3, value_4);

```

This inserts rows of data (or a record) into a given table. As an example, let's add data to the `Student` table in our `college` database. Populate the table with the required data.


```Sql
INSERT INTO Student (column_ID, first_name, last_name, date_of_birth) 
VALUES (
  1,'Oluwafisayomi','Folaranmi','08-10-99');

```


### `UPDATE`

But what if I need to update or modify data? For example, let's say I've input the wrong date of birth for a student. To change this data, I can use the `UPDATE` syntax, which is part of the DML subset of SQL. Add the `WHERE` clause and a condition to filter the records needed. `For example, to change the data for the student with the column ID of 2, I can type the listing below.


```Sql
UPDATE Student 
SET date_of_birth = '2000-10-12' 
WHERE column_ID = 02;

```


### `DELETE`

It's also possible to delete data from a table. Let's delete the table record for the student with the ID of 3 using the `DELETE` syntax. First I type: 

```Sql
DELETE FROM Student 
WHERE ID = 03;

```

The first line tells my SQL where the data must be deleted from. This is followed by the `WHERE` clause and a condition such as ID = 3, which will remove all data on row 3 of the table. I can instruct my SQL to remove the data of the student on row 3. Once I run this statement, the students data is removed from my table. 


## DQL 

How would you read data stored in your database tables? That's where SQL Data Query Language (DQL) comes in. The main syntax of DQL is `SELECT`. As its name says, it's used to select data from the database. 

A `SELECT` statement is written using the `SELECT` keyword, followed by the columns that hold the data you required. You then write the `FROM` keyword followed by the name of the table you want to select data from. As an example, you could use the `SELECT` statement to query the `Student` table to find the name of the student with an ID of 1. You just need to add the where keyword followed by the student's ID.

```Sql
SELECT first_name, last_name,
FROM Student
WHERE column_ID = 01

```

This will then return the name of the student with the ID 01.


## Utility Commands

  + Start the shell

  After installing, MySQL will forget our password. You can go to the Services application and start the MySQL application. Then go to the Command Line and run these commands that follow.

  ```shell
  PS C:\Users\DELL7390> mysql -u root -p
  Enter password: **********************

  ```

  + Show the existing databases/schema:

  ```shell
  SHOW DATABASES;

  ```

  + Select a databases/schema,

  ```shell
  USE <databases/schema_name>;

  ```

  + Show the tables/objects in a databases/schema:

  ```shell
  SHOW TABLES;

  ```

  + Show the columns from a table:

  ```shell
  SHOW COLUMNS FROM <table_name>
  
  ```

  + Select all the records in a tables:

  ```shell
  SELECT count(*) FROM <table_name>;
  
  ```

  + Select the first 10 records in a tables:

  ```shell
  SELECT * FROM <table_name> LIMIT 10;
  
  ```
