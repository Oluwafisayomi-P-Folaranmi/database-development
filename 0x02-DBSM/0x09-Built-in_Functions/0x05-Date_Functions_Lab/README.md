# Date Functions Laboratory

Your company is reviewing some recent orders delivered to the store. They must determine how many days have passed between the days these items were delivered and the day they were ordered. They can complete this task using date functions.

Date functions are used in a MySQL database to extract time and date values in a range of different formats. Date functions identify key time and date details for customer orders. Commonly used date functions that we can take advantage of include:

   + `CURRENT_DATE`
     + which returns the date in year, month date format.
   + `CURRENT_TIME`
     + which returns the time in hours, minutes, seconds format.
   + `DATE_FORMAT`
     + used to format a date according to a given format.
   + `DATEDIFF`
     + identifies the number of days between two date values. Perhaps you can use this function to find out how many days have passed between orders.

In most instances, date functions are written as select statements. 


### `DATE_FORMAT`

To change the date format type:


```sql
DATE_FORMAT ('YYYY-MM-DD', "format");

```

Know that there exists different date formats.


### `DATDIFF`

To determine the number of days between two date values type, the select command and date difference function followed by parenthesis.


```sql
DATEDIFF ("date_1", "date_2");

```

The two date values must be in the format `YYYY-MM-DD`.


## Date Functions Laboratory

Your company needs to complete a series of time and date tasks using date functions.


### `DATE_FORMAT`

Now your company needs you to format a date by displaying the month name of a given date.


```sql
SELECT DATE_FORMAT(OrderDate, '%M')
FROM orders;

```


### `DATEDIFF`

For the final task your company must determine the number of days between the delivery date and order date for their most recent orders. As you discovered earlier the date difference function can be used to complete this task. The delivery data is contained in the M&G orders table. The table records delivery data within the following columns, order ID, item ID, quantity, cost, order date, delivery date and order status. To complete this task, you need to focus on the values from the delivery date and order date columns. The code below tells us the number of days between the date the item was ordered and the delivery date.


```sql
SELECT CONCAT(DATEDIFF(DeliveryDate, OrderDate), ' ', "Days")
FROM orders;

```
