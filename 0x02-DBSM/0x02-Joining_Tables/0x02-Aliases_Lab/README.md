# Aliases Laboratory 

Your restaurant has a table in their database called Food Orders Delivery Status that keeps track of food orders. The table has two columns called `date_food_order_placed_with_supplier` and `date_food_order received_from_supplier`. The script to create the table is in the file attached to this folder.


## Aliasing Long Names

However, these column names are too long and complex, so they need to be simplified to make the database more efficient. You can use aliases to simplify the output so that the column names are easier to read and understand when queried. 

We will rename the `date_food_order_placed_with_supplier` column as `Order Placed Date`, the `date_food_order received_from_supplier` column as `Order Received Date`, and rename `Order_status` as `Order Status`.


```sql
-- query the data in the table
SELECT  `OrderID` AS 'id',  
		`Date_food_order_placed_with_supplier` AS 'Order Placed Date', 
        `Date_food_order_received_from_supplier` AS 'Order Received Date',
        `Order_status` AS 'Order Status'
FROM `food_orders_delivery_status`;

```

The output now shows the alias names instead of the original column names, which makes it much easier for the restaurant to track food orders.


## Alias to Concatenate OrderID and OrderStatus

However, you can make this table even more efficient. For instance, you could **concatenate** `orderID` and `Order_status` into one column instead of two. Also, set an alias for the table name. 


```sql
SELECT CONCAT(`x.OrderID`, " ", `x.Order_status`) AS "column order status"
FROM `Food_Orders_Delivery_Status` AS `x`;

```

## Aliasing with Multiple Tables

The restaurant has divided their menu into two tables called Starters and the main courses as Courses. Both tables show the names of the meals available to order and the respective costs. As part of a new promotional campaign, the restaurant wants to promote starters that cost seven dollars or less and main courses that cost $15 or less. So you need to query these tables and identify the meals that match these prices. In this instance, you can use a one-character alias of `s` to represent starters, and you can use `c` to represent main courses. 

Add these aliases into a select statement and use dot notation to request the name and cost of the meals. Then use the FROM keyword to identify the tables and the AS keyword to create aliases for each one. Courses is c and starters are s. Finally, add a where clause and specify the condition. 

```sql
-- the restaurant wants to promote
-- starters that cost seven dollars or less, and
-- main courses that cost $15 or less.
SELECT s.StarterName, s.Cost, c.CourseName, c.Cost
FROM starters AS s, courses AS c
WHERE s.Cost <= 7 AND c.Cost <= 15;

```

Note that we have avoided using backtiks here (a reason I am yet to figure out). The condition returns all starters less than seven dollars and all main courses less than $15.
