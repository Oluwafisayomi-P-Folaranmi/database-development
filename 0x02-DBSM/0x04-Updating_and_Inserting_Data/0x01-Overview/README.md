# Updating and Inserting Data 


You will want to replace some data inside tables in a database. Your company will be hiring some new employees. Once these employees have been hired, the company then needs to add their contact details to the database. Some of these contact details must also replace those of employees who've recently left. The `REPLACE` command is the best method to make these changes. 


## The `REPLACE` Command 

The `REPLACE` command is used to insert or update data in a table. However, unlike the standard `INSERT` and `UPDATE` commands, `REPLACE` first checks for a duplicate key. If found, it deletes the existing record and replaces it with the new one, else it adds new data if no matching key is found.

You should be familiar with the `INSERT INTO` command.


```sql
INSERT INTO table_name (column1, column2, column3) 
VALUES (column1_value, column2_value, column3_value);

```

The `REPLACE` command works in much the same way. You type out your table name, column names, and values just like before. 


```sql
REPLACE INTO table_name (column1, column2, column3) 
VALUES (column1_value, column2_value, column3_value);

```

You can also use `REPLACE` command with the `SET` keyword.


```sql
REPLACE INTO table_name (column1, column2, column3) 
SET column_name = new_value;

```

The `SET` clause assigns a value for the selected column, but without using the `WHERE` clause to specify the condition. In other words, it locates the required record of data, then replaces the values with a new set. If you don't specify a column value in the `SET` clause, then the `REPLACE` command uses a default value or sets the value to `null`.
