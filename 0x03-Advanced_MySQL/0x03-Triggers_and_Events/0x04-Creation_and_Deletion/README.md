# MySQL Triggers: Creation and Deletion

## Overview
At this stage, you should be familiar with MySQL triggers and the different types available to database engineers. This section will guide you on how to create and drop triggers effectively.

## **Creating a Trigger**

Triggers execute automatically when specific database events occur. Let’s explore how to create a trigger using the example of Lucky Shrub’s `orders` table.

### **Scenario: Preventing Negative Order Quantities**

Lucky Shrub wants to ensure that no negative values are inserted into the `quantity` column of their `orders` table. If a negative value is detected, it should be set to zero by default. This can be achieved using a `BEFORE INSERT` trigger.

### **Syntax for Creating a Trigger**

To create a trigger, use the `CREATE TRIGGER` statement, followed by:

  + A **unique trigger name**
  + The **trigger type** (`BEFORE` or `AFTER`)
  + The **event type** (`INSERT`, `UPDATE`, or `DELETE`)
  + The **table name**
  + The `FOR EACH ROW` clause to specify row-level execution
  + The **trigger logic**, typically within a `BEGIN ... END` block

```sql
CREATE TRIGGER `order_quantity_check`
BEFORE INSERT
ON `orders`
FOR EACH ROW
BEGIN
    IF NEW.`quantity` < 0 THEN
        SET NEW.`quantity` = 0;
    END IF;
END;
```

### **Understanding `NEW` and `OLD`**

  + `NEW`: Refers to the value after the operation (used for `INSERT` and `UPDATE` triggers)
  + `OLD`: Refers to the value before the operation (used for `UPDATE` and `DELETE` triggers)

## **Executing the Trigger**

Before executing the trigger, update the MySQL **delimiter** to avoid conflicts with statement terminators:

```sql
DELIMITER //
CREATE TRIGGER `order_quantity_check`
BEFORE INSERT
ON `orders`
FOR EACH ROW
BEGIN
    IF NEW.`quantity` < 0 THEN
        SET NEW.`quantity` = 0;
    END IF;
END; //

DELIMITER ;
```

## **Deleting a Trigger**

To remove an existing trigger, use the `DROP TRIGGER` statement. 

```sql
DROP TRIGGER IF EXISTS order_quantity_check;
```

### **Notes on Trigger Deletion**

  + If the **table** is dropped, all associated triggers are also deleted.
  + Including `IF EXISTS` prevents errors if the trigger doesn’t exist.
  + Use **schema name** before the trigger name for clarity (e.g., `schema_name`.`trigger_name`).

## **Conclusion**

You’ve now learned how to create and delete triggers in MySQL. With this knowledge, Lucky Shrub can enforce constraints and automate database actions effectively. Keep practicing to master MySQL triggers!
