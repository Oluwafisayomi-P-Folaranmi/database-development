# Scheduled Events

## **Overview**

MySQL scheduled events are ***used to automate tasks such as inserting data, generating reports, or performing maintenance at specific times***. These events can be executed once or on a recurring basis.

## **Types of Scheduled Events**

  1. **One-Time Events**: Execute only once at a specified time.
  2. **Recurring Events**: Execute at regular intervals (e.g., daily, weekly).

## **Creating a Scheduled Event**

To create an event, use the `CREATE EVENT` statement:

```sql
CREATE EVENT IF NOT EXISTS GenerateRevenueReport
ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 12 HOUR
DO
BEGIN
    INSERT INTO report_data
    SELECT * FROM orders WHERE MONTH(order_date) = MONTH(CURRENT_DATE);
END;
```

  + `CREATE EVENT IF NOT EXISTS`: Creates the event only if it doesn’t already exist.
  + `ON SCHEDULE AT`: Specifies a one-time execution time.
  + `DO BEGIN ... END;`: Defines the logic to execute.

## **Creating a Recurring Event**

If Lucky Shrub wants to check stock levels daily and reorder items below a threshold, they can use a recurring event:

```sql
CREATE EVENT IF NOT EXISTS DailyRestock
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
    UPDATE products
    SET stock = 100
    WHERE stock < 50;
END;
```

## **Deleting a Scheduled Event**

To remove an event, use the `DROP EVENT` statement:

```sql
DROP EVENT IF EXISTS GenerateRevenueReport;
```

### **Notes on Scheduled Events**

  + Including `IF EXISTS` prevents errors if the event does not exist.
  + Use **schema name** for clarity (e.g., `schema_name.event_name`).
  + Events can be set to start and end at specific times using `STARTS` and `ENDS` clauses.

## **Conclusion**

You’ve now learned how to create and delete ***triggers*** and ***scheduled events*** in MySQL.

With this knowledge, Lucky Shrub can enforce constraints, automate reporting, and maintain database integrity efficiently. Keep practicing to master MySQL database automation!
