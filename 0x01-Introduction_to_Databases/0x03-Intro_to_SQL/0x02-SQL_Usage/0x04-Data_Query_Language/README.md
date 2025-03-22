## **Data Query Language - DQL**

So far, you've learned how to add database and its objects, and manage data within them. So how do you read or retrieve that data? *To read data stored in a database*, you can use data query language.

DQL defines a `SELECT` command to be able to retrieve data. `SELECT` lets you retrieve data from one or multiple tables letting you specify the data fields that you want based on preferred *filter criteria*.

### **DQL**

How would you read data stored in your database tables? That's where SQL Data Query Language (DQL) comes in. The main syntax of DQL is `SELECT`. As its name says, it's used to select data from the database. 

A `SELECT` statement is written using the `SELECT` keyword, followed by the columns that hold the data you required. You then write the `FROM` keyword followed by the name of the table you want to select data from.

As an example, you could use the `SELECT` statement to query the `student` table to find the name of the student with an ID of 1. You just need to add the `WHERE` keyword followed by the student's ID.

```sql
SELECT first_name, last_name,
FROM Student
WHERE column_ID = 01
```

This will then return the name of the student with the ID 01. Let's read the student with the ID of 4:

```sql
SELECT `first_name`, `last_name`
FROM `student`
WHERE `id` = 4;
```

You can also use the wildcard (asterisk) to obtain all the columns:

```sql
SELECT *
FROM `student`
WHERE `id` = 4;
```
