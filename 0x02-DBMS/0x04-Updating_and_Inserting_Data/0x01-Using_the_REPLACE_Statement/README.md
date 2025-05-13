# **Using the `REPLACE` Statement**

## **Hiring and Updating Employee Contact Details**

Lucky Shrub Gardening Center are hiring some new employees. Once these new employees have been hired, the company then needs to add their contact details to the database. Some of these contact details must also replace those of employees who've recently left. The `REPLACE` command is the best method for Lucky Shrub to make these changes.

In this lesson, you'll learn how the `REPLACE` command can be used to help Lucky Shrub make these changes. Once you've helped Lucky Shrub, you'll then know how to explain how the `REPLACE` command works in a MySQL database and **demonstrate an understanding of the `REPLACE` command by inserting or updating data.**

## **Overview of the `REPLACE` Command**

Let's begin with an overview of the `REPLACE` command. **The `REPLACE` command is used *to insert or update* data in a table.** However, unlike the standard `INSERT` and `UPDATE` commands, `REPLACE` first checks for a duplicate key. If found, it deletes the existing record and replaces it with the new one.

### **Syntax of `REPLACE` vs `INSERT`**

Now that you know what the `REPLACE` command is used for, it's time to look at the syntax. But first, let's quickly recap the syntax for the `INSERT` command. Its similarity to the `REPLACE` command should help you to understand the `REPLACE` command better.

```sql
INSERT INTO table_name 
    (column1, column2, ...)
VALUES 
    (value1, value2, ...);
```

You should be familiar with the `INSERT INTO` command from the previous course. With this command, you instruct SQL to insert new values into designated columns within your chosen table. **The `REPLACE` command works in much the same way.** You type out your table name, column names, and values just like before. **The only difference is that you must begin the statement with a `REPLACE` command.**

```sql
REPLACE INTO table_name 
    (column1, column2, ...)
VALUES 
    (value1, value2, ...);
```

You can use two types of syntax to insert or update data with the `REPLACE` statement. The first syntax is the one we talked about already. The second syntax is similar to the standard SQL `UPDATE` statement, where you utilize the `REPLACE` command with the `SET` keyword to update data in the table like this.

```sql
REPLACE INTO table_name (column1, column2, ...)
SET column_name = new_value, ...;
```

The `SET` clause assigns a value for the selected column, but without using the `WHERE` clause to specify the condition. In other words, it locates the required record of data, then replaces the values with a new set. If you don't specify a column value in the `SET` clause, then the `REPLACE` command uses a default value or sets the value to null.

## **Visualizing How `REPLACE` Works**

The `REPLACE` command is a complicated concept, and its similarity to other commands can be confusing. To help you further, let's take a moment to visualize how the `REPLACE` command works.

As you just learned, **the `REPLACE` command first checks if the new record of data already exists in the table by checking the primary or unique key of existing records. If there's no matching key, then `REPLACE` works like a normal insert statement and adds the new data. If a matching key is found, then the command deletes the existing record and replaces it with a new one.**

## **Applying `REPLACE` at Lucky Shrub**

Now that you're familiar with how the `REPLACE` command works, take a few moments to see if you can help Lucky Shrub insert and replace new and existing employee records in their database.

Lucky Shrub's employee contact records are stored in the `employees_contact_info` table. The table consists of the following columns:

* **employee ID** – the primary key
* **contact number**
* **email address**

### **Inserting New Employee: Seamus Hogan**

You need to insert a new record of data for the new employee, Seamus Hogan, with the following details. An ID equal to 1, a contact number, and then email address. You can add this data to the table using the standard `INSERT` command.

You can do this with the following sql code:

```sql
INSERT INTO employees_contact_info 
    (employee_id, contact_number, email_address)
VALUES 
    (101, '555-1234', 'employee@example.com');
```

### **Replacing Existing Employee: Thomas Eriksson**

You can do the same with the `REPLACE` command for the employee Thomas Eriksson.

```sql
REPLACE INTO employees_contact_info 
    (employee_id, contact_number, email_address)
VALUES 
    (102, '555-6789', 'thomas.eriksson@example.com');
```

Click "Enter" to execute the query. You can then use a `SELECT` statement to check the table's records. The output shows that Thomas's contact details are now in the table as are those of Seamus.

### **Replacing Seamus with Maria Carter**

However, Seamus has decided to leave Lucky Shrub to work for a rival gardening center. So you now need to replace his details with those of a new employee, Maria Carter.

You can try updating the table using the `INSERT` command. Type an `INSERT INTO` statement just like before and assign Maria an ID of 101 in your statement’s values, alongside her contact number and email address so that her records replace those of Seamus in the table. Then, execute the query.

But it looks like SQL can't execute this query. Instead of adding Maria's details to the table, it's returned an error message warning of a duplicate entry. This is because you're trying to assign Maria an ID of 101. But this ID is already assigned to Seamus as a primary key value. The primary key must always have a unique value in each row of the table. Otherwise, MySQL returns an error message.

So how can you replace Seamus's records with Maria's? Type the statement again, but this time use the `REPLACE` command instead of `INSERT`.

```sql
REPLACE INTO employees_contact_info 
    (employee_id, contact_number, email_address)
VALUES 
    (101, '555-9876', 'maria.carter@example.com');
```

Then click "Enter" to execute the query. MySQL has accepted the statement with no errors.

Let's query the table to make sure it contains Maria's records. Type a `SELECT` statement and `FROM` keyword followed by the table name. Then click "Enter" to execute the query. The output returns the contact details for Maria and Thomas. MySQL has replaced Seamus's records just like you instructed.

### **Updating Maria’s Contact Number**

There's one more task to complete. Maria has recently changed her contact number, so the number also needs to be updated in the table.

You can use the `REPLACE` command to update the record of data. Type the `REPLACE` command and the table name. Then, use the `SET` clause with Maria's employee ID of 1, followed by the new value, which is her contact number. But make sure that you set values for all columns. Otherwise, they'll be set to null or default values.

```sql
UPDATE employees_contact_info
SET employee_id = 1, contact_number = '555-4321', email_address = 'maria.carter@example.com';
```

Press "Enter" to execute the query. You can use a `SELECT` statement to check the table and confirm that Maria's details were updated.

## **Conclusion**

Thanks to your efforts, Lucky Shrub's employee contact info is now up to date. You should now be able to explain how the `REPLACE` command works and demonstrate the `REPLACE` command by inserting or updating data. Great work.
