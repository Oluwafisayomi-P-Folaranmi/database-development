# Comparison Operators Laboratory

So what our sequel comparison operators, Comparison operators are used to compare two values or expressions where the outcome result can be either true or false. They can be used to filter data and to include and exclude data. Imagine you're running a database for a soccer club. As a database engineer, there's a lot of work required to manage this database. For example, you might need to categorize players into groups according to their ages. How can you complete this kind of task? You can use sequel comparison operators over the next few minutes, you'll learn how to explain the concept of sequel comparison operators and utilize sequel comparison operators in a database.

So how are these operators used in sequel? Sequel uses common mathematical comparison operators by means of the symbols:

   + Equal to
   + Less than
   + Greater than
   + Less than or equal to
   + Greater than or equal to, and
   + Not equal to.

Now let's explore how to use these comparison operators and relevant symbols in a practical way. Using a database to demonstrate the use of SQL comparison operators, I'll use the example of an employee table from a company database. This table includes information on each employee's ID, name and salary. It is in the folder. Now let's assume the employer wants to extract relevant data from the employee table about the employee's salaries for different purposes. Each instance of data extraction will require a different comparison operator. 

So in the first example the employer wants to identify all employees receiving a salary Equal to $18,000 per year. I can identify these employees using the equal to operator. 

```sql
SELECT *
FROM employee
WHERE salary = 18000;

```

In this case, the condition uses the equal-to symbol to check if the salary value in each record of the table is equal to $18,000. If the result is true, then the data is retrieved. So run the query and generate an output.

Let's take another example to find out more. In this next example, the employer needs to know which employees are receiving a salary that is less than $24,000 per year. This task requires a different operator. To find this information, I can write

```sql
SELECT *
FROM employee
WHERE salary < 24000;

```

This sequel statement utilizes the less than symbol to check whether the value stored in each field of salary column is less than $24,000.

Let's take another example where the employer needs to determine which employees receive a salary that is less than or equal to $24,000 per year. In this case I need to write the following query,

```sql
SELECT *
FROM employee
WHERE salary <= 24000;

```

The only thing in this statement that has changed from the previous example is the operator symbol this less than or equal to symbol tells the sequel statement to check whether the value stored in each field of the salary column is less than Or equal to $24,000.

What if the employer wants to know which employees receive a salary that is greater than or equal to $24,000 per year. To generate these results, I can use the greater than or equal to operator in my sequel statement. So I write the following sequel query

```sql
SELECT *
FROM employee
WHERE salary >= 24000;

```

This time, the greater than or equal to symbol is used to check whether the value stored in each field of the salary column is greater Than or equal to $24,000.

The final comparison operator available in sequel is a not equal to operator. In this final example, The employer wants to know which employees receive a salary that is not equal to $24,000 per year. I can determine this using the following sequel code,

```sql
SELECT *
FROM employee
WHERE salary <> 24000;

```

As with the previous operators, the SQL statement utilizes the operator to check the value stored in each field of the salary column. In this case, it checks for values that do not equate to $24,000.
