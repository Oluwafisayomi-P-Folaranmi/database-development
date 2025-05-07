# Constraints Laboratory


You will need to apply constraints to the columns in your database tables to ensure data consistency and integrity. You will always apply the following common constraints: `NOT NULL`, `UNIQUE`, `CHECK`, and `FOREIGN KEY`. 

We will create two tables: Customers, and Bookings. 


## Key constraints

The first table that must be created is Customers, which records customer details. The table requires the following constraints: the `PRIMARY` key constraint on the `customerID` column, the `NOT NULL` constraint on the `FullName` column, and a `UNIQUE` constraint on the `PhoneNumber` column to ensure that each customer has a unique number.


```sql
CREATE TABLE Customers (
	CustomerID INT NOT NULL PRIMARY KEY, 
    FullName VARCHAR(255) NOT NULL, 
    PhoneNumber INT NOT NULL UNIQUE);

```

The table contains all relevant constraints. The columns are defined with `NOT NULL`. Two keys have been declared. The `CustomerID` column is the `PRIMARY KEY`, and the `PhoneNumber` column only accepts unique values.


## Domain constraints and Referential integrity constraints

The next task is to apply referential integrity. This ensures that each customer can make a booking in the restaurant and that each booking must be assigned to a specific customer. In other words, any Customer ID that exists in the bookings table must also exist in the customers table. Otherwise, it won't be possible to identify who made the bookings. When creating the bookings table, it's important to focus on the referential integrity constraint and the check constraint to limit the number of guests to a maximum of eight. Create the following columns: `BookingID`, `BookingDate`, `TableNumber`, `NumberOfGuests` and `CustomerID`.


```sql
CREATE TABLE Bookings (
	BookingID INT NOT NULL PRIMARY KEY, 
	BookingDate DATE NOT NULL, 
	TableNumber INT NOT NULL UNIQUE,
	CustomerID INT NOT NULL,
	NumberOfGuests INT NOT NULL CHECK(NumberOfGuests<=8),
	FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID) ON DELETE CASCADE ON UPDATE CASCADE);

```

All columns are defined as `NOT NULL` to ensure that each one must accept a value. All columns are also assigned the `INT` value except `BookingsDate`, which is assigned a `DATE` value. The `BookingID` column is defined as the `PRIMARY KEY`. The number of guests column is defined with a `CHECK` constraint that specifies that the value that can be placed in the column must be less than or equal to eight, so that it can only accept a maximum of eight guests. 

The `CustomerID` column is defined with the `FOREIGN KEY` constraint. Then use the `REFERNCES` constraints, so the foreign key references the `CustomerID` column in the Customers table. Now use `ON DELETE CASCADE` and `ON UPDATE CASCADE` options to delete and automatically update the related rows of data in the Bookings table. However, be aware that these actions depend on the Update and Delete operations taking place in the Customers table. 

The `CustomerID` column is `MUL`. This means that it's not a unique key and multiple rows can have the same key value. `MUL` indicates that the column is part of an index that allows multiple occurrences of the same value (i.e., it's not unique). In other words, the column is indexed, but it's not a primary key or a unique key. Multiple rows can share the same value for this column, and the index is used to speed up searches on that column.
