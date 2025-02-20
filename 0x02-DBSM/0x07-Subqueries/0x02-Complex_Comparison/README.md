# Subqueries and Complex Comparison Operators Laboratory

You may need to perform complex queries in your company's database and standard subqueries might not be enough for this task. You'll need to use multiple row subqueries with complex comparison operators. There are more complex operators that can be used with multiple row subqueries.
 

## Complex Operators 


### `ANY`, `ALL`, `SOME`

A key advantage of a sub-query is that you can compare it against other values using an operator. However, there are more complex operators that can be used with multiple row-returning (multiple list element) subqueries.

   + `ANY` operator returns data for any values that meet the specified condition. 
   + `ALL` returns data for all values, and 
   + `SOME` operator returns data for one or more matching values.

These comparison operators let you perform a comparison between a single common value on a range of other values. They result in multiple records, or target multiple values within a table. As seen below:


```sql
SELECT column_name(s)
FROM table_name
WHERE expression_operator > ALL (
	SELECT column_name
	FROM table_name
	WHERE column DATA TYPE
	(value1, value2, value3)
	);

```


### EXISTS NOT EXISTS

Sub-queries can also be used with the `EXISTS` and `NOT EXISTS` operators.

   + `EXISTS` operator tests for the existence of rows in the results set returned by the sub-query. It returns true if the sub-query returns one or more records. 
   + `NOT EXISTS` operator checks for the non-existence or absence of results from the sub-query. `NOT EXISTS` returns true when the sub-query does not return any row of results.

The syntax for the `EXISTS` and `NOT EXISTS` operators is very similar to a standard sub-query. The key difference is that the `EXISTS` operator is placed after the `WHERE` clause to determine the existence of the value specified in the sub-query.


```sql
SELECT column_name(s)
FROM table_name
WHERE EXISTS (
	SELECT column_name
	FROM table_name
	WHERE condition);

```

Or you can use the `NOT EXISTS` operator to check for the non-existence or absence of results from the sub-query.
 

```sql
SELECT column_name(s)
FROM table_name
WHERE NOT EXISTS (
	SELECT column_name
	FROM table_name
	WHERE condition);

```


## Complex Operators Laboratory 


### `ALL`

Your company (a restaurant) needs to identify all employees earning an annual salary that's less than or equal to the annual salary earned by all employees in the following roles: manager, assistant manager, head chef, and head waiter (meaning the big boys). The data required to complete this query is in the employees table. The table has four columns as follows: `EmployeeID`, `EmployeeName`, `Role`, and `AnnualSalary`.

You can extract the data required from this table using two queries: An outer query to identify all employees who are earning an annual salary that's less than or equal to the specified values. A sub-query that extracts the data of annual salaries earned by employees who are in the rows specified earlier. These queries must return a result that lists all employees earning an annual salary that's less than or equal to the annual salary earned by all employees in the role specified. To ensure that you get the desired result, place the `ALL` operator after the less than or equal to comparison operator, but before the sub-query.
 

```sql
SELECT `EmployeeID`, `EmployeeName`, `AnnualSalary`
FROM `Employee`
WHERE `AnnualSalary` <= ALL (
	SELECT `AnnualSalary`
   FROM `Employee`
   WHERE `Role` IN('Head Chef', 'Assistant Chef')
	);

```


### `ANY`

To identify employees earning an annual salary that's greater than or equal to the annual salary earned by any employee in the four roles specified earlier. You can use the same query as before but remember that this time you're checking for values that are greater than or equal to those in the sub-query. Change the comparison operator in the `WHERE` condition of the outer query to a greater than or equal to operator.
The `ANY` operator compares the results of the sub-query to determine whether it can exclude records from the outer query that satisfy the conditions for any of the values returned by the sub-query.


```sql
SELECT EmployeeID, EmployeeName, AnnualSalary
FROM `Employee`
WHERE `AnnualSalary` >= ANY (
	SELECT AnnualSalary
   FROM `Employee`
   WHERE Role IN('Head Chef', 'Assistant Chef')
   );

```


### `EXISTS` and `NOT EXISTS`

If the restaurant needs to determine if their head chef and waiter are are assigned to a booking. They can do this using the EXISTS or NOT EXISTS operators. The query involves two actions. In the first action, the outer query extracts details of employees and in the second action the sub-query determines if the head chef or head waiter have been assigned to a booking. The required data is held in the bookings table. The code for bookings table is included in the restaurant_db sql file. This table has six columns as follows: `BookingID`, `TableNo`, `GuestFirstName`, `GuestLastName`, `BookingSlot`, and `EmployeeID` of the employee assigned to the booking.

The sub-query must determine if there are any employees in the role of head chef or head waiter assigned to a booking.


```sql
SELECT *
FROM Employee
WHERE EXISTS (
	(SELECT *
   FROM bookings
   WHERE Employees.EmployeeID = Bookings.EmployeeID AND Role IN('Head Chef', 'Head Waiter'));

```


### Task 3

The code to create and use the littlelemon_db database is provided in the script `littlelemon-tables.sql`.

Find the minimum and the maximum average prices at which the customers can purchase food and drinks. In this task, you must write subqueries using the FROM clause. Your subquery would find the average prices of menu items by their type. The subquery result will be the input for the outer query to find the minimum and maximum average prices. The following query returns the average prices of menu items by their type:


```sql
SELECT Type, AVG(Price) AS avgPrice 
FROM MenuItems 
GROUP BY Type;

```

It can, in turn, be the source from which data (average price) is used to find the minimum and maximum average prices. So, you write this outer SELECT statement and add the above query as a subquery in its FROM clause as follows:


```sql
SELECT ROUND(MIN(avgPrice), 2) AS MinAvgPrice, ROUND(MAX(avgPrice), 2) AS MaxAvgPrice
FROM (
    SELECT AVG(Price) AS avgPrice
    FROM MenuItems 
    GROUP BY Type) AS aPrice;

```

The highlighted subquery in the FROM clause behaves as a temporary table in this case, and it becomes the source or target table for the outer query.


### Task 4

Insert data of menu items with a minimum price based on the 'Type' into the LowCostMenuItems table.

In this task, you must write subqueries in INSERT statements. Your subquery would find the details of menu items with a minimum price based on the 'Type' of menu item. In other words, GROUP BY Type. Then you can insert the data retrieved from the subquery into the LowCostMenuItems table using an INSERT INTO SELECT statement. Here, the SELECT statement in INSERT INTO, contains the subquery.


```sql
INSERT INTO LowCostMenuItems 
SELECT ItemID,Name,Price 
FROM MenuItems 
WHERE Price = ANY(
	SELECT MIN(Price)
	FROM MenuItems
	GROUP BY Type);

```

The outer SELECT query uses the ANY operator to find ANY matches from the values returned from the subquery – which gives a list of minimum prices of menu items based on their types. If it finds any matches, it will insert them into the LowCostMenuItems table.

Task 3: Delete all the low-cost menu items whose price is more than the minimum price of menu items that have a price between $5 and $10.

Hint: You need to write subqueries in DELETE statements in this task. Your subquery will be placed in the WHERE clause of the DELETE statement to find the minimum prices of menu items that have a price between $5 and $10. Use the ALL operator in the outer query to find matches from the values returned from the subquery. Delete those records with matching prices from the LowCostMenuItems table.


```sql

DELETE FROM LowCostMenuItems 
WHERE Price > ALL(SELECT MIN(Price) as p 
FROM MenuItems 
GROUP BY Type 
HAVING p BETWEEN 5 AND 10);

```

The outer query uses the ALL operator to find matches from the values returned from the subquery. This provides a list of minimum prices of menu items whose price is between $5 and $10. If it finds any matches then it deletes those records with matching prices from the LowCostMenuItems table.
