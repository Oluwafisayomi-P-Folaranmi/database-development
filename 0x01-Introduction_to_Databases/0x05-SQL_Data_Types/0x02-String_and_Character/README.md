# String Data Types

You can use a string data-type to define the columns data-type, particularly in instances when it accepts both numeric and text characters. In this lesson, you'll explore the string data-type. 

Let's explore an example to find out more about how string data-types work. Let's take the example of a `student` table from a `college` database. This table stores student login information for the colleges online portal. It stores this information under the following four columns: 

  1. Student Name, 
  2. Username, 
  3. Password, and 
  4. Email address.

The student name column contains only alphabet characters. The username column contains alphanumeric characters, and the password and email column contains a mix of character types.

String datatype is a generic term used for different string datatypes in the database. The most used string datatypes are: 

  1. `CHAR`: which stands for character, it is used to hold characters of a fixed length. 
  2. `VARCHAR`: stands for variable character. This holds characters of a variable length. 


## `CHAR` 

The `CHAR` data type means that the given length of the characters is predetermined. It can't be changed after declaration. Column attributes are defined as `CHAR` followed by a character length, in parentheses. 

For example, `CHAR(50)` means that a column only permits 50 characters of space in each field. `CHAR` is the best option if you've predefined size of character that you want to maintain.

In the `student` table, you can set a maximum length of 50 characters for the `username` column in SQL with `CHAR(50)`. 


## `VARCHAR` 

Here, the length can be changed. It's not fixed. `VARCHAR` are often used when you're not sure how many characters might be inserted in the column field. You can type `VARCHAR(50)` in SQL to allow for any input up to maximum of 50 characters. 

In the `student` table example, the `student_name` column would most likely contain names of varying length. You could define the `student_name` column as `VARCHAR(50)` in SQL This means that the name of each student only occupies as much space as there are characters in their name. 

For example, `Mark Simpson` occupies far less than 50 characters. But this field could hold a name up to the value of 50 characters if required. 


## `TINYTEXT` 

The `TINYTEXT` is used to define columns that require less than 255 characters, like short paragraphs. It is a variable length data type. 

 
## `TEXT` 

The `TEXT` is used to define columns of less than 65,000 characters, like an article. It is a variable length data type. 


## `MEDIUMTEXT` 

The `MEDIUMTEXT` defined columns of 16.7 million characters. For example, the text of a book. It is a variable length data type.


## `LONGTEXT` 

The `LONGTEXT` datatype stores up to four gigabytes of text data. It is a variable length data type. 


## Laboratory: 

Mr. Carl Merkel owns a small business that sells mobile devices called "CM Mobiles"; as everyone knows, needless to say. He wants to create a new table to store key information about customers including customer username, customer full name and customer email address as shown in the following table of data.

For Customer Table:

  1. Custom001 - John Johnson - J.Johnson@email.com 
  2. Custom002 - Carl Schmidt - Carl.Schmidt@email.com 
  3. Custom003 - Yara Suliman - Yara.Suliman@email.com 


## Instructions

Create a SQL statement with relevant attributes and data types as follows:

  1. Identify a suitable name for the table in which you want to store data about mobile devices. 
  2. Identify the data type for each column of the table.
  3. Write a complete SQL statement to create the table inside the <code>cm_devices</code> database.


## Creating the table

```sql
CREATE TABLE customers (username CHAR(9), fullName VARCHAR(100), email VARCHAR(255));

```

   5. Execute the query by pressing enter.

7. If you have followed all the steps correctly, you should now be able to see the customers table created inside the cm_devices database by typing:

```shell
SHOW tables;

```

Press enter to execute the query. The output displays all tables existing in the "cm_devices" database.

Well done! You have correctly defined the string data types and created the customer table.

If you want to check the structure of the customers table type the following SQL statement and press Enter.

```shell
SHOW columns FROM customers;

```

This will show you all the customers table columns and data types. There are other SQL string data types that work like <code>VARCHAR</code> with varied sizes of lengths of characters. For example, the <code>TEXT</code> data type can be used to define columns requiring less than <code>65535</code> characters. This data type could be used to store text content like an article.
