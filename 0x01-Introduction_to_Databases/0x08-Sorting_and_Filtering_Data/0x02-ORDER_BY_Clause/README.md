# `ORDER BY` Clause

There are several clauses available in SQL for sorting and filtering data in a table. One of the most useful of these is the `ORDER BY` clause. With this clause, you can reorder the data in a table by one or more columns. For example, in a table that holds data on students in a college, you could sort the data by date of birth. The table would then present all students in the order of oldest to youngest. 

Here, you'll be able to demonstrate the purpose of the `ORDER BY` clause for sorting data, explain the different forms in which the `ORDER BY` clause can be used to sort data, and describe how the ascending (`ASC`) and descending (`DESC`) keywords behave when used in sort columns.

The `ORDER BY` clause is an optional clause that can be added to a `SELECT` statement, its purpose is to help sort data in either ascending or descending order. For example, you can sort list of student names in an alphabetical order from A to Z or vice versa. In its most basic form, the syntax of `ORDER BY` clause is as follows.


```sql
SELECT column_1, column_2, column_3...
FROM table_name
ORDER BY column_name ASC <or DESC>

```

You can do this by specifying `ASC` for ascending order or `DESC` for descending. The `ORDER BY` clause doesn't limit you to just the one column. You could also use this syntax to order the data from multiple columns. The syntax for sorting multiple columns is very similar to that used for a single column.


```sql
SELECT column_1, column_2, column_3...
FROM table_name
ORDER BY column_name_1 ASC <or DESC>, column_name_2 ASC <or DSC>

```

The key difference from multiple columns is that you must type the name of each column after the `ORDER BY` clause separated by comma. It's also important to note that the type of data in your table affects how it is ordered. If the column has a numeric datatype, the records will be sorted in ascending or descending numerical order, and if a column has a text-based or string data type, then it will be sorted in ascending or descending alphabetical order.


## Sorting by a single column

In the customer table, the data is sorted by default in ascending order within the customer ID field. The customer ID field is numeric, so the data is sorted in ascending numeric order. Now let’s examine how to order this data in the descending order of the Customer ID field. 

To do this, you can run the following query:


```sql
SELECT * 
FROM employee
ORDER BY employee_ID DESC; 

```

In the output, the records are sorted in descending order (largest to smallest) of the CustomerId which has a numeric data type.

Now let’s examine how sorting happens for a text data typed column. Consider sorting the data by the employee name which has a text data type of `VARCHAR`.


```sql
SELECT *
FROM employee
ORDER BY employee_name DESC;

```

An ordering method like `ASC` or `DESC` wasn’t specified in the `ORDER BY` clause. So, by default, the ordering happens in ascending order.

Let’s examine another example of how data is ordered in a sort column that uses a `DATE` type field. This example uses the invoices table in the sample database. You can use the following SQL `SELECT` statement to sort the data by the invoice date column:


```sql
SELECT * 
FROM invoices 
ORDER BY InvoiceDate;

```

If you review the InvoiceDate column, you’ll notice that the date values are sorted from smallest to largest. That is, they’re sorted in ascending order, which is the default sort order. Now let’s try running this query with the `DESC` keyword added in the `ORDER BY` clause.


```sql
SELECT * 
FROM invoices 
ORDER BY InvoiceDate DESC;

```

The data is now sorted from the largest to smallest date, which is descending order.


## Ordering by multiple columns

You can also sort data by multiple columns and apply different sort orders to them. Let’s say you want to sort invoice data by both billing city and invoice date. To do this, run the following query:

```sql
SELECT *
FROM employee
ORDER BY employee_name ASC, salary ASC; 

```

You’ll notice that the data is sorted in ascending order of employee_name. That’s why the data in the employee_name column is sorted in alphabetical order. The data of the salary is in turn sorted in descending order. For example, if you review the records with the employee_name, the invoice dates are ordered in ascending order from smallest to largest date. Similarly, if you examine the other sets of data closely, you’ll observe the same. The main types of ordering in SQL are ASC, ascending, and DESC, descending. How the data is ordered in these two cases would depend on the data type of the field or column being used as the sort column.
