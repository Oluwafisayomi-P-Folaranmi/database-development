# Inserting

When working with databases, you'll often have to add new rows and columns to existing tables or even create new tables from scratch. For example, if you run a college database, you'll have to add new rows for every new student. With SQL, you can perform these tasks quickly using the `INSERT` statement.

Let's begin with an exploration of the `INSERT INTO` Syntax.


```sql
INSERT INTO <table_name> (<column 1>, <column 2>)
VALUES 
	(<value 1>, <value 2>);

```
 
It's important to remember that each value corresponds to a specific column and so should reflect the same datatype and order. You can also add multiple rows into a table at the same time. Type:


```sql
INSERT INTO <table_name> (<column 1>, <column 2>)
VALUES 
	(<value 1>, <value 2>),
	(<value 1>, <value 2>),
	(<value 1>, <value 2>);

```

Just make sure that each new row is separated from a previous one by a comma.

Now let's explore some examples of an insert statement. In this example, I'll use a table called `players` from a `sports_club` database. The script to create the database and the table is attached to the folder.


```sql
INSERT INTO players (id, name, age, start_date)
VALUES
	(1, "Yuval", 25, "2020-10-15");

```

I can also use the `CURRENT_DATE()`. The order in which I type my values within the parentheses is very important. Otherwise, I might accidentally store these values in the wrong columns. It's also important to note that all non-numeric values are placed within quotation marks, just like Yuval and the date value in the statement.

But what if I wanted to insert multiple records of data into the table? Let's say that two new players, Mark and Karl have joined the team. Both Mark and Karl must be inserted into the database. As you learned earlier, this is a very straightforward task.


```sql
INSERT INTO players (id, name, age, start_date)
VALUES
	(2, "Mark", 27, "2020-10-12"),
	(3, "Karl", 26, "2020-10-07");

```

So far I've explored how to add data to the table. But it's also possible to show existing data in the player table by executing the following SQL query. First, I try:


```sql
SELECT * FROM players;

```

This asterisk tells SQL to return all columns within the table. I execute the statement and the output shows all data available from the player table.
