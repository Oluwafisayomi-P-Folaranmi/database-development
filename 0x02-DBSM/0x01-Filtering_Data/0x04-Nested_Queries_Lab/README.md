# Nested Queries Laboratory

The student table used is in the attached sql script.

 
## Basic Nested Query

**Nesting queries** (also known as **subqueries**) in SQL allows you to create more complex and powerful queries by embedding one query within another. Let's explore some examples of nested queries.

Suppose we have a table called **Students** with columns **id**, **name**, and **GPA**. We want to find all students with a GPA above the **average** GPA. We can achieve this using a nested query:


```sql
SELECT *
FROM Students
WHERE GPA > (SELECT AVG(GPA) FROM Students);

```

The inner query `(SELECT AVG(GPA) FROM Students)` calculates the average GPA, and the outer query selects students whose GPA exceeds this average.


## Using Nested Queries in `WHERE` Clause

You can nest queries within the **WHERE** clause using comparison operators or the **IN**, **NOT IN**, **ANY**, or **ALL** operators.

For example, to find students from specific countries:


```sql
SELECT *
FROM Students
WHERE Country IN (SELECT DISTINCT Country FROM Countries);

```

Here, the subquery `(SELECT DISTINCT Country FROM Countries)` retrieves a list of distinct country names, and the outer query selects students from those countries.


## Filtering with Multiple Conditions

You can combine multiple conditions using nested queries. For instance, to find students with above-average GPA and enrolled in specific classes:


```sql
SELECT *
FROM Students
WHERE GPA > (SELECT AVG(GPA) FROM Students)
       AND ClassID IN (SELECT ClassID FROM Classes WHERE Grade = 12);

```

This query combines the average GPA condition with a class filter.
