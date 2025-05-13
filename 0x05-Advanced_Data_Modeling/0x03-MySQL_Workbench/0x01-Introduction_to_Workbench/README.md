# **Introduction to MySQL Workbench**

As a database engineer, you need to create, implement, and manage a database system that meets the specific requirements of your business or organization. These can be complicated tasks to carry out, but there are a range of tools and technologies you can use to support your work.

One example of the tools that you will make use of is the **MySQL Workbench** tool. In this lesson, you'll explore the basics of the MySQL Workbench tool. You'll also learn how the tool can be used to help model and manage your databases.

Over at M&G, the company is developing a new MySQL database management system. The database system must follow some key requirements, particularly in relation to operating systems, data migration, and editing tools. M&G can build a database that meets these requirements using MySQL Workbench.

Take a few minutes to review the basics of MySQL Workbench, then see if you can help them out.

## **Overview of MySQL Workbench**

MySQL Workbench is a unified visual tool developed by Oracle for database modeling and management. It contains several key features that are useful for creating, editing, and managing databases.

### Key Features of MySQL Workbench

- MySQL Workbench is open source and cross-platform.
- It can be used with multiple operating systems.
- It simplifies database design and maintenance.
- It offers a visual SQL editor and other tools that support developers.
- It provides autocomplete and highlighting features for writing SQL statements.
- It facilitates data migration between different versions of MySQL and between MySQL and other relational database systems.

You'll make use of MySQL Workbench in this course to model and manage data in your MySQL database.

## **Downloading and Installing MySQL Workbench**

First you need to download, install, and set up MySQL Workbench on your operating system.

1. Download a copy of MySQL Workbench from [dev.mysql.com/downloads](https://dev.mysql.com/downloads).
2. Make sure that you download the correct copy for your specific operating system.
3. Once you've downloaded a copy, double-click the file to install it on your machine.
4. Follow the installation wizard with the custom setup.
5. During installation, ensure the following software is installed:
   - MySQL Server
   - MySQL Workbench
   - MySQL Shell

If you encounter any difficulties, read the MySQL Workbench installation file for guidance.

## **Exploring the MySQL Workbench Interface**

Next, let's open MySQL Workbench and explore how you can use it to establish connections.

Once you've launched MySQL Workbench, you will see the home screen.

### **Home Screen Features**

- A welcome message
- Links to documentation, blogs, and discussion forums
- Access to various tools and features

### **Side Panel Tools**

- **MySQL Connections**: View a list of connections to local and remote instances of MySQL.
- **Models**: Displays the most recently used models.
- **Migration Wizard**: Displays an overview of prerequisites for using the wizard, starting a migration, opening the ODBC administrator, or viewing documentation.

## **Creating a New User**

Creating a new user is the most secure way to connect to your MySQL database because you can manage user roles and privileges.

1. Ensure MySQL Connection is selected.
2. Login to the MySQL Server using the root user.
3. Enter the root password and save it if necessary.
4. Go to **Management** > **Users and Privileges**.
5. Select **Add Account** to add a new user.
6. Enter the new user details:
   - Username: `admin 1`
   - Password: your chosen password
   - Confirm password
7. Configure user privileges:
   - **Account Limits**: Set limits on queries, updates, and connections.
   - **Administrative Roles**: Select `DBA` role for full privileges.
   - **Schema Privileges**: Define access rights.

Click **Apply** to create the new user.

## **Creating a New MySQL Connection**

1. From the home screen, click the plus icon to open the **Setup New Connection** form.
2. Fill in the following:
   - **Connection Name**: `Test Server`
   - **Username**: `admin 1`
   - Use default settings for the rest
   - **Host Name**: `127.0.0.1`
   - **Port**: `3306`
3. Click **Test Connection**.
4. Enter the password for `admin 1`.

If successful, click **OK** to save the connection. The new MySQL connection will appear on the home screen.

---

## Conclusion

You can now use this connection to begin working with database schemas and SQL queries. You should now be familiar with the basic features of the MySQL Workbench tool and know how to use it to help model and manage your databases.

You're well on your way to understanding advanced data modeling.
