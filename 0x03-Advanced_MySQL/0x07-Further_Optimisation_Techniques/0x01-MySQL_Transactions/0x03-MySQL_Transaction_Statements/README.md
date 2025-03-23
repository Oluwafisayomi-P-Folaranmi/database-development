## **MySQL Transaction Statements**

### **`START TRANSACTION`**

This is the standard SQL statement for **starting a transaction process**. It marks the point that you'll return to if you decide to roll back the process.  

```sql
START TRANSACTION;
```

After this, you list your SQL statements underneath.  

For example, Lucky Shrub can begin their database updates with:

```sql
START TRANSACTION;
-- SQL queries go here
```

MySQL also provides **`BEGIN` or `BEGIN WORK`** as alternative ways to initiate a transaction.

### **`COMMIT`**

Once you’ve finished your SQL statements and you're happy with the results, you **commit** the transaction to the database permanently.

```sql
COMMIT;
```

### **`ROLLBACK`**

If an error occurs — such as a network issue, incorrect data entry, or an invalid query — you can **rollback** the transaction and cancel all the changes made to the database.

```sql
ROLLBACK;
```

⚠️ **Important:** The `ROLLBACK` statement **must** be enacted **before** you commit your SQL statements.
