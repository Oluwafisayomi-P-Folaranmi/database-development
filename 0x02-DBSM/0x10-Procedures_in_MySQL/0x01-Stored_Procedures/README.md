# Stored Procedures

Your company often perform the same queries on their database every day. Each time they perform these queries, they have to rewrite the same SQL code again. With MySQL, your company can use the stored procedure's method to save a specific query as a block of code that they can then recall whenever required.

A stored procedure is a block of code or pre-prepared query that can be stored in your database. You can then invoke or call the stored procedure using the call command. There are a lot of benefits to be gained from using stored procedures.

  + Consistency
  + Reusability
  + Efficiency


### Stored Procedure

To create a basic stored procedure, write the create procedure command. Then write the rest of your procedure logic as required. Following is a procdure that selects data from a table.


```sql
CREATE PROCEDURE ProcedureName()
SELECT *
FROM table_name;

```


### Stored Procedure with Parameter

When writing a stored procedure with one or more parameters, the syntax is much the same. The key difference is that you must include all required parameters within the parenthesis.


```sql
CREATE PROCEDURE ProcedureName(parameter_value INT)
SELECT *
FROM table_name
WHERE value = parameter_value;

```


### Call a Stored Procedure

To invoke a procedure, you can use the call command followed by the procedure name. Make sure to include the parenthesis.


```sql
CALL ProcedureName();

```


### Drop a Stored Procedure

But what if you no longer required a stored procedure? How do you remove it from your database? To delete a stored procedure, you can use the drop procedure command followed by the procedure name. In this instance, you don't need to include any parenthesis.


```sql
DROP PROCEDURE ProcedureName;

```


## Stored Procedures Laboratory

### Stored Procedure

To create a stored procedure that returns all data from the table, you can write the following syntax.


```sql
CREATE PROCEDURE GetProductsDetails()
SELECT *
FROM `products`

```

The new procedure, `GetProductsDetails`, has been created. Your company can now call this query to extract data from the table instead of rewriting a new select statement each time. To demonstrate the stored procedure, just write the following call command.


```sql
CALL GetProductsDetails();

```


### Stored Procedure with Parameter

Lucky Shrub also frequently write queries to identify the lowest priced products in their database so that they can add these items to sales or promotions. You can create a stored procedure with one or more parameters for this query.


```sql
CREATE PROCEDURE GetLowestPricedProducts(LowestPrice INT)
SELECT *
FROM `products`
WHERE Price <= LowestPrice;

```

Don't forget that this query also includes parameters. Each time the query is called, you need to specify the value of the stored procedure most process. As an example, let's return the data of products with a price of less than or equal to $50.


```sql
CALL GetLowestPricedProducts(50);

```


### Drop Stored Procedure

Finally, your company have decided to remove the `GetProductsDetails` stored procedure from their database. To drop the stored procedure from the database, type drop procedure command, and the name of the procedure, `GetProductsDetails`.


```sql
DROP PROCEDURE GetProductsDetails;

```
