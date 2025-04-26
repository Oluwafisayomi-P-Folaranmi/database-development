# Numeric Data Types 

You probably know that database tables store data in the forms of columns and rows. But how do you make sure that every column accept the correct type of data? For instance, that your `cost` column stores values in decimal, while your `product_quantity` column accepts positive numbers. This is exactly what data types do. With data types, you can determine what kind of data is accepted by each field in your table. 

Let's take a moment to explore the concept of data types. When you create a table in a database, you need to define column names and the data type of the content that will reside in those columns. Data types tell the database management system such as MySQL, how to interpret the value of the column. Data types maintain data in the right format and make sure the value of each column is as expected, ensuring domain constraints. The most used data types are: 

  + Numeric, 
  + String, and 
  + Date and Time data types. 

The focus of this lesson is a **numeric data type**. Numeric data types is the generic term used for all specific data types that let a column store data as numbers in the database. The two most common numeric data types used in databases are the integer data type, used for a whole number value; and the decimal data type used for number with a fraction value. 


## Integers 

To return to our earlier table example, the `product_quantity` column is defined as an `INT` data type. This is because it holds whole numbers only. Fractional numbers can be inserted, but they'll always be automatically rendered up or down to the nearest whole number of the database. 

In most database management systems, you'll find different types of **integer** and decimal data types. Each type is intended to store minimum and a maximum number value. For example in MySQL Database Management System: 

  1. `TINYINT`: also know as **tiny integer** is used for very small integer number value, or the maximum possible value that can be inserted is 255. 
  2. `INT`: can be used to store a very big number, the maximum value that it can store is over four billion. 

These data types can also accept negative and positive values. In some Database Management Systems, you can also force columns to accept positive numbers. This increases the maximum value they can store. 


## Decimals 

The `total_price` column is a `DECIMAL` type. This is because it holds fractional numbers. For example, an item that costs $80.90 is a fractional value, 80 is a whole number and 90 is a decimal. Whole numbers can also be inserted. The database will add a decimal point along with a fractional value of zero. 


## Laboratory: 

The script to perform the lab is attached to the folder. Mr. Carl Merkel owns a small business named CM Mobiles that sells mobile devices. He wants to create a database to store key information about mobile devices. This information includes: 

  + The device ID or number, 
  + The device name, and 
  + The price of the device. 

For: 

  1. iPhone XR 1 - 1500.50 
  2. Samsung SX - 1200.50 
  3. Nokia 730 - 1050.00 


## Task 1: Create a Database, `cm_devices`

Type the following SQL statement inside the SQL terminal editor in the Coursera platform:


```Sql
CREATE DATABASE cm_devices;

```

Make sure you select the database you want to create the table inside of by typing the following SQL statement:


```shell
USE cm_devices; 

```

The SQL `USE` keyword is used to select a database in MySQL followed by the name of the database. Press Enter to execute the query. The output will be "Database changed"


## Task 2: Create a SQL Table 

Identify a suitable name for the table in which you want to store the data about mobile devices. In this case, you can call the table "devices". Identify the data type for each column within the table.

Based on CM Mobiles’ requirements, the mobile devices table must contain three columns as follows:

   + **Device ID**: that stores whole numbers in `INT`. 
   + **Device name**: that is expected to store data as a string-like alphanumeric value in `VARCHAR(50)`. 
   + **Price**: that is expected to store numeric data with possible fractional values in `DECIMAL`. 

Write a complete SQL statement to create the mobile devices table inside the `cm_devices` database. The complete statement should replicate the following syntax: 

```Sql
CREATE TABLE devices (deviceID INT, deviceName VARCHAR(50), price DECIMAL);
   
```

Remember to add a closing parenthesis and a semi-colon at the end of the SQL statement. If you have followed all the steps correctly, you should now be able to access the `devices` table that was created inside the `cm_mobiles` database by typing:

```shell 
SHOW tables;

```

To check the structure of the devices table, type the following SQL statement that displays all the devices table’s columns and data types: 

```shell 
SHOW columns FROM devices;

```
