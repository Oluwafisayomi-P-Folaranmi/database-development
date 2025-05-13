# **Laboratory**

## **✅ Little Lemon Restaurant**

**Changing table structure.**

### **Task 1:**

Write a SQL statement that creates the `staff` table with the following columns:

* `staff_id`: `INT`
* `full_name`: `VARCHAR(100)`
* `phone_number`: `VARCHAR(10)`

### **Task 2:**

Write a SQL statement to apply the following constraints to the `staff` table:

* `staff_id`: `INT NOT NULL` and `PRIMARY KEY`
* `full_name`: `VARCHAR(100) NOT NULL`
* `phone_number`: `INT NOT NULL`

### **Task 3:**

Write a SQL statement that adds a new column called `role` to the `staff` table with the following constraint:

* `role`: `VARCHAR(50) NOT NULL`

### **Task 4:**

Write a SQL statement that drops the `phone_number` column from the `staff` table.

## **✅ Little Lemon Restaurant**

Little Lemon is a family-owned Mediterranean restaurant focused on traditional recipes served with a modern twist. The `little_lemon` database contains many data tables, including `customers` and `bookings`.

The `customers` table contains the following columns:

* `customer_id`
* `full_name`
* `phone_number`

The `bookings` table contains the following data on each booking:

* `booking_id`
* `booking_date`
* `table_number`
* `number_of_guests`
* `customer_id` (the ID of the customer who made the booking)

Create a new table in the restaurant database to store information about customers' orders. The new `food_orders` table includes the following columns:

* `order_id`
* `quantity`
* `order_status`
* `cost`

### **Task 1:**

Use the `ALTER TABLE` statement with the `MODIFY` command to make the `order_id` the primary key of the `food_orders` table.

### **Task 2:**

Apply the `NOT NULL` constraint to the `quantity` and `cost` columns.

### **Task 3:**

Create two new columns: `order_date` with a `DATE` datatype and `customer_id` with an `INT` datatype. Declare both as `NOT NULL`. Declare the `customer_id` as a foreign key in the `food_orders` table to reference the `customer_id` column in the `customers` table.

### **Task 4:**

Use the `DROP` command with the `ALTER TABLE` statement to delete the `order_date` column from the `food_orders` table.

### **Task 5:**

Use the `CHANGE` command with the `ALTER TABLE` statement to rename the column `order_status` in the `food_orders` table to `delivery_status`.

### **Task 6:**

Use the `RENAME` command with the `ALTER TABLE` statement to change the table name from `order_status` to `order_delivery_status`.
