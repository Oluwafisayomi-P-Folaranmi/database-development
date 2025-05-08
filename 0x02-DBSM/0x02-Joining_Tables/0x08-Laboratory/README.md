# **Laboratory**

## **✅ Lucky Shrub Restaurant**

**Aliasing Names:** Your restaurant has a table in their database called Food Orders Delivery Status that keeps track of food orders. The table has two columns called `date_food_order_placed_with_supplier` and `date_food_order_received_from_supplier`. The script to create the table is in the file attached to this folder.

### **Task 1:**

The column names in the database are too long and complex, so they should be simplified using aliases for easier readability. The columns `date_food_order_placed_with_supplier`, `date_food_order_received_from_supplier`, and `Order_status` should be renamed as `Order Placed Date`, `Order Received Date`, and `Order Status`, respectively, to make the output more user-friendly for tracking food orders.

### **Task 2:**

Concatenate `order_id` and `order_status` into a single column and set an alias for the table name to improve the table's efficiency.

### **Task 3:**

The restaurant has two tables, `starters` and `courses`, listing meal names and their prices. As part of a promotional campaign, they want to promote **starters costing $7 or less** and **main courses costing $15 or less.**

### **Task 4:**

Little Lemon runs a mentorship program where **every employee may have a mentor (who is also an employee).** Using the new `employees_new` table, the restaurant wants to generate a report showing:

* Each employee's full name and job title
* Their mentor's full name and job title (if they have one)

## **✅ Lucky Shrub Garden Design, Creation, Maintenance and Landscaping**

**Joining Data:** `customers` and `bookings` Tables Data.

### **Task 1:**

Little Lemon wants a list of all **customers who have made bookings**. Write an `INNER JOIN` SQL statement to combine the customer's `full_name` and `phone_number` from the `customers` table with the related `booking_date` and the `number_of_guests` from the `bookings` table.

### **Task 2:**

Little Lemon wants to view information about all existing customers with bookings made so far. This data must include customers who haven’t made any bookings yet. Write a `LEFT JOIN` SQL statement to view the `customer_id` from the `customers` table and the related `booking_id` from the `bookings` table.
