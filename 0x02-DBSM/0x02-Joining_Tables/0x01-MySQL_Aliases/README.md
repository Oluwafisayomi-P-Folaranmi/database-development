# MySQL aliases

Little Lemon restaurant has run into some problems with their database. Some of the table and column names in the database are too long, which is causing issues with the output of queries. They need to find a way to generate results that are simpler to use, read, and understand. Fortunately, they can solve these issues with MySQL aliases.


## SQL Aliases

SQL aliases are used to provide database columns and tables with temporary names. These temporary names make it simpler to use, read, and understand the output of the database. For example, your company can use aliases to shorten the names of tables and columns in their database. 

There are three common situations in which it's useful to consider an alias. 

  + At first, an alias can be used to **rename** a **table** or **column** whose original name is too long or technical. 
  + It can be used with a **concatenation** function to combine an output into one column instead of two. 
  + You can also use an alias to create **distinct table names** when dealing with multiple tables. 

However, it's important to bear in mind that the syntax for creating and using an alias can change depending on which of these issues you're attempting to resolve. Let's take a few minutes to review an example of the syntax for each scenario, beginning with renaming tables. 


### Rename a Table

If your table requires multiple aliases, then write out each column name and use the `AS` keyword for each column you need to create an alias for. For example, in their client orders table, your company can use an alias to rename lengthy columns, like `ClientOrderInformation` to just `Orders`.


```sql
SELECT ClientOrderInformation AS Orders
FROM ClientOrders;

```


### Concatenation

Next, let's review the syntax for a concatenation, `CONCAT` function that combines an output into one column instead of two.


```sql
SELECT CONCAT(column1, " ", column2) AS "new_column_name"
FROM table_name;

```

The `SELECT` command is used to retrieve data. This is followed by the `CONCAT` function, which concatenates or combines the information extracted from the column names placed in parentheses. The `AS` keyword is then added followed by the name or alias you want to assign to the new concatenated column.

Your company can use a concatenation function to combine the values contained in the first and last name columns of their client details table. These values are then placed in a new concatenated column called `client_names`. 


```sql
SELECT CONCAT(first_name, " ", last_name) AS 'client_names'
FROM client_details;

```


### Querying Multiple Tables

The first thing to note when querying multiple tables is that you can use a one-character alias to represent each table. 

For example, if you're querying two different tables, then you can use `x` for Table1 and `y` for Table2. The syntax then begins with a `SELECT` command,

```sql
SELECT x.column1, x.column2, y.column1, y.column2
FROM table1 AS x, table2 AS y
WHERE x.column2 < 12 AND y.column2 < 5;

```

Those are the three main instances in which MySQL alias can be used along with their related syntax.
