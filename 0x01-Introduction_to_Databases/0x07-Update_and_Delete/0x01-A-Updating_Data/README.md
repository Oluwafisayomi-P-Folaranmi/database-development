# Updating Data

I recently created a database table for a college called student table. It contains the following pieces of data on each student in the college: ID, first name, last name, home address, college address, contact number and department. The script to use to create the database and the table is attached to this folder.


## `UPDATE`

Let's use the `UPDATE` syntax to update the **home address** and **contact number** of the student assigned the ID of 3 in the table.


```sql
UPDATE student
SET home address = "234 Park Avenue", contact_number = "2345556767"
WHERE ID = 3;

```

The `UPDATE` syntax can also be used to update the information from multiple students at once. Let's suppose that the college's engineering department has moved their classes to a new location on campus called the Harper Building, and I need to update the department's address on the table for all engineering students. I can perform this task using the `UPDATE` SQL syntax. The syntax is very similar to the previous example.


```sql
UPDATE student_tbl
SET college_address = "Harper Building"
WHERE department = "engineering"

```

I could also use the `UPDATE` statement, to update multiple field values in multiple records. For example, I can return to the original SQL statement, and add a new column value pairing to the `SET` clause.


```sql
UPDATE student_tbl
SET college_address = "Harper Building", home_address = "xyz"
WHERE department = "engineering"

```
