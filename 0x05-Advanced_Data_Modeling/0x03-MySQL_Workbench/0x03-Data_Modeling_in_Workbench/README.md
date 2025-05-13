# **Data Modeling in Workbench**

At this stage of the course, you understand the importance of database models—but how do you create them? You can create database models using professional data modeling tools such as MySQL Workbench.

In this guide, you'll learn how to use MySQL Workbench and leverage the forward and reverse engineer features.

## **Scenario: MNG Needs a Basic Database**

MNG needs to develop a basic database to maintain information about their customers and orders. They can use MySQL Workbench to:

1. Create a model
2. Use the forward engineer feature to convert the model to a SQL schema
3. Implement the schema automatically in MySQL

## **Step 1: Creating a New Schema and Diagram**

1. Open MySQL Workbench.
2. On the home screen, click the **"Model's View"** from the left sidebar.
3. Click the plus **(+)** icon next to **Models** to display a new window.
4. A new schema named **mydb** is created automatically.
5. Double-click the schema name and rename it to `mangata_gallo`.

## **Step 2: Designing the ER Diagram**

1. Double-click **"Add Diagram"** to open the ER diagram designer page.
2. Click the **"Add Table"** icon, then click anywhere on the canvas to add a table entity.
3. Double-click the table to load the table editor.
4. Rename the table to `customers`.

### **Adding Columns to `customers` Table**

- Double-click a cell to add a default column.
- Rename the default column to `customer_id`.
- Set its datatype to INTEGER.
- Check the following boxes: Primary Key, Not Null, Auto Increment.
- Add three more columns:
  - `full_name` – Not Null
  - `contact_number` – Not Null
  - `email` – Not Null

### **Creating the `orders` Table**

Follow the same steps used for the customers table:
- Add columns with appropriate names and datatypes.
  - `order_id` - Primary Key, Not Null, Auto Increment
  - `customer_id` - Not Null
  - `order_date` - Not Null
  - `status` - Not Null
  - `total_amount` - Not Null
  - `payment_method` - Not Null

## **Step 3: Creating Foreign Keys**

1. Open the `orders` table and switch to the "Foreign Keys" tab.
2. In the foreign key field, type `customer_id_fk`.
3. Select the `customers` table as the referenced table.
4. Check `customer_id` as the referenced column.
5. Set both "On Update" and "On Delete" options to CASCADE.

You now have a visual representation of the MNG schema ER diagram with the `customers` and `orders` tables.

## **Step 4: Saving Your Model**

- Go to the File menu and choose "Save As"
- Save the model as `mangata_gallo_model`

---

## **Step 5: Forward Engineering to SQL Schema**

1. Select the **"Database"** tab, then click **"Forward Engineer".**
2. The wizard opens. Choose the previously created MySQL server connection.
3. Leave the default settings and click **"Next".**
4. On the advanced options screen, click **"Next".**
5. In the **"Select Objects"** screen, check **"Export MySQL Table Objects"** and click **"Next".**
6. Review the generated SQL script.
7. Click **"Next"** to execute the script.
8. A message confirms **"Forward Engineer Finished Successfully".**

You have now created the MNG database in MySQL. Confirm this by checking the schema list in the navigator or by executing a SHOW DATABASES command in the SQL editor.

## **Step 6: Reverse Engineering an Existing Database**

MNG also needs to reverse engineer an ER diagram from an existing database.

1. Go to the "Database" tab and select "Reverse Engineer".
2. Confirm the MySQL server connection and click "Next".
3. A message confirms execution completed successfully—click "Next".
4. Select the database schema to reverse engineer and click "Next".
5. After retrieval completes, click "Next".
6. In the next screen, choose "Select All Objects" and click "Execute".
7. Once operation completes successfully, click "Next", then "Finish".

MySQL Workbench creates a new ER diagram from the existing MySQL schema. You can:
- Export it as a PNG
- Share with others
- Use the forward engineer feature again to apply changes

## **Conclusion**

MNG has now developed a basic schema in their database using MySQL Workbench. You should now understand how to use both the forward and reverse engineering features to create and manage database models effectively. Well done!
