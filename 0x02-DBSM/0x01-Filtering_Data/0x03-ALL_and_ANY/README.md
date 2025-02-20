# ALL and ANY

Both `ALL` and `ANY` are operators in SQL. They are typically used in conjunction with comparison operators (`=`, `!=`, `>`, `<`, `>=`, `<=`) and are used in subqueries to compare a value against a set of values returned by a subquery.


## `ALL` Operator

The `ALL` operator compares a value to **all values** in a subquery. A condition using `ALL` will only return true if the comparison is true for **every** value in the result set of the subquery.

Your company wants the students whose GPA is **greater than every GPA** in the subquery result (students from 'New York').


```sql
SELECT * FROM Students
WHERE GPA > ALL (
	SELECT GPA 
	FROM Students 
	WHERE Location = 'New York');

```


## `ANY` Operator

The `ANY` operator compares a value to **any one** value in a subquery. A condition using `ANY` will return true if the comparison is true for **at least one** value in the subquery result set.

Your company wants the students whose GPA is **greater than at least one GPA** from the subquery result (students from 'Gila County').


```sql
SELECT * FROM Students
WHERE GPA > ANY (
	SELECT GPA 
	FROM Students 
	WHERE Location = 'New York');

```

`ALL` requires the comparison to be true for **all** values. `ANY` requires the comparison to be true for **at least one** value.
