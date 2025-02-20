# ALTER TABLE Laboratory

The Machinery table includes four columns: `EmployeeID,` `FullName`, `PhoneNumber`, and `County`. The task that is needed to completed are as follows: set the `EmployeeID` column as the primary key, change the column constraints and add a new column to the table.

As seen below is a faulty but runnable script for creating the Machinery table.


```sql
CREATE TABLE Machinery (
	EmployeeID INT NOT NULL,
	FullName VARCHAR(255),
	PhoneNumber INT,
	County VARCHAR(255)
);

```


## `MODIFY` Command

The table is missing a primary key. Fortunately, the `EmployeeID` column is the perfect candidate because all values are unique. To set this column as the primary key, you can write an `ALTER TABLE` statement.


```sql
ALTER TABLE Machinery
MODIFY EmployeeID INT NOT NULL PRIMARY KEY;
MODIFY FullName VARCHAR(50) NOT NULL,
MODIFY PhoneNumber INT NOT NULL UNIQUE,
MODIFY County VARCHAR(50) NOT NULL;

```


### Adding a FOREIGN KEY to an existing table using ADD

To create a link between one table and another table, you can use the `FOREIGN KEY` and `REFERENCES` commands along with the `ADD` command.


```sql
ALTER TABLE table_name 
ADD FOREIGN KEY (primary_key_column_name) REFERENCES link_table_name(reference_column_name);

```


## `ADD` Command

The final task is to add a new column to the table. The machinery can only be operated by employees aged 18 and over. So, the company needs to identify each employee's age and determine who is old enough to operate the machinery. There is currently no age column in the table, so you'll need to create it and add a constraint to ensure every new employee added to the table is at least 18 years old.


```sql
ALTER TABLE machinery
ADD COLUMN Age INT NOT NULL CHECK(Age > 18);

```


## CHANGE

You can use the `CHANGE` command with the `ALTER` statement to rename a column.


```sql
ALTER TABLE machinery
CHANGE PhoneNumber ContactNumber INT;

```


## RENAME  

The `RENAME` command can be used to change a table name, followed by the new name that needs to be given to the table.


```sql
ALTER TABLE machinery
RENAME modernMachinery;

```
