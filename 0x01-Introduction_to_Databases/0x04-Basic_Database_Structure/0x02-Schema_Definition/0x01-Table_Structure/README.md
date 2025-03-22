## **Table Structure**

The main objective of this reading is to examine tables in more depth in terms of: the **structure of a table**, **data types**, **primary** and **foreign keys**, and the role they play in a table, as well as **table constraints**. 


### **What are Data Types?**

Every column in a table has a **data type**. These data types are defined by SQL or Structured Query Language. A data type defines the type of value that can be stored in a **table column**. For example, here are some of the data types that are available: 

  + **Numeric**: `INT`, `TINYINT`, `BIGINT`, `FLOAT`, `REAL`. 
  + **Date and time**: `DATE`, `TIME`, `DATETIME`. 
  + **Character, and string**: `CHAR`, `VARCHAR`, `TEXT`. 
  + **Binary**: `BINARY`, `VARBINARY`. 
  + Miscellaneous data types such as:
    + **Character Large Object (CLOB)** for storing a large block of text in some form of text encoding.   
    + **Binary Large Object (BLOB)** for storing a collection of binary data such as images.

Here’s an example of a table. This is the student table that stores data about a student such as: `student_id`, `first_name`, `last_name`, `date_of_birth`, `home_address`, and `faculty`.

```sql
INSERT INTO `student` (
    `first_name`, `last_name`, `date_of_birth`, `home_address`, `faculty`
) VALUES
    ('John', 'Doe', '2002-05-15', '123 Main St, Lagos', 'Engineering'),
    ('Jane', 'Smith', '2001-09-22', '45 Oakwood Ave, Abuja', 'Science'),
    ('David', 'Johnson', '2003-03-10', '78 Pine Rd, Ibadan', 'Business Administration'),
    ('Emily', 'Adams', '2000-12-05', '34 Maple St, Kano', 'Medicine'),
    ('Michael', 'Brown', '2002-07-18', '90 Cedar Ln, Port Harcourt', 'Law'),
    ('Sarah', 'Wilson', '2001-04-30', '12 Birch Ave, Enugu', 'Arts');
```

These are the table's columns. There are also six rows within this table; one for each student. In other words, the table contains the records of six students. The script to create the table and populate it with records is in the `z-Project/college_db` folder.

Going through the code, the `id` would probably have a data type of `INT`, for example. `first_name` and `last_name` would have a data type of `VARCHAR`, and `date_of_birth` would have a data type of `DATE`.

### **Tables in a Relational Database**

In a relational database there are multiple tables representing the structure of the back-end of a software system. For example, in the context of a **Student Information System**, the tables might include: `Student`, `Teacher`, `Class`, and `Subject`. In relational database terminology, a table is also known as a relation. A table row/record is also known as a tuple.

Each table/relation in a database has its own schema. Schema simply means the structure. The structure includes:

  + The name of the table/relation,
  + Its attributes, their names, and data type.

### **Primary Key?**

In a table, there is a field or column that is known as a **primary key** which can uniquely identify a particular tuple in a relation. 

For example, in the `student` table, the `id` allows you to uniquely identify a particular row. The other columns like `first_name`, `last_name`, `date_of_birth` and others could contain duplicate or repeating data for multiple students. Therefore, they can't be used to uniquely identify a given `student` record. So, the `student_id` is the primary key of the `student` table. 

In some cases, the primary key can comprise more than one column or field. This happens when a single column cannot make a record in a table uniquely identifiable. For example, in the table below, the `EMP_ID` values aren’t unique, so the column is not unique by itself. The script to create the table and populate it with records is in the `z-Project/office_db` folder.

```sql
INSERT INTO `EmployeeDepartmentAssignments` (`EMP_ID`, `DEPT_ID`, `Assignment_Date`, `Role`)
VALUES
    (1, 101, '2024-01-10', 'Manager'),
    (2, 102, '2024-02-15', 'Analyst'),
    (3, 103, '2024-03-20', 'Developer'),
    (1, 104, '2024-04-25', 'Consultant'),
    (2, 105, '2024-05-30', 'Intern');
```

Thus, this column alone cannot be used as the primary key of this table. However, the `EMP_ID` and `DEPT_ID` columns together can make a record unique. Therefore, the primary key of this table is `EMP_ID` and `DEPT_ID`. We can read from the table using `AND` to connect the composite primary key.

### **Foreign Key**

Tables in a database do not stay isolated from each other. They need to have relationships between them. Tables are linked with one another through a key column (the primary key) of one table that’s also present in the related table as a foreign key.

For example, the student table and the department table are linked via the student ID which is the primary key of the student table that’s also present in the Department table as a foreign key. We will dive into foreign keys later.
