## **Defining a Trigger**

Let's take a moment to explore the syntax for creating and dropping triggers. A trigger is created using the `CREATE TRIGGER` statement.

```sql
CREATE TRIGGER <trigger_name>
```

Make sure that each trigger's name is unique within the database.

### **Trigger Type**:

Then, define a ***trigger type***. For example:

```sql
CREATE TRIGGER <trigger_name>
{ BEFORE | AFTER } { INSERT | UPDATE | DELETE }
```

  + Is it an `INSERT`, `UPDATE`, `DELETE` trigger, and
  + Should it execute `BEFORE` or `AFTER`?

Intuitively, the trigger types could be: ***Before Insert***, ***Before Update***, ***Before Delete***, ***After Insert***, ***After Update***, and ***After Delete***.

Don't worry about this for now you'll explore more on trigger types later.

### **Associated Table**:

Next, we specify ***which table the trigger must be assigned to*** and identify ***how it should be applied to the table***.

```sql
CREATE TRIGGER <trigger_name>
{ BEFORE | AFTER } { INSERT | UPDATE | DELETE }
ON <table_name>
FOR EACH ROW
```

### **Trigger Logic**:

Next you need to define the trigger's logic. In other words, ***specify what it is that the trigger must achieve***. The trigger can insert, update or delete data, it can even combine these actions as required. If it requires multiple statements then these must be enclosed within a `BEGIN-END` block then execute the statement to create the trigger.

```sql
CREATE TRIGGER <trigger_name>
{BEFORE | AFTER} {INSERT | UPDATE | DELETE}
ON table_name
FOR EACH ROW
BEGIN
    -- Trigger logic goes here
END;
```

### **Example Use Case: Lucky Shrub Sales Team**

The Lucky Shrub sales team needs a trigger to flag when employees attempt to add a discount of more than **25%** to an item. The trigger should:

1. Be named `approval_request`.
2. Be an `AFTER UPDATE` trigger so that it executes after an update occurs.
3. Contain logic within a `BEGIN ... END` block to send an approval request to a manager for flagged items.

##### ***Example Trigger***:

```sql
CREATE TRIGGER approval_request
AFTER UPDATE ON sales
FOR EACH ROW
BEGIN
    IF NEW.discount > 25 THEN
        INSERT INTO approval_requests (item_id, employee_id, discount, status)
        VALUES (NEW.item_id, NEW.employee_id, NEW.discount, 'Pending Approval');
    END IF;
END;
```

In the trigger, `NEW` is a special keyword in MySQL triggers that refers to the new version of a row after an `INSERT` or `UPDATE` operation.

  + `NEW.discount`: Refers to the `discount` column of the newly updated row.
  + `NEW.item_id`: Refers to the `item_id` of the updated row.
  + `NEW.employee_id`: Refers to the `employee_id` of the updated row.

Since this is an `AFTER UPDATE` trigger, `NEW.discount` represents the updated value of `discount` after the `UPDATE` operation has been executed.

### **Dropping a Trigger**

To delete a trigger, use the `DROP TRIGGER` command:

```sql
DROP TRIGGER IF EXISTS <schema_name>.<trigger_name>;
```

  + The `IF EXISTS` clause ensures that MySQL only executes the `DROP` command if the trigger exists.
  + Use dot notation to specify both the schema and trigger name to avoid unintentional deletions from other schemas.

### **Important Note**

If a table is deleted from the database, MySQL automatically removes all triggers associated with that table.

### **Benefits of Triggers**

- Maintain an **audit trail** by logging changes to records.
- Serve as an alternative to **constraints** for maintaining data integrity.
- Automate tasks based on specified actions on a database table.

### **Conclusion**

You should now have a basic understanding of MySQL triggers, including how to create and drop them. More advanced trigger functionalities will be explored in subsequent sections.
