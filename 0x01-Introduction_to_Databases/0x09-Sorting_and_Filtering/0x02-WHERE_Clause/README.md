# WHERE Clause

The <code>WHERE</code> clause is useful when you want to filter data in a table based on a given condition in the SQL statement.The WHERE clause in SQL is there for the purpose of filtering records and fetching only the necessary records. This can be used in SQL <code>SELECT</code>, vUPDATE</code> and <code>DELETE</code> statements.

The filtering happens based on a condition. The condition can be written using any of the following comparison operators.

## WHERE Clause with Comparison Operators

| Operator | Description |
| -------- | ----------- |
| = | Checks if the values of two operands are equal or not. If yes, then condition becomes true. |
| != | Checks if the values of two operands are equal or not. If values are not equal, then condition becomes true. |
| <> | Checks if the values of two operands are equal or not. If values are not equal, then condition becomes true. |
| > | Checks if the value of the left operand is greater than the value of the right operand. If yes, then condition becomes true. |
| < | Checks if the value of left operand is less than the value of right operand. If yes, then condition becomes true. |
| >= | Checks if the value of the left operand is greater than or equal to the value of right operand. If yes, then condition becomes true. |
| <= | Check if the value of the left operand is less than or equal to the value of the right operand. If yes then condition becomes true. |
| !< | Checks if the value of the left operand is not less than the value of the right operand. If yes, then condition becomes true. |
| !> | Checks if the value of the left operand is not greater than the value of the right operand. If yes, then condition becomes true. |

An admin department at the university wants to create different reports for students in the engineering faculty. The department needs to fill the right students from the engineering faculty to retrieve their details from the student database. So how can this be done with SQL? Well, the <code>WHERE</code> clause is useful in scenarios like this. In this lesson, you'll learn how to explain the purpose of the <code>WHERE</code> clause, demonstrate how to filter data using the <code>WHERE</code> clause and make use of different operators in the <code>WHERE</code> clause condition.

So what is the <code>WHERE</code> clause? The <code>WHERE</code> clause is used to filter data, more specifically, it is used to filter and extract records that satisfy specified a condition.

To better understand how the <code>WHERE</code> clause is used, it may help to break down its syntax in a SQL <code>SELECT</code> statement. The syntax begins with,

```
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

You may be wondering what the purpose of the condition is? Well, the condition makes it possible to filter out and fetch the required records from the table. You can think of the conditions as filter criteria, and only the records that meet the condition will be retrieved.

For example, you can use the condition or filter criteria to check if the desired column name is equal to a certain value or operand. In between the column and value you can place an operator. As you've just discovered, the operand follow the operator.

```
SELECT column1, column2, ...
FROM table_name
WHERE column = value;
```

Let's take a quick look at it in more detail. The operand can be either a text value or a numeric value. It all depends on the data type of the table column or field. To demonstrate, let's take an example where student_id equals 01.

```
SELECT column1, column2, ...
FROM table_name
WHERE student_id = 01;
```

In this case the condition is instructed to filter a numeric value, so it functions as a filter criteria. Once you run the SQL <code>SELECT</code> statement, it retrieves the records as instructed.

Let's take another example, *WHERE first name equals John*, a text value.

```
SELECT column1, column2, ...
FROM table_name
WHERE first_name = "John";
```

All text values must be enclosed in a pair of single quotes. Once again, you just run the SQL SELECT statement and filters the required records. To specify your filter condition, you can make use of a wide range of operators. You've just reviewed an example of the equals operator and others you may have encountered in a previous lesson. Let's quickly review these other operators.

Now, let's explore some examples of the <code>WHERE</code> clause and <code>SELECT</code> statements. Recall the scenario of the admin department that wants to create reports for its engineering and science students. I can use the <code>WHERE</code> clause to filter out the details of students who are in the engineering faculty. In this case I need to retrieve all details or all columns from the student table. So I write,

```
SELECT *
FROM student_table
WHERE faculty = "engineering";
```

So I'm instructing my SQL to fetch only the details of the students who are attached to the engineering faculty. Then I run the query, as per the filter condition, to retrieved the student records of the three students in the <code>student_table</code> listed in the engineering faculty. Note that I could've used other operators such as greater than, less than, less than or equal to, greater than or equal to and not equal the same way as the equal to operator in this <code>WHERE</code> clause condition. You can use any of these operators with numeric values or operands

## WHERE Clause with Logical Operators

But what if you want to combine multiple conditions in the <code>WHERE</code> clause? Multiple conditions in the <code>WHERE</code> clause can be combined using the <code>AND</code> / <code>OR</code> logical operators. Therefore, these two operators are also known as *conjunctive operators*.

The filtering happens based on a condition. The condition can be written using any of the following logical operators.

| Operator | Description |
| -------- | ----------- |
| ALL | Used to compare a single value to all the values in another value set. |
| AND | Allows for the existence of multiple conditions in an SQL statement's WHERE clause. |
| ANY | Used to compare a value to any applicable value in the list as per the condition. |
| BETWEEN | Used to search for values that are within a set of values, given the minimum value and the maximum value. |
| EXISTS | Used to search for the presence of a row in a specified table that meets a certain criterion. |
| IN | Used to compare a value to a list of literal values that have been specified. |
| LIKE | Used to compare a value to similar values using wildcard operators. |
| NOT | Reverses the meaning of the logical operator with which it is used. For example: NOT EXISTS, NOT BETWEEN, NOT IN, etc. This is a negate operator. |
| OR | Used to combine multiple conditions in an SQL statement's WHERE clause. |
| IS NULL | Used to compare a value with a NULL value. |
| UNIQUE | Searches every row of a specified table for uniqueness (no duplicates). |

The syntax required to use the AND operator in the WHERE clause of a SELECT statement is as follows:

```
SELECT column1, column2, columnN, ...
FROM table_name
WHERE [condition1] AND [condition2]...AND [conditionN];
```

**N** can be any number. Here, for the entire condition to be <code>TRUE</code>, all conditions separated by the <code>AND</code> must be <code>TRUE</code>.

Let’s review an example. You need a list of invoices for which the total is over $2 and the BillingCountry is the USA. Here’s an example of how the <code>WHERE</code> clause condition can be given in the <code>SELECT</code> statement:

```
SELECT *
FROM invoices
WHERE Total > 2 AND BillingCountry = 'USA';
```

Here, the <code>AND</code> operator is used as a conjunctive operator to combine the two conditions <code>Total > 2 AND BillingCountrywhich</code> is the USA. You'll receive the invoice records with a total bill value of more than $2 with the USA as billing country. This means that for a record to be included in the result, both the conditions should be true. Similarly, the <code>OR</code> operator can also be used to combine multiple conditions in the <code>WHERE</code> clause. 

The syntax is as follows:

```
SELECT column1, column2, columnN
FROM table_name 
WHERE [condition1] OR [condition2]...OR [conditionN]
```

Let’s continue to use the same invoicestable for the next example. If you want to get a list of invoices for which the BillingCountry is the USA or France, how would you use the OR operator to combine the two conditions?

You can write the following SQL syntax:

```
SELECT *
FROM invoices
WHERE BillingCountry = 'USA' OR BillingCountry ='France';
```

You’ll notice that the result consists of records where the billing country is the USA or France. This means that for a record to be included in the result, either condition should be true. 

Let’s consider another scenario. If you want to get a list of invoices where the total value is over $2 and the BillingCountry is USA or France, here’s the syntax for the SELECT query using both <code>AND</code> / <code>OR</code> conjunctive operators together in the WHERE clause:

```
SELECT *
FROM invoices
WHERE Total > 2 AND (BillingCountry = 'USA' OR BillingCountry = 'France');
```

You’ll notice that it has filtered out the invoice records that have a total value of more than $2.From that result, it has also filtered out the records that have a country value of either the USA or France. In the query, the two conditions combined with the OR operator are surrounded by a pair of parentheses to ensure that they are evaluated as one single expression. 

The other SQL logical and comparison operators which were not demonstrated in this reading can also be used in the WHERE clause. In addition, the WHERE clause can also be used with UPDATE and DELETE statements. To learn more, consult the additional resources reading of this lesson.

In addition to the logical operators we have treated so far, the <code>WHERE</code> clause can also use other logical operators, examples are: <code>BETWEEN</code>, <code>LIKE</code>, <code>AND</code>, and more operators as seen in the table from above.

With the <code>BETWEEN</code> operator, you can filter records within a specific numeric or time and date range. The <code>LIKE</code> operator is used to specify a pattern in the <code>WHERE</code> clause filter criteria. And the <code>IN</code> operator is used to specify multiple possible values for a column.

Now let's review some examples that use <code>BETWEEN</code>, <code>LIKE</code>, and <code>IN</code> operators in the <code>WHERE</code> clause condition. The college has a financial aid program available to students of a certain age. The funding department would like to notify eligible students only. I can use the <code>BETWEEN</code> operator in the <code>WHERE</code> clause condition to filter the records in the <code>student_table</code>. As before, I type,

```
SELECT *
FROM student_table
WHERE date_of_birth BETWEEN '2020-01-01' AND '2010-06-30';
```

Running this query retrieves the records of four students whose date of birth falls in the specified date range. Note that I could use any numeric range here, not just dates. 

For the next example, let's assume the admin department requires the details of the students who are in the science faculty. I can do this with the <code>LIKE</code> operator which can be used when you want to specify a pattern in the <code>WHERE</code> clause filter criteria. Within the SELECT statement and after the WHERE keyword, I type,

```
SELECT *
FROM student_table
WHERE faculty LIKE Sc%;
```

The percentage character in the pattern is a wild card character that represents *0, 1 or multiple characters*. The underscore sign can also be used to represent one single character. In this case my <code>WHERE</code> clause asks my SQL to search for and filter right values within the faculty column that start with <code>Sc</code> followed by any number of characters. So I run the statement and it filters out the student records whose faculty column has a value of <code>science</code>, that is, starting with the pattern <code>Sc</code>.

In the final example the admin department needs to know the details of the students who are studying in specific locations. You can use the <code>IN</code> operator in the <code>WHERE</code> condition to retrieve the relevant student records. Remember the <code>IN</code> operator is used to specify multiple possible values for column. Within the <code>SELECT</code> statement and following the <code>WHERE</code> keyword I type,

```
SELECT *
FROM student_table
WHERE country IN("USA", "UK");
```

My <code>SELECT</code> query will filter out all student records that have a value of <code>USA</code> or <code>UK</code> in the country column.

So the <code>IN</code> operator searches for multiple possible values in the country column and filters out based on them. Note that although the examples in this lesson looked at the <code>WHERE</code> clause in the <code>SELECT</code> statement, it can also be used in other statements, such as <code>UPDATE</code> and <code>DELETE</code>.

You've now learned what the <code>WHERE</code> clause is and you should now know how to use it to filter data as well as how to use different operators, great work.