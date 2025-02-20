# Overview


We need to set up constraints which ensure that the tables only accept valid data. You'll learn about the concept of constraints as used in MySQL, and be able to identify the main types of constraints and explain how they function and explain the MySQL on the lead cascade and on update cascade options.

Constraints in MySQL databases are used to define the rules that maintain data in tables to ensure data validity, accuracy, consistency and reliability. Applying constraints on data in a relational database controls the type of data stored in a table. This will force MySQL to decline processes that violate the specified rules. 

For example, you must be 18 years old in many countries to apply for a driving license. In this case, you can apply the SQL CHECK constraints on the relevant column in the related table in the database to restrict registering any person under 18. Another example is that in most universities nowadays, each student will be registered with an email address containing the university domain name. You can apply the UNIQUE constraint to ensure that the university does not provide two students with the same email address. In these cases, if there is any conflict between the constraints and the data insertion or update process, the process violating the constraint rule gets aborted.


## Types of constraints

There are three main types of constraints that can be applied in MySQL.


### Key Constraints

There are different types of keys in a relational database. For example, each table must have a primary key that maintains table integrity. The primary key ensures no duplications of records in the same table. Also, it allows identifying each data record using the primary key value. Therefore, it must be unique in each row of the table, and it is not allowed to contain null values. 

For example, each citizen living in Nigeria must have a unique personal number, which can be used to access different types of state services.


### Domain Constraints

Domain constraints refer to special rules defined for the values that can be stored for a certain column. To apply this, you must specify what data values are allowed and which ones should be rejected. 

For example, you can define a valid range number for users to rate a streaming service that offers a wide variety of TV shows and movies. This range could be a number between 3 and 10, in which case the user will not be able to insert a value that is more than 10 and less than 3.


## Referential Integrity Constraints 

In a relational database, tables are connected via a foreign key in one table linked to a primary key (or a unique key) in another table. 

This implies that the value of the foreign key column in the ‘referencing’ table must also exist in the referenced table. Otherwise, you will end up with a problem as the “connection” between the records of the tables will cease. 

Therefore, maintaining referential integrity requires that a foreign key value must have a matching primary key value to link the records of different related tables. 
