# MySQL Common Table Expressions

Database engineers often need to write complex SQL queries, which are usually difficult to read and maintain.

In this situation, you can use the Common Table Expression (CTE) technique to deconstruct the complex queries into simple blocks of code. With CTE, you can rewrite the query in a way that simplifies it and makes it easier to read and maintain.

The basic abstract syntax of the Common Table Expression is as follows: 

In this syntax, you use the WITH clause to start the common table expression, followed by the name of the Common Table Expression. This can be a custom name.

Next, use the AS keyword to associate the query with the related expression name. Finally, you use a SELECT statement to query the common table expression name.

If you require multiple queries, then you just need to associate each query with its related expression name and separate it by a comma as in the following example: 

This abstract syntax specifies two common table expressions separated by a comma. Each expression is associated with a query using the AS keyword.
