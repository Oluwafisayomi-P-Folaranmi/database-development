# Database

You've just been hired by an online bookstore to build and maintain databases that can store information on millions of books and customers. But how do we even begin to create and altar databases that store constantly expanding information or process millions of orders from all over the world? The answer to these questions lies in SQL `CREATE` and `READ` commands.

However, before you create a database, you first need a clear idea of its purpose. For example if you're building a database for an online bookshop then your database needs to record data like book titles, authors, customers and sales. The data on these topics must be stored and organized in relevant tables in a database. Users can then access, retrieve and update the data as needed.

So how can you create a database using Sequel Syntax? To create a database, just type:


```sql
CREATE DATABASE <database_name>;

```

But what about removing or dropping a database? To drop a database, just type the keywords:


```sql
DROP DATABASE <database_name>;

```

Let's look at these key words in action. To create a database, I need to use Sequel Syntax. To demonstrate, let's create a second book store database using SQL Syntax.


```sql
CREATE DATABASE bookstore2_db;

```

In this case the database is called `bookstore2_db`. Always use a meaningful and relevant name when creating a new database. This helps to make it easier to document my work. Database names must also be unique and can only have a maximum of 63 characters.

We can also remove databases using SQL statements. First I select the sequel tab. Then I input my query in the code box that appears.


```sql
DROP DATABASE bookstore2_db;

```

In this case it's `bookstore_db`. When I run the query then SQL deletes the database.
