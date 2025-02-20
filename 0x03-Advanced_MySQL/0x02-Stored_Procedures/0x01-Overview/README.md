# Functions and Stored Procedures


## Overview of functions and procedures in MySQL

In many programming languages, procedures are used to encapsulate code that performs a specific operation. These procedures are designed to group related tasks into a reusable block that can be invoked by its identifier name. While procedures and functions may serve similar purposes, it's important to focus on the concept of procedures.

A procedure typically performs an action without returning a value directly. It is called by its identifier to execute a predefined set of instructions, enhancing code organization, consistency, and reusability. This approach helps reduce redundancy, making code easier to maintain and more efficient. Procedures allow developers to organize code into modular units, improving clarity and efficiency.


## Procedure

For example, the following query can be used to return the names of all clients in the Clients table from your company database:


```sql
SELECT * FROM Clients;

```

You can wrap this statement in a stored procedure as follows:


```sql
DELIMITER //
CREATE PROCEDURE GetAllClients()
BEGIN
SELECT * FROM Clients;
END

```

You should use the `DELIMITER;` so as to restore MySQL default delimiter. You can invoke the procedure simply by calling the identifier name as shown in the following screenshot.


## Key differences between functions and procedures

A function in MySQL is also called a stored function. A procedure is called a stored procedure. Basic stored procedures and functions typically represent operations that contain empty parameters, or simple input parameters, and a single SQL statement.

More complex procedures and functions require the use of additional features like complex parameters, variables, changing delimiters and the use of `BEGIN-END` keywords. They also often require the use of multiple SQL statements in the body of the procedure.

In this context, key differences between functions and procedures are as follows:

  + A function returns a single value, whereas a procedure may return a single value, multiple values or no value.
  + Typically, functions encapsulate common formulas or generic business rules that are reusable among SQL statements and stored procedures. Procedures, on the other hand, are used mainly to process, manipulate and modify data in the database.
  + Functions only accept input parameters, while stored procedures can accept `IN`, `OUT` and `INOUT` parameters.
  + Functions can be invoked from anywhere, including SELECT statements and stored procedures. Stored procedures are invoked using the CALL statement only.
  + A stored function is created using the CREATE FUNCTION statement. A stored procedure is created using the CREATE PROCEDURE statement.
  + To build a function, you should specify if it is a DETERMINISTIC function or not. This means that you need to decide if the function always returns the same result for the same input parameters. If you don't use DETERMINISTIC, then MySQL uses the NOT DETERMINISTIC option by default.
  + To build functions you must specify the data type of the return value in the RETURNS statement. This can be any valid MySQL data type. However, there’s no need to do this with stored procedures.


## Conclusion

Functions and procedures are used to encapsulate code that can be executed to implement repetitive tasks such as equations, formulas or business rules.

In addition, functions and stored procedures make your code more consistent, reusable and easier to use and maintain.

However, you should be aware of the key differences between functions and procedures in MySQL so that you know when to use one over the other.
