# Default Values

To ensure the accuracy and reliability of the data in your database, you must limit the type of data they can go into your database table. In this lesson, you'll learn how to describe the purpose of **constraints** in a database and identify default constraints to set default values in a table.

Database constraints are used to limit the type of data that can be stored in a table. This ensures that all data inserted into the table is accurate and reliable. If the database dictates a violation between the constraint and the data operations, then it aborts these operations.

An example of a violation might be an attempt to insert or upload invalid data to a table. The database realizes that the data is invalid and rejects it.

Constraints can be applied at the column level where the rule applies to a specific column. They can also be applied at table level. For example, I could use the foreign key constraints to prevent actions that will destroy links between tables. I'll demonstrate this in more detail in a later lesson.

Two of the most used database constraints include <code>NOT NULL</code>, a method of preventing empty value fields, and <code>DEFAULT</code>, a method of assigning default values. For now, let's begin our exploration of default values with a <code>NOT NULL</code> constraint.


### NOT NULL

The <code>NOT NULL</code> SQL constraint is used to ensure the data fields are always completed and never left blank.

Let's explore this concept using the example of a table from an online store that records the IDs and names of customers. The table records this data in the customer ID and customer name columns. These columns must always contain data. If there's no data or values inserted into either of these columns, then the creation of a new customer record is aborted.

The <code>NOT NULL</code> default value is implemented using a SQL statement. A typical <code>NOT NULL</code> SQL statement begins with the creation of a basic table in the database. I can create a table for the table for the online store, I also declare a <code>NOT NULL</code> constraint for each column.

```sql
CREATE TABLE Customer (
	customer_id int NOT NULL,
	customer_name varchar(255) NOT NULL
);
```

This makes sure that neither column will accept no values. Now, any operation that attempts to place a null value in these columns will fail, like inserting or updating data.


### DEFAULT Constraint

Next, let's look at how the <code>DEFAULT</code> constraint works in a table. The <code>DEFAULT</code> constraints sets a default value for a column of no value is specified. This means that if no data is entered for a specific field within a column, then the table will automatically insert a default value instead.

To gain a better understanding of default values, let's look at a table that holds player records for a football club's database. The table is called <code>player table</code> and contains two columns. The first is <code>player name</code> and lists the names of each player in the team, and the second column is <code>city</code> and list which city each player is from. Most of the players in this club are from Barcelona, so I can specify a default value of the city column as <code>Barcelona</code>. This means that I don't have to enter <code>Barcelona</code> repeatedly into the city field for each new player. If no value is entered in the table, then each field is automatically filled with a default value of <code>Barcelona</code>.

Let's find out how the default command is incorporated into a SQL statement. First, I create the player table. Finally, I add the <code>DEFAULT</code> keyword statement followed by the default value <code>Barcelona</code> for the city column.

```sql
CREATE TABLE Player (
	name varchar(50) NOT NULL,
	city varchar(30) DEFAULT "Barcelona"
);
```

Now when I add data into the table for a new player, I don't need to type in <code>Barcelona</code> for players who are from the city. Instead, it will be inserted automatically.

You should then be familiar with the importance of using database constraints. You should also be able to explain database constraints as a method of enforcing rules on a column or table level. Go to work.


## Laboratory 

Mr. Carl Merkel owns a small business that sells mobile devices called "CM Mobiles" in Harrow, London. He wants to create a database to store key information about customers' addresses including customer ID, street, postcode and town name. The list of addresses for current customers of CM Mobiles is listed in the address table below.

**Address Table**

| Customer ID | Street | Postcode | Town |
| ----------- | ------ | -------- | ---- |
| 1 | 10 Carsten Rd. | HA3 0AE | Harrow |
| 2 | 15 Denise Ave. | HA3 0AE | Harrow |
| 3 | 13 Merkel Ave. | HA3 0AE | Harrow |
| 4 | 12 Carsten Rd. | HA3 0AE | Harrow |
| 5 | 15 Hellen way | HA3 0AE | Harrow |
| 6 | 13 Carsten Rd | HA3 0AE | Harrow |
| 7 | 11 Malika Rd. | NW9 0AX |Kingsbury |

**You are not required to complete this exercise inside MySQL on the Coursera platform.**

### Instructions

Create an SQL statement  with relevant attributes and constraints as follows:

1. Identify the column that requires default values.  

2. Write a complete SQL statement to create the address table with relevant constraints.

### Creating the table

Identify the column with default values.

Notice that the address table shows that most customers are living in Harrow area, which means CM Mobiles customers are coming mainly from this city.  

In this case, you can define a default value for the city column as “Harrow” when you create the address table.

This would save Mr. Carl from having to enter “Harrow” repeatedly into the city field for each new customer record as it's filled automatically with the default value “Harrow”. Of course, this assumes that no other value was entered in the table.

1. Create a table

   1. Write the SQL CREATE TABLE command followed by the name of the table, “address” in this case.

   2. Open parenthesis to define the table’s columns including customer ID, street, postcode and town. Each column must be assigned a suitable data type as you learned in earlier videos and exercises.

   3. Use the SQL “DEFAULT” keyword to declare the pre-set default value.

   4. Once all required columns have been defined, add a closing parenthesis and a semi-colon at the end of the SQL statement as follows:

   ```sql
   CREATE TABLE address(id int not null, street varchar(255), postcode varchar(10), town varchar(30) default "Harrow");
   ```

   The <code>DEFAULT</code> keyword used in this statement is followed by the default value "Harrow" for the town name column in the Address table. In this case, if Mr. Carl Merkel wants to insert data into this table, then there is no need to type "Harrow" for any customer who lives in this town as it will be inserted automatically.

2. Execute the query by pressing enter.

3. If you want to check the structure of the address table, type the following SQL statement and press Enter:

```
SHOW columns FROM address;
```

This shows all the address table columns with data types and the default constraint "Harrow".

## Scenario Two

Mr. Carl Merkel notices that most customers come from the same postcode i.e., "HA97DE".  

You are required to write the SQL statement again to declare both the postcode and the town name with default values.

Remember to drop the address table before creating a new one.

To drop the table, simply type:

```
DROP TABLE Address;
```

**Solution:**

```
CREATE TABLE Address (
	id int NOT NULL,
	street VARCHAR(255),
	postcode VARCHAR(10) DEFAULT "HA97DE",
	town VARCHAR(30) DEFAULT "Harrow"
	);
```


## Laboratory

Mr. Carl Merkel owns a small business that sells mobile devices called “CM Mobiles” in Harrow town near London. He wants to create a database to store key information about customers’ orders in order to generate invoices for his customers including customer name, order date, quantity and total price. This data can be seen in the following invoice table:

**Invoice Table:**

| Customer name | Order date | Product quantity | Total price |
| ------- | ------ | ------ | ------ |
| Mark Dani | 25/03/2022 | 5 | 750.50 |
| Karl Masonry | 22/03/2022 | 4 | 600.75 |
| Jack Raymond | 20/03/2022 | 3 | 978.00 |

## Instructions

Please attempt the following tasks before you continue, so you can check and compare your answers with the solution.

You are required to write ‘CREATE TABLE” SQL statement with relevant attributes and data types.

1. Identify the columns and define the data type for each column of the table. 

2. Write a complete SQL statement to create the invoices table inside the cm_devices database.

## Identifying the table columns and data types

You must design the invoice table, which consists of different types of columns that will store different types of data. As a database developer, you should choose a data type which meets the expected type of data that will be stored in the column based on the following guidelines: 

+ If the column is expected to store numeric data, then you need to choose a numeric data type such as <code>INT</code> or <code>DECIMAL</code>.  

+ If the column is expected to store alphabetic or alphanumeric data, then you need to choose a string data type such as <code>CHAR</code> or <code>VARCHAR</code>.  

+ If the column is expected to store date data, then you need to choose the <code>DATE</code> data type.  

Take the invoice table columns one by one and apply the previous guidelines:

1. Customer name: the string data type would be very suitable for the customer's name as we expect it to store data with alphabetic characters. In this case we can use <code>VARCHAR</code> as we expect to have customer names with different lengths of characters. 

2. Order date: the date data type would be very suitable for the order date as we expect it to store data with dates. 

3. Product quantity: the integer data type would be very suitable for the order quantity as we expect it to store whole numbers of data. 

4. Total price: the decimal data type would be very suitable for the product price as we expect it to store numeric data with fractions.

## Building the invoice table in SQL

Create the SQL statement as follows:

```
CREATE TABLE invoice (
	customerName VARCHAR(50),
	orderDate DATE,
	quantity INT,
	price DECIMAL
	);
```

If you have followed all the steps correctly, you should now be able to see the invoices table created inside the cm_devices database by typing:

```
SHOW tables;
```

If you want to check the structure of the invoices table, type the following SQL statement and press Enter.

```
SHOW columns FROM invoice;
```

This statement displays the invoice table structure.
