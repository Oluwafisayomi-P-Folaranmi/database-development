# **Using `ALL` and `ANY`**

They are typically used in conjunction with comparison operators (`=`, `!=`, `>`, `<`, `>=`, `<=`) and **are used in subqueries to compare *a value* against *a set of values* returned by a subquery**.

## **`ALL` Operator**

The `ALL` operator compares ***a value to all values*** in a subquery. **A condition using `ALL` will only return true if the comparison is `true` for *every* value in the result set of the subquery.**

### **Students whose GPA is Greater Than All Students from New York**

Your company wants the students whose GPA is **greater than every GPA** of students from 'New York'. You can do this with the following sql code:

```sql
SELECT *
FROM `students`
WHERE `GPA` > ALL (
	SELECT `GPA`
	FROM `students`
    WHERE `location` = 'New York'
);
```

This query returns students whose GPA is higher than **all** students from **New York**. It uses a subquery to retrieve the GPAs of students from New York, then compares each student's GPA in the outer query to those values.

For example, if the highest GPA among New York students is 3.9, only students with a GPA greater than 3.9 will be included in the result.

### **Students whose GPA is Lower Than All Students from Los Angeles**

Your company wants the students whose GPA is **lower than every GPA** of students from 'Los Angeles'. You can do this with the following sql code:

```sql
SELECT *
FROM `students`
WHERE `GPA` < ALL (
	SELECT `GPA`
	FROM `students`
    WHERE `location` = 'Los Angeles'
);
```

This query finds students whose `GPA` is greater than at least one student from `Gila County`.

If the lowest `GPA` in `Gila County` is `3.2`, any student with a `GPA` greater than `3.2` will be included.

## **`ANY` Operator**

The `ANY` operator compares **a value to all values** in a subquery. **A condition using `ANY` will return `true` if the comparison is true for *at least one* value in the subquery result set.**

### **Students Whose GPA is Greater Than at Least One Student from Gila County**

Your company wants the students whose GPA is **greater than at least one GPA** from the subquery result (students from 'Gila County').

```sql
SELECT *
FROM `students`
WHERE `GPA` > ANY (
	SELECT `GPA`
	FROM `students`
    WHERE `location` = 'Gila County'
);
```

This query finds students whose `GPA` is greater than at least one student from `Gila County`.

If the lowest `GPA` in `Gila County` is `3.2`, any student with a `GPA` greater than `3.2` will be included.

### **Students Whose GPA is Lower Than at Least One Student from Chicago**

Your company wants the students whose GPA is **lower than at least one GPA** from the subquery result (students from 'Chicago').

```sql
SELECT *
FROM `students`
WHERE `GPA` < ANY (
	SELECT `GPA`
	FROM `students`
    WHERE `location` = 'Chicago'
);
```

## **Summary**

  + `ALL` requires the comparison to be true for **all** values.
  + `ANY` requires the comparison to be true for **at least one** value.
