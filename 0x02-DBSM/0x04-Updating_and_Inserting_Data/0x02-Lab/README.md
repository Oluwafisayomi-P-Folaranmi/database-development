# Laboratory: 

For now, we will work with the EmployeeContactInfo.sql file. 

Employee contact records are stored in the `EmployeeContactInfo` table. The table consists of three columns: the `EmployeeID`, which is the primary key; the `ContactNumber`, and `Email` columns. 


## Insert a New Record 

You need to insert a new record of data for the new employee, Seamus Hogan, with the following details. An ID equal to 1, a contact number, and then email address. You can add this data to the table using the standard `INSERT` command.


```sql
INSERT INTO EmployeeContactInfo (EmployeeID, ContactNumber, Email) 
VALUES 
	(1,'7044837317','seamushogan@gmail.com');

```

The new employee record is added to the table. You can do the same with the `REPLACE` command for the employee Thomas Eriksson.


```sql
REPLACE INTO EmployeeContactInfo (EmployeeID, ContactNumber, Email) 
VALUES 
	(2,'7044837317','thomaseriksson@gmail.com');

```


## Replacing a Record 

However, Seamus has decided to leave to work for a rival company. So you now need to replace his details with those of a new employee, Maria Carter. You can try updating the table using the Insert command. Type an Insert Into statement just like before and assign Maria an ID of 1 in your statements values, alongside her contact number and email address so that her records replace those of Seamus in the table. Then, execute the query. SQL can't execute this query. This is because you're trying to assign Maria an ID of 1. But this ID is already assigned to Seamus as a primary key value. The primary key must always have a unique value in each row of the table. Use the `REPLACE` command instead of `INSERT`.


```sql
REPLACE INTO EmployeeContactInfo (EmployeeID, ContactNumber, Email) 
VALUES 
	(1,'7044837317','mariacarter@gmail.com');

```


## Updating a Record 

Maria has recently changed her contact number, so the number also needs to be updated in the table.


```sql
REPLACE INTO EmployeeContactInfo
SET EmployeeID=1, ContactNumber='8066402373', Email='mariacarter@gmail.com';

```

Make sure that you set values for all columns. Otherwise, they'll be set to null or default values. You can also use the `VALUES` keyword.


```sql
REPLACE INTO EmployeeContactInfo (EmployeeID, ContactNumber, Email) 
VALUES 
	(1,'8066402373','mariacarter@gmail.com');

```
