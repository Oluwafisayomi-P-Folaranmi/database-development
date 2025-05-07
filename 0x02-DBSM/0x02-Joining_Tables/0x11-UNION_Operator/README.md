# UNION

Lucky Shrub are filing their end of year tax returns and must provide information on all employees that they have hired over the last 12 months. There are several full-time employees in the business, and there are several part-time employees who were recently hired to help with the holiday season. But the records for the full-time and part-time employees are stored in separate tables. How can Lucky Shrub combine these records into one table? They can use the MySQL UNION operator.

The UNION operator is used to combine result sets with multiple statements in the same query. For example, you can use the UNION operator to join two SELECT statements in order to combine their results sets and present as one table.


```sql
SELECT column1, column2
FROM table1
UNION
SELECT column1, column2
FROM table2;

```

The UNION operator essentially creates a union between the two SELECT statements. There are a few best practices that must be observed when creating SQL SELECT statements with a UNION operator. Every SELECT statement must have the same number of columns. All related columns have similar data types, and all related columns must have the same order in every SELECT statement.

But what about cases where the same value exists in both tables but appears only once in the combined set of results like a name or location? This happens because the UNION operator only returns distinct values from the targeted tables. To list all values including duplicated data, you can use the ALL keyword. The use of the ALL keyword after the UNION operator ensures that all values remain, even duplicated ones.


```sql
SELECT column1, column2
FROM table1
UNION ALL
SELECT column1, column2
FROM table2;

```


## Laboratory

As you saw earlier, Lucky Shrub need to gather information on all employees that they have hired over the last 12 months. But the data for their full-time and part-time employees is stored in separate tables. Let's help them out. Lucky Shrub need to combine the records from two tables into one using the MySQL UNION operator. Both the full-time employees and part-time employees' tables include the same four columns; EmployeeID, FullName, ContactNumber, and Location. Lucky Shrub need to query the full names and addresses or locations of all employees.


```sql
SELECT FullName, ContactNumber, Location
FROM Clients
UNION ALL
SELECT FullName, ContactNumber, Location
FROM LegacyClients;

```
