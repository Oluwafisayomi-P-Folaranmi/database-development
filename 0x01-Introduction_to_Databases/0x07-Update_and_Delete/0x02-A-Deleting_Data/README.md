# Deleting Data

In this example, I'll demonstrate how to delete a single record from a table in a database. I'm using the `student` table from our `college` database and deleting the record of a student with the last name of "Miller". The script to use to create the database and the table is attached to this folder.


```sql
DELETE FROM student
WHERE last_name = "Smith";

```

Let's explore another example this time by deleting multiple records from the student table. Now I want to delete the records for the two students within the `engineering` department. The beginning of the statement is the same as the previous example.


```sql
DELETE FROM student
WHERE department = "engineering";

```

The `WHERE` clause is the key difference in this example. This instructs SQL to identify all records that have a value of engineering within the department column and remove those rows from the table. But I need to be careful. If I don't correctly specify the `WHERE` clause, then all the records in the table will be deleted.

Finally, let's quickly explore how to delete all records from a table. In this task, the syntax remains largely the same as in the previous examples. The key difference is that I removed the `WHERE` clause so that now by syntax, just state,


```sql
DELETE FROM student

```
