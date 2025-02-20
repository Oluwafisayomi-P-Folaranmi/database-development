# Arithmetic Operators

Operators in SQL are specific words or symbols used to perform operations on database data, similar to how conjunctions link sentences or how operation keys work on a calculator. They're essential for querying and manipulating data. For instance, you can use arithmetic operators to calculate remaining leave days for an employee or comparison operators to check if employees meet targets. SQL has various types of operators, each serving different purposes.

Imagine a corporate database with information about hundreds of employees. How can you calculate important things such as salary increases or calculate changes to allowances for all the employees accurately and efficiently? With SQL you can use arithmetic operators to make these adjustments. Arithmetic operators are commonly used in computer languages to perform a calculation and return the result. Much like common arithmetic operators in mathematics, you can use arithmetic operators in SQL to carry out mathematical operations in a database.

The SQL arithmetic operators and their symbols are:

   + +: addition
   + -: subtraction
   + *: multiplication
   + /: division, and
   + %: modulus.

How does SQL arithmetic operations work? When performing a calculation, an operator takes two operands and returns a result. For example, an addition operator can take five as both of its operands and returned ten as its result. In SQL, you can apply the same concept by using the `SELECT` command for the various operations.


```sql
SELECT 5 + 5;
SELECT 5 - 5;
SELECT 5 * 5;
SELECT 5 / 5;
SELECT 5 % 5;

```

That's how you can use the operator symbols for different basic operations in SQL.

You've learned about secret arithmetic operators and how to perform basic operations with them in school. You're now ready to learn how to apply these arithmetic operators in more practical ways. Awesome work.


## Arithmetic Operators Laboratory

Let’s review an example. Check the folder for the script to create the example database. There is an employee table from a company database.


### Addition

If you want to know the total salaries of all employees with the basic salary and the allowance added to it then you can use the addition operator.


```sql
SELECT salary + allowance FROM employee; 

```

Let’s say you want to retrieve the salaries of employees whose total salary is 25000.


```sql
SELECT * 
FROM employee 
WHERE salary + allowance = 25000; 

```


## Subtraction

Let’s say you want to retrieve the salaries of employees after deducting tax. This is the SQL syntax that you can use with the subtraction operator to get these results.


```sql
SELECT salary - tax 
FROM employee; 

```

Consider the same employee table and data. If you want to find out who earns a salary of 50000 after the tax deduction, this is the SQL query you can write:


```sql
SELECT * 
FROM employee 
WHERE salary - tax = 50000; 

```


## Multiplication

Let’s say in the employee table, you want to generate the tax amounts for each employee if these amounts are doubled.


```sql
SELECT tax * 2
FROM employee;

```

Here, you are doubling the tax for all employees by multiplying the tax column value by 2.

Now let’s review an example of how to use the multiplication operator in the `WHERE` clause.Let’s say you want to know who must pay an amount of tax equal to 4000, after doubling the current tax value. The `SELECT` query gives the desired result, using the multiplication operator in the `WHERE` clause.


```sql
SELECT *  
FROM employee 
WHERE tax * 2 = 4000; 

```

Here, the `WHERE` clause filters out the employees’ records. It shows who’ll be paying tax amounting to 4000 after the current tax amount is doubled.


## Division

The division operator divides the numerical values of one column by the numerical values of another column. The syntax of using the division operator is as follows:


```sql
SELECT column_name1 Division_Operator column_name2
FROM table_name;

```

In this next example, let’s say that you want to find out the allowance percentage each employee receives, by using the salary and the allowance amount. You can write a SQL SELECT statement with the division operator as follows:


```sql
SELECT allowance / salary * 100
FROM employee;

```

Here, both the division and multiplication operators are used together to divide the allowance by salary and multiply the answer by 100 to find out the allowance percentage.

Like the other arithmetic operators, this too can be used in the `WHERE` clause of a `SELECT` statement. Let’s say you want to find out which of the employees get an allowance of at least 5%. Here’s how the division operation is used in the `WHERE` clause to achieve this:


```sql
SELECT *  
FROM employee 
WHERE allowance / salary * 100 >= 5; 

```


## Modulus

The modulus operator (%) behaves as it’s expected in SQL by giving the remainder when the numerical values of one column is divided by the numerical values of another column. The syntax is as follows:


```sql
SELECT column_name1 % column_name2
FROM table_name;   

```
