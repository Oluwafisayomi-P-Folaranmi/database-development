# What are Tables in Databases 

At this stage of the course, you're probably familiar with the basics of how databases store and interact with data, but how do they store all this data and present it in a logical way? **In the form of tables**. As you already know. The table is made up of rows and columns which hold data and a table is stored in a database that holds multiple tables. These tables are known as **relations** as they are all related to one another. 

In a more conceptual or logical sense, a table is also known as an **entity** in object oriented databases (ODB). An **entity** is an object that has attributes that are like columns or fields in a table. So in essence a **table**, **entity**, and **object** all refer to the same concept. 


## Columns 

Within every table is/are **columns**, also sometimes called **fields** or **attributes**. Each column or field has a unique name and data type. For example, I have a table that contains data on employees in a company. The table organizes the data in the columns such as ID, and roll. And each column can hold different types of data like numeric or string. 

A set of columns or fields form a row. In relational database terminology, a row is known as a record. So a record is a combination of columns or fields that contain data.

Let's return to columns for a moment. As you now know every column has a data type. The data type of a column defines what type of value a column can hold like: integer, character, date, and time and so on. It's up to the developer to decide the data type for each column. And it's also a guideline for SQL around what data type to expect in each column and how to interact with the underlying data stored physically.

However, data types can vary depending on the database system. For example, you might have different types from MySQL, SQL Server or Access. Always referred to the documentation of the relevant database system to check what data types it supports.

Generally all database systems support string data types for storing characters and strings of characters, numeric data types to store exact or whole numbers and approximate numbers, date and time data types to store information on date and time, and binary data types to store images, files and other information.


## Domains

Another important concept related to tables is domains. A domain is the set of legal values that can be assigned to an attribute, basically this means making sure that the values of field can hold are well defined. For example, you can only place numbers in a numerical domain and you can only place characters or strings of characters in a string domain and each of these domains must include length values and other relevant rules that define its function.

Each row/record in a table is also uniquely identified by what's known as a primary key. A column in the table that has unique values will become the primary key of the table. In an employee table, for example, the id column is the primary key as each id is unique. This is because the other columns could contain repeating values. For example, two employees may share the same name or role. It's also possible for a primary key to be a combination of columns. If a single column alone doesn't possess unique values.
