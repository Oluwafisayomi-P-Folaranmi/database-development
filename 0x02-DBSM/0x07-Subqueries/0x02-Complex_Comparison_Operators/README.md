## **Complex Comparison Operators**

You may need to perform complex queries in your company's database, and standard subqueries might not be enough for this task. You'll need to use multiple-row subqueries with complex comparison operators. There are more advanced operators that can be used with multiple-row subqueries.

### **Complex Operators**

#### `ANY`, `ALL`, `SOME`

A key advantage of a subquery is that you can compare it against other values using an operator. However, there are more complex operators that can be used with multiple-row-returning (multiple list element) subqueries:

- `ANY` operator returns data for any values that meet the specified condition.
- `ALL` returns data for all values.
- `SOME` operator returns data for one or more matching values.

These comparison operators allow you to perform a comparison between a single common value and a range of other values. They result in multiple records or target multiple values within a table, as seen below:

```sql
SELECT column_name(s)
FROM table_name
WHERE expression_operator > ALL (
    SELECT column_name
    FROM table_name
    WHERE condition
);
```

### `EXISTS` and `NOT EXISTS`

Subqueries can also be used with the `EXISTS` and `NOT EXISTS` operators:

- `EXISTS` tests for the existence of rows in the result set returned by the subquery. It returns `TRUE` if the subquery returns one or more records.
- `NOT EXISTS` checks for the non-existence or absence of results from the subquery. It returns `TRUE` when the subquery does not return any row of results.

The syntax for these operators is similar to a standard subquery. The key difference is that `EXISTS` is placed after the `WHERE` clause to determine the existence of the value specified in the subquery.

```sql
SELECT column_name(s)
FROM table_name
WHERE EXISTS (
    SELECT column_name
    FROM table_name
    WHERE condition
);
```

Alternatively, use `NOT EXISTS` to check for the absence of results:

```sql
SELECT column_name(s)
FROM table_name
WHERE NOT EXISTS (
    SELECT column_name
    FROM table_name
    WHERE condition
);
```

## Complex Operators Laboratory

### Using `ALL`

Your company (a restaurant) needs to identify all employees earning an annual salary less than or equal to the annual salary of all employees in specific roles: Manager, Assistant Manager, Head Chef, and Head Waiter. The data is stored in the `employees` table, which has four columns: `EmployeeID`, `EmployeeName`, `Role`, and `AnnualSalary`.

The query uses:
- An outer query to identify all employees earning an annual salary less than or equal to the specified values.
- A subquery to extract the annual salaries of employees in the specified roles.

```sql
SELECT `EmployeeID`, `EmployeeName`, `AnnualSalary`
FROM `employees`
WHERE `AnnualSalary` <= ALL (
    SELECT `AnnualSalary`
    FROM `employees`
    WHERE `Role` IN ('Head Chef', 'Assistant Chef')
);
```

### Using `ANY`

To identify employees earning an annual salary greater than or equal to the annual salary of any employee in the specified roles, use the `ANY` operator:

```sql
SELECT `EmployeeID`, `EmployeeName`, `AnnualSalary`
FROM `employees`
WHERE `AnnualSalary` >= ANY (
    SELECT `AnnualSalary`
    FROM `employees`
    WHERE `Role` IN ('Head Chef', 'Assistant Chef')
);
```

### Using `EXISTS` and `NOT EXISTS`

If the restaurant needs to determine whether the Head Chef and Head Waiter are assigned to a booking, they can use the `EXISTS` operator. The required data is in the `bookings` table, which has columns: `BookingID`, `TableNo`, `GuestFirstName`, `GuestLastName`, `BookingSlot`, and `EmployeeID` (assigned employee).

The subquery checks if employees in the specified roles are assigned to a booking:

```sql
SELECT *
FROM employees
WHERE EXISTS (
    SELECT *
    FROM bookings
    WHERE employees.EmployeeID = bookings.EmployeeID 
    AND Role IN ('Head Chef', 'Head Waiter')
);
```

## Additional Tasks

### Task 3: Finding Min and Max Average Prices

Find the minimum and maximum average prices at which customers can purchase food and drinks. Use subqueries in the `FROM` clause.

Subquery to find average prices of menu items by type:

```sql
SELECT Type, AVG(Price) AS avgPrice 
FROM menu_items 
GROUP BY Type;
```

Using this subquery to find min and max average prices:

```sql
SELECT ROUND(MIN(avgPrice), 2) AS MinAvgPrice, ROUND(MAX(avgPrice), 2) AS MaxAvgPrice
FROM (
    SELECT AVG(Price) AS avgPrice
    FROM menu_items 
    GROUP BY Type
) AS aPrice;
```

### Task 4: Inserting Low-Cost Menu Items

Insert menu items with the minimum price per `Type` into `low_cost_menu_items`:

```sql
INSERT INTO low_cost_menu_items 
SELECT ItemID, Name, Price 
FROM menu_items 
WHERE Price = ANY (
    SELECT MIN(Price)
    FROM menu_items
    GROUP BY Type
);
```

### Task 5: Deleting Low-Cost Items Based on Minimum Prices

Delete all low-cost menu items whose price is more than the minimum price of menu items that have a price between $5 and $10:

```sql
DELETE FROM low_cost_menu_items 
WHERE Price > ALL (
    SELECT MIN(Price) AS p 
    FROM menu_items 
    GROUP BY Type 
    HAVING p BETWEEN 5 AND 10
);
```

The outer query uses `ALL` to compare against the minimum prices of menu items within the specified price range. Matching records are then deleted from `low_cost_menu_items`.
