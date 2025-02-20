# SQL Usage

Imagine that you've just been hired to create a database for a college. First, you need to create tables to hold data in all aspects of the college. Then you need to insert data into these tables and then modify this data whenever something changes. That's a lot of work. But it's all possible with the use of **SQL** and **CRUD** operations.

So let's return to our college database scenario. How can you possibly make all these changes in the database? Well, with the help of what web developers called CRUD operations. Performing CRUD operations is the most common task when working with the database. CRUD stands for Create Read Update and Delete. Or in operational terms, create data, add/insert data, read data, update existing data and delete data. 

Alongside these operations, there are many other things that SQL can do. Depending on what SQL is used for. It can be divided into many sub-sections or sub languages. These include: 

  + DDL (Data Definition Language), 
  + DML (Data Manipulation Language), 
  + DQL (Data Query Language), and 
  + DCL (Data Control Language). 

Let's take a closer look at these languages and their commands starting with data definition language or DDL. 


## Data Definition Language - DDL

DDL as the name says helps you define data in your database. But what does it mean to define data? DDL generally *deals with the data structure of a database*. It works on the structure of the database, and the database objects (like the tables).

Before you can store data in the database. You need to create the database and related objects like tables in which your data will be stored. For this, the DDL part of SQL has a command named `CREATE`.

Then you might need to modify already created database tables/objects. For example, you might need to modify the structure of a table by adding a new column. You can perform this task with the DDL `ALTER` command.

You can remove an object like a table from a database using the DDL `DROP` command.


## Data Manipulation Language - DML

Data manipulation language or DML commands are *used to manage data* in the database, like inserting, updating or deleting data. Most CRUD operations fall under DML.

To add data to a table, you can use the `INSERT` command. This command lets you specify the fields to add data to along with the values to be inserted.

If you need to edit data that's already inserted into a table, just deploy the `UPDATE` command.

And you can specify data to be removed by using the `DELETE` command. 


## Data Query Language - DQL

So far, you've learned how to add database and its objects, and manage data within them. So how do you read or retrieve that data? *To read data stored in a database*, you can use data query language.

DQL defines a `SELECT` command to be able to retrieve data. `SELECT` lets you retrieve data from one or multiple tables letting you specify the data fields that you want based on preferred *filter criteria*.


## Data Control Language - DCL

And finally, you can also use DCL or data control language *to control access to the database*. For example, using DCL commands, you control access to data stored in the database. `GRANT` and `REVOKE` DDL commands are used to give users access privileges to data, and to revert access privileges already given to users. 

You should now be familiar with how SQL acts as the interface between the database and its users, and you should also be able to identify SQL operations and sub-languages. Great work. 
