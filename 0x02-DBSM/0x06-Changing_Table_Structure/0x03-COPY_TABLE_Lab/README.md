# COPY TABLE Laboratory

You may want to create copies of your data to keep it safe during rebuild. This task can be completed using the copy table process. You can copy data from an existing table to a new table within the same database, copy a table to a new location while ensuring it retains its constraints, and copy data from an existing table to a new table from a different database. These tasks are carried out using the `CREATE TABLE` syntax.

Let's take a moment to review the process for copying tables.

   + You first need to identify the database and the table you want to copy the data from. 
   + Next, determine the columns you want to copy. Either all columns or just some of them. 
   + Then use the CREATE TABLE statement to build a new table with a relevant table name. 
   + Finally, use the SELECT command to structure the new table by specifying the columns you want to copy data from.


## Copying within a Database

We have the script to create the client table, `client-table.sql`. The `COPY TABLE` SQL statement begins with the `CREATE TABLE` command, followed by the name of your new table. Next, write the `SELECT` command, then identify the columns to be copied. You can copy one, several, or all columns. Finally, use the `FROM` command followed by the name of the existing table you want to copy.


```sql
CREATE TABLE clientsTest1
SELECT * 
FROM clients;

```

This query copies all columns and their data from the clients table to the new ClientsTest table.

Next, you may need to copy partial data only. Use the `WHERE` clause in the `SELECT` statement to specify a condition. In this case, copy the data only for those employees who live in Pinal County. 


```sql
CREATE TABLE clientTest2
SELECT FullName, ContactNumber
FROM clients WHERE Location='Pinal County';

```

The ClientsTest2 table contains a copy of all the data from ClientsTest for all employees from Pinal County.

You need to make sure that all constraints from the original table were copied over to the new one. It's important to remember that copying data using the methods you've encountered so far doesn't copy the key constraints.

How can you copy these keys? You can use the following statement. 


```sql
CREATE TABLE ClientsTest3 LIKE Clients

```


## Copying between Databases

What about copying a table between two different databases?


```sql
CREATE TABLE database_X_name.new_table_name
SELECT columns 
FROM database_Y_name.existing_table_name;

```
