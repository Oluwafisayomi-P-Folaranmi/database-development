# Grouping Data 


## Use Cases of Grouping Data 

Your company IT department may need to find **a way to group records with similar values into one single record** so that they can analyze the order data and produce summaries. The MySQL `GROUP BY` clause and its related aggregate functions are a great way for the company to complete this task. The MySQL `GROUP BY` is used to group rows into subgroups. 

The `GROUP BY` clause can be used with aggregate functions to determine the total number of orders received by each department in, say a restaurant business having different departments. The department subgroups are first made from the table of orders, then the calculation is done thereafter. 


### GROUP BY 

Let's find out what database developers mean by the term **GROUP BY**. **The `GROUP BY` clause is used in SQL syntax to group rows in a table based on given columns into summary rows, also known as subgroups**. To get a better understanding of this clause, let's look at the syntax. 

The syntax begins with a `SELECT` statement, followed by the name of the required column. The `FROM` clause is then added and targets the name of the table that holds the required column. Finally, there's the `GROUP BY` clause. After this clause, a list of column names are added. Each one is separated by a comma. **These are the columns according to which the data must be grouped.**

```sql 
SELECT column1_name, column2_name 
FROM table_name 
GROUP BY column1_name, column2_name 
```

If there is a `WHERE` clause in your `SELECT` statement, then the `GROUP BY` clause must be placed after this clause. 

```sql 
SELECT column1_name, column2_name 
FROM table_name 
WHERE filter_conditon 
GROUP BY column1_name, column2_name 
``` 

And make sure that the columns listed in the `SELECT` clause include the columns listed in the `GROUP BY` clause. 


### GROUP BY with Aggregate Functions 

Additionally, the `GROUP BY` clause is also frequently used with aggregate functions. **An aggregate function can be used with the `GROUP BY` clause to perform one or more calculations and return a single value for each subgroup.**

Here's a list of the main aggregate functions used by database developers with the `GROUP BY` clause: `SUM()`, `AVG()`, `MAX()`, `MIN()`, `COUNT()`. 

   + `SUM()`: used to add values of given columns together and return a single value. 
   + `AVG()`: used to determine the average of column values. 
   + `MAX()`: which returns the maximum value of one or more given columns.
   + `MIN()`: the minimum aggregate function determines the minimum value of one or more given columns, and finally 
   + `COUNT()`: is used to count the number of instances that a given column value occurs. 

Let's review the syntax of the `SELECT` statement when using the `GROUP BY` clause with an aggregate function. First, input a `SELECT` statement followed by a list of columns. You can then apply the aggregate function on any of these columns as required. For example, you can use the `MAX()` aggregate function to calculate the maximum values in column 1. Just make sure to place the column in parenthesis. Next, include the FROM clause and the name of the table that holds the columns. Finally, include the GROUP BY clause followed by the names of the columns by which the data should be grouped. Make sure that these same columns are also present in the SELECT column list. 

```sql 
SELECT column1, column2, column3   MAX(column1) 
FROM table_name 
GROUP BY column1_name, column2_name 

```

As said from above, the `GROUP BY` clause can be used with aggregate functions to determine the total number of orders received by each department in, say a restaurant business having different departments. The department subgroups are first made from the table of orders, then the calculation is done thereafter. 
