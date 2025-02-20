# Querying and Inserting

When working with tables, there might be instances where you need to retrieve information from one or more tables in order to populate columns in another table. You can complete these actions using the <code>INSERT INTO SELECT</code> statement. Over the next few minutes, you'll explore the SQL syntax for these actions. And by the end of this lesson, you'll know how to identify and understand <code>INSERT INTO</code> syntax and insert data from a source table into a target table using the <code>INSERT INTO</code> clause.

First, let's find out more about the <code>INSERT INTO</code> select statement. Essentially, the <code>INSERT INTO SELECT</code> statement is used to query data from a column within a source table and place the results of that query in the column within a target table. For example, you could use an <code>INSERT INTO SELECT</code> statement to query data in column C in the source table and place the results of that query in column B of the target table.

So what does the <code>INSERT INTO SELECT</code> statement syntax look like? Here's an example. Type:

```
INSERT INTO <target_table_name> (<column_name>)
SELECT <column_name>
FROM <source_table_name>;
```

To find out more about how this syntax works, let's explore an example of <code>INSERT INTO SELECT</code>. To demonstrate the statement, I use tables from a <code>soccer_club</code> database to contain important data about the club. However, before I begin querying this data, let's quickly review these tables. In this database, I have a table called <code>players</code> that holds the records of four different players in the team. I also have a table called <code>country</code> that holds information about the countries that these players are from. But right now, the <code>country</code> table is missing the names of the countries. In other words, it has no data. I can perform a SQL query using the <code>INSERT INTO SELECT</code> statement to populate this missing data.

Do you remember the example of the source and target tables from earlier in this lesson? In this instance, the <code>player</code> table is the source table that I need to query, and the <code>country</code> table is a target table in which SQL places the results from my query. So to query data from my source table and populate my target table with it, I write an <code>INSERT INTO SELECT</code> statement. Note that for the purposes of this demonstration, I've organized the player data in the player table in the same order in which it must appear within the country table. So to perform this task, I write:

```
INSERT INTO country (countryName)
SELECT country FROM players;
```

then run it. Now I select <code>country</code> table, my target table from the database, and check that the country name column has been populated with the correct data.

You now know how to query tables using the <code>INSERT SELECT</code> statement. Well done.