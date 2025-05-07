# SELECT DISTINCT Clause

Suppose you have a database that contains the records of college students from all over the world. As part of an annual report, a list of all the different countries these students belong to is required. It's very likely many students will come from the same country. So how can you retrieve the results you're looking for without any duplicates. Look no further than a <code>SELECT DISTINCT</code> clause. In the next few minutes you learn how to describe the <code>SELECT DISTINCT</code> statement and explain what it's used for, demonstrate how to use it in a sequel query and explain how it interacts with the single column, multiple columns and null values.

In a few practical examples, let's start by exploring what the <code>SELECT DISTINCT</code> statement is in its most basic form, distinct as its name states returns only distinct or different values. In other words, it returns the results without any duplicates. Let's take a closer look at duplicate values. As you can imagine, columns in a table can often contain duplicate values in a college student records. For example, the country column will likely contain duplicate values as there can be many students who are from the same country. Let's assume you want to find out which countries the students in the college are from. So that you can get an understanding of which nationalities are represented in the college. You can begin by using a sequel <code>SELECT</code> statement. You can write,

```
SELECT country
FROM student_tbl;
```

Running this select query gives you records as the result with multiple duplicate records. In this case there are duplicate records. So how can you eliminate these duplicates and retrieve a unique set of results? You can use the <code>SELECT DISTINCT</code> statement. You can write a select statement just like before but this time distinct after the word select, the word distinct will return all unique values in the table with no duplicates. You can then write,

```
SELECT DISTINCT country
FROM student_tbl;
```

Once you run this statement, the country's now only appear once in the resulting records. All the duplicates have been removed.

This is how the <code>SELECT DISTINCT</code> statement can be used to return distinct values from one column. In this case you've returned distinct values from the country column.

Now, let's take a few moments to explore the <code>SELECT DISTINCT</code> statement in action. The examples that follow focus on the <code>SELECT DISTINCT</code> statement. With the use of multiple columns or when applied to a column that has a null value. With the student table in this example, I want to write a query to determine which countries are represented by students in different faculties. I can use a select distinct statement as before, but this time I allow the word <code>faculty</code> before <code>country</code>.

```
SELECT DISTINCT faculty, country 
FROM student_tbl;
```

So with this statement which uses multiple columns, I've generated each unique faculty and country combination.

Now let's examine how <code>SELECT DISTINCT</code> deals with null values and columns. In this example, I have a new student named <code>Julia Smith</code> from the <code>USA</code>. She's not yet been assigned a faculty or school address. As a result, both fields within these columns assigned to Julia Smith contain a value of null. So let's see what happens when I run the same <code>SELECT DISTINCT</code> statement as a previous example. How does it handle the null values? In other words, what results does it return for Julia? I said let go and received the same result as the last time. But now there's also a record for Julia with a null faculty value and USA as the country. This is because the distinct clause considers null to be a unique value, So it outputs null and USA is a unique faculty in country combination.

In this lesson, you learned how to use the <code>SELECT DISTINCT</code> statement to eliminate duplicate values in a <code>SELECt</code> query result. You also observed how it behaves in response to values in a single column and multiple columns and two null values in columns. Great work.

## Using DISTINCT with SQL aggregate functions

The <code>DISTINCT</code> keyword can also be used with SQL aggregate functions like <code>COUNT</code>, <code>AVG</code>, <code>MAX</code> and so on. In this case, you must specify an expression that’s written using some aggregate function. Therefore, it’s not only column names that you can use <code>DISTINCT</code> with but also with expressions. 

What if you want to find out the number of unique countries of the customers in the customer table? Run a <code>SELECT</code> statement that uses the aggregate function <code>COUNT</code> on the country column along with <code>DISTINCT</code>.

For example:

```
SELECT COUNT(DISTINCT country)
FROM customers;
```

The result that you get is the number of unique countries that the customers come from. Using <code>DISTINCT</code> on the country column/field gives a unique list of countries and the <code>COUNT</code> aggregate function counts the number of results.

Here are some important points to remember in terms of <code>SELECT DISTINCT</code>:

+ When only one column or expression is provided in the <code>DISTINCT</code> clause, the query will return the unique values for that column. 

+ When more than one column or expression is provided in the <code>DISTINCT</code> clause, the query will retrieve unique combinations for those columns. 

+ The <code>DISTINCT</code> clause doesn't ignore <code>NULL</code> values in <code>DISTINCT</code> column(s). <code>NULL</code> values are considered as unique values by <code>DISTINCT</code>.