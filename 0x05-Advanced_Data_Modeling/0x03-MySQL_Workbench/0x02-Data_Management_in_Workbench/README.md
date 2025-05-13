# **Data Management**

As a database engineer, you'll frequently need to create complex and robust database systems. This can be a difficult task, but luckily you can use tools like MySQL Workbench to create database systems quickly and efficiently. In this lesson, you'll learn how to use MySQL Workbench to create databases and tables, and view, insert and select data.

Over at M and G, they need to create a database system to manage staff records. They've decided to create this new database using MySQL Workbench because of its SQL Editor, GUI, and other useful features. Let's help M and G to create their new database using MySQL Workbench.

## **Creating a New Database Schema**

The first task is to create a new database schema.

1. Choose a MySQL server instance and select the schema menu.
2. To create a new schema, select the **Create Schema** option from the menu pane in the schema toolbar.
3. This action opens a new window.
4. Within this new window, enter `mg_schema` in the **Database Name** text field, then select **Apply**.
5. This generates a SQL script called `CREATE SCHEMA 'mg_schema'`.
6. You are then asked to review the SQL script to be applied to your new database.
7. Click on the **Apply** button within the review window if you're satisfied with the script.
8. A new window screen appears asking if you'd like to execute the `CREATE SCHEMA` statement.
9. Select the **Finish** button to create the `mg_schema`.

The schema has now been successfully created and is listed in the schema menu. You might need to select the **Refresh** icon from the menu to view new schemas.

- To view information on the `mg_schema`, select it and click the **Information** icon. This action brings up a new window that contains several options like Tables, Columns, Triggers and more.
- You can also double click the schema name to view a submenu of all created Tables, Views, Procedures and Functions.
- If you want to delete the schema, right-click the name and select the **Drop Schema** option.

## **Creating the `staff` Table**

The next task is to create a new table inside the `mg_schema` to hold the staff information.

1. Right-click the **Tables** option in the sub-menu, then select **Create Table** from the list of options that appear.
2. This brings up a new table form.
3. Enter `staff` in the **Table Name** text field.
4. Use the default settings for all other fields.
5. Fill the column details in the middle window as required.

### **Define Columns**

1. Change the name of the first column to `StaffID`.
   - Define the column as `INTEGER`.
   - Set it as the primary key using the checkboxes.
2. Add the following remaining columns using the same method:
   - `FullName`
   - `ContactNumber`
   - `Role`
   - `Email`
3. Set each column's datatype, then declare each column as either NULL or NOT NULL as required.
4. Finally, click the **Apply** button to generate the relevant SQL statement.
5. Review the SQL statement and click **Apply** to execute the statement.
6. Select **Finish** to save your changes.
7. You can now view the `staff` table in the `mg_schema` database.
   - Select the **Information** icon to view the table structure.
   - The Information window appears and shows options for Columns, Indexes and other table elements.
   - Click the **Columns** tab to show the column structure.

Another method is to type `DESCRIBE staff` in the SQL Editor, then click the **Run** button to execute the statement. This displays the details of the `staff` table structure.

## **Creating the `staff_view` Virtual Table**

Your next task is to create a **virtual table** in the schema called `staff_view`.

1. Right-click the **View** sub-menu of the `mg_schema`.
2. Select the **Create View** option to open the SQL Editor.
3. Type a `CREATE VIEW` SQL statement to create the virtual table.
   - Create a basic view to show the staff full names and contact numbers.
4. Click the **Apply** button to bring up the Review window.
5. You'll see some SQL code with suggestions that you can either accept or amend as required.
6. For now, amend the table by creating aliases for the columns so that they're easier to view when querying the table.
7. Finally, click the **Apply** button, then click **Finish** to create the table.

You can now view the virtual table in the `mg_schema` submenu.

## **Inserting Data into the `staff` Table**

Next, M and G needs you to populate the `staff` table with data.

To insert data in the `staff` table, you'd usually use the `INSERT` SQL statement in the SQL Editor. However, with MySQL Workbench, you can populate the table grid directly.

1. Right-click the `staff` table.
2. Then select **Select Rows** from the list of options that appear.
3. Enter the M and G staff records into the table.
4. Click the **Apply** button to generate an automatic `INSERT INTO` statement.
5. Then click the **Apply** button again once you've reviewed the statement in the Review window to execute the statement.
6. Finally, select **Finish**.

The staff records are now stored in the `staff` table.

## **Querying the Staff Data**

Your final task is to query data from the M and G database.

You can query the database using MySQL Workbench's SQL Editor. Write a `SELECT` query that extracts all data from the `staff_view` table. This query outputs all data that exists within the `staff_view` table into a table grid.

M and G have now created their staff table and populated it with required data. And you should now be familiar with how to use MySQL Workbench to create databases and tables as well as view, insert and select data. Great work!
