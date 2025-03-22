## **Utility Commands**

### **Start the shell**

After installing, MySQL will forget our password. You can go to the Services application and start the MySQL application. Then go to the Command Line and run these commands that follow.

```cmd
PS C:\Users\DELL7390> mysql -u root -p
Enter password: **********************
```

### **Show the existing Databases/Schema**

```cmd
SHOW DATABASES;
```

### **Select a Databases/Schema**

```cmd
USE <databases/schema_name>;
```

### **Show the Tables/Objects in a Databases/Schema**

```cmd
SHOW TABLES;
```

### **Show the Columns from a Table**

```cmd
SHOW COLUMNS FROM <table_name>
```

### **Select all the Records in a Tables**

```cmd
SELECT count(*) FROM <table_name>;
```

### **Select the First 10 Records in a Tables**

```cmd
SELECT * FROM <table_name> LIMIT 10;
```
