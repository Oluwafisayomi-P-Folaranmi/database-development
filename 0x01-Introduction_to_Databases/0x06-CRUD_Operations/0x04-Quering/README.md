# Quering

There will often be times that you'll need to query data from a table in your database. For example, you might need to retrieve a list of names from a table, or return a set of results from a math calculation. You can perform these actions using the `SELECT` statement.

A basic SQL `SELECT` statement is written as the `SELECT` keyword, the name of the column that contains the data you need to query, then the `FROM` keyword and finally the name of the table you want to query.


```sql
SELECT <column> FROM <table_name>;

```

As an example, I'll extract information from a table called players held in a soccer club database. This table records details about players. The script to create the table and populate it with data is provided in the folder. I can use the SQL `SELECT` statement on this table to obtain information on the club's players. The expected outcome of this select query is that it will return results set that displays all player names held in the table. I can write the statement as.


```sql
SELECT name
FROM players;

```

The query returns a table column that lists the player's names from the players table with each name on its own row.

So in the example you just explored, I retrieved data from one column in a table. But what if I wanted to retrieve data from multiple columns? Maybe I need to retrieve the name and skill level of each player. I can obtain this information using a SQL `SELECT` statement written as


```sql
SELECT name, age
FROM players;

```

I could also use a `SELECT` statement to retrieve all data from all columns in the players table. There are two methods I could use to achieve this. The first method is to list all column names in a standard select statement as follows:


```sql
SELECT id, name, age, start_date
FROM players;

```

The second method is to use an asterisk as shorthand. So instead of typing out all column names, I just type select asterisk from players, then I run the query.


```sql
SELECT *
FROM players;

```

It returns all the information available in all table columns, just like in the first method.
