## **Data Manipulation Language - DML**

Data manipulation language or DML commands are *used to manage data* in the database, like inserting, updating or deleting data. Most CRUD operations fall under DML.

To add data to a table, you can use the `INSERT` command. This command lets you specify the fields to add data to along with the values to be inserted.

If you need to edit data that's already inserted into a table, just deploy the `UPDATE` command.

And you can specify data to be removed by using the `DELETE` command.

### **DML**

#### **`INSERT INTO`**

Now I need to **populate the table with more data**. This is where I can use the data manipulation language or DML subset of SQL. To add table data, I use the `INSERT INTO` syntax.

```sql
INSERT INTO <table_name> (<column_1>, <column_2>, <column_3>, <column_4>) 
VALUES
    (<value_1>, <value_2>, <value_3>, <value_4>);
```

This inserts rows of data (or a record) into a given table. As an example, let's add data to the `student` table in our `college` database. Populate the table with the required data of a student whose first name, "Oluwafisayomi"; second name, "Folaranmi"; date of birth is "1999-10-08", and hobby, "coding".

```sql
INSERT INTO `student` 
    (`first_name`, `last_name`, `date_of_birth`, `hobby`)
VALUES 
    ('Oluwafisayomi', 'Folaranmi', '1999-10-08', 'Coding');
```

Since, the `id` attribute is on `AUTO_INCREMENT`, we don't need to add it to our statement.

#### **`UPDATE`**

But what if I need to update or modify data? For example, let's say I've input the wrong date of birth for a student. To change this data, I can use the `UPDATE` syntax, which is part of the DML subset of SQL. Add the `WHERE` clause and a condition to filter the records needed. `For example, to change the data for the student with the column ID of 2, I can type the listing below.


```sql
UPDATE Student 
SET date_of_birth = '2000-10-12' 
WHERE column_ID = 02;
```

Let's set Oluwafisayomi's hobby to "Reading":

```sql
UPDATE `student`
SET `hobby` = "Reading"
WHERE `id` = 4;
```

#### **`DELETE`**

It's also possible to delete data from a table. Let's delete the table record for the student with the ID of 3 using the `DELETE` syntax. First I type: 

```sql
DELETE FROM Student 
WHERE ID = 03;
```

The first line tells my SQL where the data must be deleted from. This is followed by the `WHERE` clause and a condition such as ID = 3, which will remove all data on row 3 of the table. I can instruct my SQL to remove the data of the student on row 3. Once I run this statement, the students data is removed from my table. 

Before we delete a record, let's duplicate the last student, so we can delete it with the `DELETE` command. The deletion is accomplished with the statement below:

```sql
DELETE FROM `student`
WHERE `id` = 5;
```
