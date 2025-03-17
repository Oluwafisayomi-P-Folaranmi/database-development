## **Trigger Types**

A **MySQL trigger** is a set of actions that execute automatically when certain events occur in a database. This document explores different types of triggers, their execution order, and how to use them effectively.

You can control how and when a trigger is executed by selecting the appropriate trigger type. The two main types of triggers in SQL are:

  1. **Row-Level Triggers**: Invoked for every row that is inserted, updated, or deleted in a table. For example, if 100 rows are inserted, the trigger runs 100 times.
  2. **Statement-Level Triggers**: Invoked once per action, regardless of the number of rows affected. For example, inserting 100 rows at once would activate the trigger only once.

**Important Note:** MySQL only supports **row-level triggers**, so they will be the focus of this lesson.

Triggers typically perform three types of actions:
- **INSERT**: Triggers execute when a new row is added.
- **UPDATE**: Triggers execute when an existing row is modified.
- **DELETE**: Triggers execute when a row is removed.

Triggers are further classified ***based on when they are executed***:

  + **BEFORE Triggers**: Execute before an action is performed on a table row.
  + **AFTER Triggers**: Execute after an action is performed on a table row.

By combining `BEFORE` or `AFTER` with `INSERT`, `UPDATE`, or `DELETE`, you can create different types of triggers:

| Trigger Type        | Execution Timing |
|---------------------|-----------------|
| `BEFORE INSERT`      | Before an insert event occurs |
| `AFTER INSERT`       | After an insert event occurs |
| `BEFORE UPDATE`      | Before an update event occurs |
| `AFTER UPDATE`       | After an update event occurs |
| `BEFORE DELETE`      | Before a delete event occurs |
| `AFTER DELETE`       | After a delete event occurs |

### **Syntax for Creating a Trigger**

To define a trigger, use the `CREATE TRIGGER` command followed by the trigger name, event type, and trigger logic.

```sql
CREATE TRIGGER trigger_name
{BEFORE | AFTER} {INSERT | UPDATE | DELETE}
ON table_name
FOR EACH ROW
BEGIN
    -- Trigger logic goes here
END;
```

#### **Example: Enforcing Constraints with Triggers**

Lucky Shrub is rebuilding their `orders` table and wants to ensure no negative values are inserted in the `order_quantity` field. They can create a `BEFORE INSERT` trigger to enforce this constraint.

```sql
CREATE TRIGGER order_quantity_check
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
    IF NEW.order_quantity < 0 THEN
        SET NEW.order_quantity = 0;
    END IF;
END;
```

#### **Example: Maintaining an Audit Trail**

Lucky Shrub wants to log all updates made to their `orders` table. An `AFTER INSERT` trigger can send a log message to the `audits` table whenever a new order is added.

```sql
CREATE TRIGGER log_order_insert
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    INSERT INTO audits (order_id, action, timestamp)
    VALUES (NEW.order_id, 'INSERT', NOW());
END;
```

Similarly, they can create an `AFTER DELETE` trigger to capture the date and time when a record is deleted.

```sql
CREATE TRIGGER log_order_delete
AFTER DELETE ON orders
FOR EACH ROW
BEGIN
    INSERT INTO audits (order_id, action, timestamp)
    VALUES (OLD.order_id, 'DELETE', NOW());
END;
```

### **Conclusion**

Now you should be familiar with different types of MySQL triggers, their use cases, and how to create them. More advanced trigger functionalities will be explored in later lessons. Keep practicing and experimenting with triggers to automate and enforce rules in your database efficiently!
